Shader "PJAQ/UI/Silhouette"
{
	Properties {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_UvRect("UvRect", Vector) = (0, 0, 1, 1)
		_MaskTex ("Masks Texture", 2D) = "black" {}
		_Color ("Color", Color) = (0.2, 0.2, 0.2, 1.0)

		// required for UI.Mask
		_StencilComp ("Stencil Comparison", Float) = 8
		_Stencil ("Stencil ID", Float) = 0
		_StencilOp ("Stencil Operation", Float) = 0
		_StencilWriteMask ("Stencil Write Mask", Float) = 255
		_StencilReadMask ("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
	}
	SubShader {
		Tags
		{
			"Queue"="Transparent" 
			"IgnoreProjector"="True" 
			"RenderType"="Transparent" 
			"PreviewType"="Plane"
			"CanUseSpriteAtlas"="True"
		}

		// required for UI.Mask
		Stencil
		{
		 Ref [_Stencil]
		 Comp [_StencilComp]
		 Pass [_StencilOp] 
		 ReadMask [_StencilReadMask]
		 WriteMask [_StencilWriteMask]
		}
		ColorMask [_ColorMask]

		Pass
		{
			Cull Off
			Lighting Off
			ZWrite Off
			ZTest Always
			Fog { Mode Off }
			Blend SrcAlpha OneMinusSrcAlpha
			
			CGPROGRAM

				#pragma vertex vert
				#pragma fragment frag
				#pragma fragmentoption ARB_precision_hint_fastest 
				#pragma multi_compile __ UNITY_UI_ALPHACLIP

				#include "UnityCG.cginc"
				#include "UnityUI.cginc"

				sampler2D _MainTex;
				sampler2D _MaskTex;
				half4 _Color;
				float4 _UvRect;
				float4 _ClipRect;

				struct appdata_t
				{
				    float4 vertex : POSITION;
				    float4 color : COLOR;
				    half2 texcoord : TEXCOORD0;
				};

				struct v2f
				{
				    float4 pos : SV_POSITION;
				    float4 color : COLOR;
				    half2 uv : TEXCOORD0;
				    half2 worldPosition : TEXCOORD1;
				};

				v2f vert( appdata_t v )
				{
				    v2f o;
				    o.worldPosition = v.vertex;
				    o.pos = UnityObjectToClipPos (v.vertex);
				    o.uv = v.texcoord;
				    o.color = v.color;
				    return o;
				}

				half4 frag(v2f i) : SV_Target
				{
					half4 main = tex2D(_MainTex, i.uv);
					float2 fixuv = float2(0, 0);
	                fixuv.x = (i.uv.x - _UvRect.x) / (_UvRect.z - _UvRect.x);
	                fixuv.y = (i.uv.y - _UvRect.y) / (_UvRect.w - _UvRect.y);
					half4 mask = tex2D(_MaskTex, fixuv);
					half lum = Luminance(main.rgb);
					half3 color = lerp(mask.rgb, half3(lum,lum,lum), _Color.rgb * i.color.rgb);
					half4 result = half4(color.r, color.g, color.b, main.a);
					result.a *= UnityGet2DClipping(i.worldPosition.xy, _ClipRect);
				
					#ifdef UNITY_UI_ALPHACLIP
						clip(result.a - 0.001);
					#endif
					return result;
				}

			ENDCG
		}
	}
	FallBack "Diffuse"
}
