// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Upgrade NOTE: replaced '_GUIClipTextureMatrix' with 'unity_GUIClipTextureMatrix'

Shader "PJAQ/UI/Effect/GuideMask"
{
	Properties 
    {
		_TintTex("Tint Tex",2D)="white"{}
		_MainColor("Main Color", Color) = (0.16,0.16,0.16,0.6)
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
    }

    SubShader
    {
		Tags 
		{ 
			"Queue"="Transparent" 
			"ForceSupported" = "True" 
			"RenderType"="Transparent" 
			"CanUseSpriteAtlas" = "True" 
			"PreviewType" = "Plane"
			"IgnoreProjector" = "True"
		} 
		Lighting Off 
		Blend SrcAlpha OneMinusSrcAlpha
		Cull Off 
		ZWrite Off 
		Fog { Mode Off } 
		ZTest Always

        Pass
        {
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
			#pragma multi_compile __ UNITY_UI_ALPHACLIP

			#include "UnityCG.cginc"
			#include "UnityUI.cginc"

			float4 _MainColor;
			sampler2D _TintTex;
			float4 _TintTex_ST;
			float4 _ClipRect;

            struct v2f
            {
                float4 pos : SV_POSITION;
                float2 uv : TEXCOORD0;
                float4 worldPosition:TEXCOORD1;
            };

            v2f vert(appdata_base v)
			{
				v2f o;
				o.worldPosition = v.vertex;
                o.pos = UnityObjectToClipPos(v.vertex);
				float4 texgen = mul(UNITY_MATRIX_MV, v.vertex);
                o.uv =  TRANSFORM_TEX(v.texcoord, _TintTex);
                return o;
			}

            float4 frag( v2f i ) : COLOR
            {
				float4 outp = _MainColor;             			
				float4 tin = tex2D(_TintTex, i.uv);
				outp.a *=tin.a; 
				outp.a*=UnityGet2DClipping(i.worldPosition.xy,_ClipRect);
				#ifdef UNITY_UI_ALPHACLIP
					clip (outp.a - 0.001);
				#endif	
				return outp;
            }

            ENDCG
        }
    }
}