Shader "PJAQ/Particles/Double Transparent" {
    Properties {
		_MainTex ("Base (RGB)", 2D) = "white" {}
        _FrontColor ("Front Color", Color) = (1, 1, 1, 1)
        _BackColor ("Back Color", Color) = (1, 1, 1, 1)
    }

    CGINCLUDE
	//#include "UnityCG.cginc"

    struct appdata
    {
    	float4 vertex : POSITION;
    	fixed4 color : COLOR;
    	float2 uv : TEXCOORD0;
	};

	struct v2f
	{
		float4 vertex : SV_POSITION;
		fixed4 color : COLOR;
		float2 uv : TEXCOORD0;
	};
	ENDCG

    SubShader {
        Tags { "Queue" = "Transparent" }
        LOD 200

        Pass
        {
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            Cull Front
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            uniform sampler2D _MainTex;
            float4 _MainTex_ST;
            uniform float4 _BackColor;

            v2f vert(appdata v)
            {
            	v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.color = v.color;
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            float4 frag(v2f i) : COLOR
            {
            	half4 col = i.color * _BackColor * tex2D(_MainTex, i.uv);
                return col;
            }
            ENDCG
        }

        Pass
        {
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            Cull Back
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"

            uniform sampler2D _MainTex;
            float4 _MainTex_ST;
            uniform float4 _FrontColor;

            v2f vert(appdata v)
            {
            	v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.color = v.color;
                o.uv = TRANSFORM_TEX(v.uv, _MainTex);
                return o;
            }

            float4 frag(v2f i) : COLOR
            {
            	half4 col = i.color * _FrontColor * tex2D(_MainTex, i.uv);
                return col;
            }
            ENDCG
        }
    }

    FallBack "Diffuse"
}