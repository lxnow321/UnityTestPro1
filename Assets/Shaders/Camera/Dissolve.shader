Shader "PJAQ/Camera/Dissolve"
{
	Properties{  
        _Diffuse("Diffuse", Color) = (1,1,1,1)  
        _DissolveColorA("Dissolve Color A", Color) = (0,0,0,0)  
        _DissolveColorB("Dissolve Color B", Color) = (1,1,1,1)  
        _MainTex("Base 2D", 2D) = "white"{}  
        _DissolveMap("DissolveMap", 2D) = "white"{}  
        _DissolveThreshold("DissolveThreshold", Range(0,2)) = 2  
        _ColorFactorA("ColorFactorA", Range(0,1)) = 0.7  
        _ColorFactorB("ColorFactorB", Range(0,1)) = 0.8  
        _DissolveDistance("DissolveDistance", Range(0, 20)) = 14  
        _DissolveDistanceFactor("DissolveDistanceFactor", Range(0,3)) = 3  
    }  
      
    CGINCLUDE
    #include "Lighting.cginc"  
    uniform fixed4 _Diffuse;  
    uniform fixed4 _DissolveColorA;  
    uniform fixed4 _DissolveColorB;
    uniform sampler2D _MainTex;  
    uniform float4 _MainTex_ST;  
    uniform sampler2D _DissolveMap;  
    uniform float _DissolveThreshold;  
    uniform float _ColorFactorA;  
    uniform float _ColorFactorB;  
    uniform float _DissolveDistance;  
    uniform float _DissolveDistanceFactor;  

	struct appdata
	{
		float4 vertex : POSITION;
		float3 normal :NORMAL;
		float4 texcoord :TEXCOORD0;
	};

	struct v2f
	{
		float4 pos : SV_POSITION;
		float2 uv : TEXCOORD0;
		float4 screenPos : TEXCOORD1;
		float3 worldNormal : TEXCOORD2;
		float3 viewDir : TEXCOORD3;
	};

	v2f vert(appdata i)
	{
		v2f o;
		o.pos = UnityObjectToClipPos(i.vertex);
		o.uv = TRANSFORM_TEX(i.texcoord,_MainTex);
		o.screenPos = ComputeGrabScreenPos(o.pos);
		o.worldNormal = UnityObjectToWorldNormal(i.normal);
		o.viewDir = ObjSpaceViewDir(i.vertex);
		return o;
	}

	float hash( float n )
	{
	    return frac(sin(n)*43758.5453);
	}

	float perlinnoise( float3 x )
	{
	    //柏林噪声
	    float3 p = floor(x);
	    float3 f = frac(x);
	 
	    f       = f*f*(3.0-2.0*f);
	    float n = p.x + p.y*57.0 + 113.0*p.z;
	 
	    return lerp(lerp(lerp( hash(n+0.0), hash(n+1.0),f.x),
	                   lerp( hash(n+57.0), hash(n+58.0),f.x),f.y),
	               lerp(lerp( hash(n+113.0), hash(n+114.0),f.x),
	                   lerp( hash(n+170.0), hash(n+171.0),f.x),f.y),f.z);
	}

	fixed4 frag(v2f i) : SV_Target
	{
		float2 screenPos = i.screenPos.xy / i.screenPos.w;
		float2 center = float2(0.5,0.5) - screenPos;
		float screenDistance = 0.5 - sqrt(center.x * center.x + center.y * center.y);
		float viewDistance =  max(0,(_DissolveDistance - length(i.viewDir)) / _DissolveDistance) * _DissolveDistanceFactor;  
		float dissolveFactor = viewDistance * screenDistance * _DissolveThreshold;

		//1、使用噪声贴图的噪声
		//fixed4 dissolveValue = tex2D(_DissolveMap,i.uv);
		//clip(dissolveValue.r-dissolveFactor);

		//2、使用程序生成的噪声
		float dissolveSeed = perlinnoise(fixed3(i.screenPos.xy,i.screenPos.w));
		fixed4 dissolveValue = fixed4(dissolveSeed,1,1,1);

		clip(dissolveValue.r-dissolveFactor);
		float lerpValue = dissolveFactor /dissolveValue.r;
		if(lerpValue > _ColorFactorA)
		{
			if(lerpValue > _ColorFactorB)
			{
				fixed4 col = _DissolveColorB;
				if(lerpValue>0.9)
				{
					col = fixed4(col.xyz*1.1,1);
				}
				return col;
			}
			return _DissolveColorA;
		}

		/*fixed3 worldNormal = normalize(i.worldNormal);
		fixed3 worldLightDir = normalize(_WorldSpaceLightPos0.xyz);
		fixed3 lambert = saturate(dot(worldNormal,worldLightDir));
		fixed3 albedo = lambert * _Diffuse.xyz * _LightColor0.xyz + UNITY_LIGHTMODEL_AMBIENT.xyz;
		fixed3 diffuse = tex2D(_MainTex,i.uv).rgb * albedo;
		return fixed4(diffuse,1);*/
		fixed4 col = tex2D(_MainTex,i.uv);
		return col;
	}
	ENDCG

	SubShader
	{
		Tags{"RenderType" = "Opaque"}

		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			ENDCG
		}
	}
	FallBack "Diffuse"
}
