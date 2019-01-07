// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced tex2D unity_Lightmap with UNITY_SAMPLE_TEX2D

Shader "Legacy Shaders/Transparent/Diffuse" {
Properties {
	_Color ("Main Color", Color) = (1,1,1,1)
	_MainTex ("Base (RGB)", 2D) = "white" {}
	_AlphaTex ("Trans (A)", 2D) = "white" {}
	_EmissionStrength("Emission Strength(for lower) ", float) = 1
}

SubShader {
	Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 600

	CGPROGRAM
	#pragma surface surf Lambert alpha:fade halfasview exclude_path:deferred exclude_path:prepass addshadow

	sampler2D _MainTex;
	sampler2D _AlphaTex;
	fixed4 _Color;

	struct Input {
		half2 uv_MainTex;
	};

	void surf (Input IN, inout SurfaceOutput o) {
		fixed4 c = tex2D(_MainTex, IN.uv_MainTex);
		c.a =  tex2D(_AlphaTex, IN.uv_MainTex).r;
		c=c* _Color;
		o.Albedo = c.rgb;
		o.Alpha = c.a;
	}
	ENDCG
}

SubShader {
	Tags {"Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent"}
	LOD 300
	Blend SrcAlpha OneMinusSrcAlpha
	Pass {  
		CGPROGRAM
		#pragma vertex vert
		#pragma fragment frag
		#pragma fragmentoption ARB_precision_hint_fastest 
		#pragma multi_compile LIGHTMAP_ON LIGHTMAP_OFF
		#include "UnityCG.cginc"
		struct appdata_t {
			float4 vertex : POSITION;
			fixed4 color : COLOR;
			half2 texcoord : TEXCOORD0;
			half2 texcoord1 : TEXCOORD1;
			
		};

		struct v2f {
			float4 vertex : SV_POSITION;
			fixed4 color : COLOR;
			half2 texcoord : TEXCOORD0;
			half2 uvlm : TEXCOORD1;
		};
		
		sampler2D _MainTex;
		sampler2D _AlphaTex;
		fixed4 _Color;
		fixed _EmissionStrength;
		
		v2f vert (appdata_t v)
		{
			v2f o;
			o.vertex = UnityObjectToClipPos(v.vertex);
			o.texcoord = v.texcoord;
			o.color = v.color;
			o.uvlm = v.texcoord1.xy * unity_LightmapST.xy + unity_LightmapST.zw;
			return o;
		}
		
		fixed4 frag (v2f i) : SV_Target
		{
			fixed4 c = tex2D(_MainTex, i.texcoord);
			c.a =  tex2D(_AlphaTex, i.texcoord).r;
			#ifdef LIGHTMAP_ON
			c=c* _Color * i.color * _EmissionStrength * fixed4(DecodeLightmap(UNITY_SAMPLE_TEX2D(unity_Lightmap, i.uvlm)),1);
			#else
			c=c* _Color * i.color * _EmissionStrength ;
			#endif
			return c;
		}
		ENDCG
	}
	
	}
FallBack "Unlit/Texture"
}
