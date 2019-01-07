// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PJAQ/Particles/AtlasAnimationAdditiveShader" {
	Properties {
		_XCount ("Altas X Count",float) = 2
		_YCount ("Atlas Y Count",float) = 3
		_TintColor ("Tint Color", Color) = (0.5,0.5,0.5,0.5)
		_MainTex ("Particle Texture", 2D) = "white" {}
		_WaveScale ("Wave Scale",Float) = 1
		_WaveOffset ("Wave Offset",Float) = 1
	}
	SubShader {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
		
		Pass
		{
			Blend SrcAlpha One
			ColorMask RGB
			Cull Off Lighting Off ZWrite Off
			CGPROGRAM
			#include "UnityCG.cginc"
			#pragma vertex vert
			#pragma fragment frag
			sampler2D _MainTex;
			float4 _MainTex_ST;
			fixed4 _TintColor;
			float _WaveScale;
			float _WaveOffset;
			float _XCount,_YCount;
			struct appdata_t {
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
				float4 color:COLOR;
			};
			struct v2f {
				float4 vertex : POSITION;
				fixed4 color : COLOR;
				float2 texcoord : TEXCOORD0;
			};
			v2f vert (appdata_t v)
			{
				v2f o;
				o.vertex = UnityObjectToClipPos(v.vertex);
				float _PicIndex = floor(_Time.y * _WaveScale + _WaveOffset);
				float2 uv = v.texcoord.xy;
				float2 tiling = float2(1/_XCount,1/_YCount);
				float2 offset;
				offset.x = fmod(_PicIndex , _XCount) / _XCount;
				offset.y = 1-floor(_PicIndex / _XCount) / _YCount - 1/_YCount;
				o.texcoord = uv * tiling + offset;//TRANSFORM_TEX(v.texcoord,_MainTex);
				o.color = v.color;
				return o;
			}

			fixed4 frag (v2f i) : COLOR
			{
				fixed4 tint = _TintColor;//lerp(_TintColor,_TintColor2,t);
				return 2.0 * tint * tex2D(_MainTex, i.texcoord) * i.color;
			}

			ENDCG
		}
		
	} 
}
