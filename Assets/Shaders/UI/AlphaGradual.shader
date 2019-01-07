Shader "PJAQ/UI/AlphaGradual"
{
	Properties {
		[PerRendererData] _MainTex ("Sprite Texture", 2D) = "white" {}
		_Color ("Color", Color) = (0.5, 0.5, 0.5, 1.0)

		_alphaMax("Alpha Max", float) = 0.1
		_discardBottom("Discard Bottom", float) = 0.5
		_notDiscardBottom("Not Discard Bottom", float) = 0.6
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
		Pass
		{
			Cull Off
			Lighting Off
			Fog { Mode Off }
			Blend SrcAlpha OneMinusSrcAlpha
			
			CGPROGRAM

				#pragma vertex vert_img
				#pragma fragment frag
				#pragma target 2.0 
				#pragma multi_compile_instancing
				#pragma multi_compile _ PIXELSNAP_ON
				#pragma multi_compile _ ETC1_EXTERNAL_ALPHA
				#include "UnityCG.cginc"

				sampler2D _MainTex;
				half4 _Color;

				half _alphaMax;
				half _discardBottom;
				half _notDiscardBottom;

				half4 frag(v2f_img i) : SV_Target
				{
					clip(i.uv.y - _discardBottom);

					half4 color = tex2D(_MainTex, i.uv);
					half alpha = _alphaMax * (i.uv.y - _discardBottom) / (_notDiscardBottom - _discardBottom);
					alpha = clamp(alpha, 0, _alphaMax);
					color.a = color.a * alpha;
					return color;
				}

			ENDCG
		}
	}
	FallBack "Diffuse"
}
