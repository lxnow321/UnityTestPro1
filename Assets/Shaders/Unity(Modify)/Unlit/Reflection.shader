// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "Unlit/Reflection"
{
	Properties
	{
		_MainTex ("Texture", 2D) = "white" {}
		_Color ("MainTexColor", Color) = (1,1,1,1)
		_RefTexture ("_RefTexture", 2D) = "black"{}
		_ResultColor("Result Color", Color) = (0.5, 0.5, 0.5, 0.5)
	}
	SubShader
	{
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" }
		LOD 100
		Blend SrcAlpha OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			
			#include "UnityCG.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				float2 uv : TEXCOORD0;
			};

			struct v2f
			{
				float2 uv : TEXCOORD0;
				float4 vertex : SV_POSITION;
				float4 ScreenPos:TEXCOORD1;
			};

			sampler2D _MainTex;
			float4 _MainTex_ST;
			sampler2D _RefTexture;
			float4 _Color;
			float4 _ResultColor;
			
			v2f vert (appdata v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				o.uv = TRANSFORM_TEX(v.uv, _MainTex);
				o.ScreenPos = ComputeScreenPos(o.vertex);
				return o;
			}
			
			fixed4 frag (v2f i) : SV_Target
			{
				// sample the texture
				fixed4 col = tex2D(_MainTex, i.uv)*_Color;
				half4 reflectionColor = tex2D(_RefTexture, i.ScreenPos.xy/i.ScreenPos.w);
				col += reflectionColor;
				col *= _ResultColor;			
				return col;
			}
			ENDCG
		}
	}
}
