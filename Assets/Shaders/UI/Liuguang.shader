// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PJAQ/UI/Liuguang"
{
	Properties
	{
		[PerRendererData] _MainTex("Sprite Texture", 2D) = "white" {}
		_UvRect("UvRect", Vector) = (0, 0, 1, 1)
		//[MaterialToggle] PixelSnap("Pixel snap", float) = 0

		_FlowlightTex("Add Move Texture", 2D) = "white" {}
		_Power("Power", float) = 1
		_SpeedX("SpeedX", float) = 1
		_SpeedY("SpeedY", float) = 0

		_StencilComp("Stencil Comparison", Float) = 8
		_Stencil("Stencil ID", Float) = 0
		_StencilOp("Stencil Operation", Float) = 0
		_StencilWriteMask("Stencil Write Mask", Float) = 255
		_StencilReadMask("Stencil Read Mask", Float) = 255
		_ColorMask ("Color Mask", Float) = 15
		[Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
	}

	SubShader
	{
        Tags
        {
            "Queue"="Transparent"
            "IgnoreProjector"="True"
            "RenderType"="Transparent"
            "PreviewType"="Plane"
            "CanUseSpriteAtlas"="True"
        }

        Stencil
        {
            Ref [_Stencil]
            Comp [_StencilComp]
            Pass [_StencilOp]
            ReadMask [_StencilReadMask]
            WriteMask [_StencilWriteMask]
        }
        ColorMask[_ColorMask]

        Cull Off
        Lighting Off
        ZWrite Off
        ZTest Off
		Blend One OneMinusSrcAlpha

		Pass
		{
			CGPROGRAM
			#pragma vertex vert
			#pragma fragment frag
			#pragma fragmentoption ARB_precision_hint_fastest
			#pragma multi_compile __ UNITY_UI_ALPHACLIP

			#include "UnityCG.cginc"
			#include "UnityUI.cginc"

			struct appdata_t
			{
				float4 vertex : POSITION;
				float2 texcoord : TEXCOORD0;
			};

			struct v2f
			{
				float4 vertex : SV_POSITION;
				half2 texcoord : TEXCOORD0;
				half2 texflowlight : TEXCOORD1;
				float4 worldPosition:TEXCOORD2;
			};

			float _Power;
			sampler2D _FlowlightTex;
			fixed4 _FlowlightTex_ST;
			fixed _SpeedX;
			fixed _SpeedY;

			v2f vert(appdata_t IN)
			{
				v2f OUT;
				OUT.worldPosition = IN.vertex;
				OUT.vertex = UnityObjectToClipPos(IN.vertex);
				OUT.texcoord = IN.texcoord;

				OUT.texflowlight = TRANSFORM_TEX(IN.texcoord, _FlowlightTex);
				OUT.texflowlight.x += _Time * _SpeedX;
				OUT.texflowlight.y += _Time * _SpeedY;
				return OUT;
			}

			sampler2D _MainTex;
			float4 _UvRect;
			float4 _ClipRect;

			fixed4 frag(v2f IN) : SV_Target
			{
				fixed4 c = tex2D(_MainTex, IN.texcoord);
				c.a*=UnityGet2DClipping(IN.worldPosition.xy,_ClipRect);
				#ifdef UNITY_UI_ALPHACLIP
                	clip (c.a - 0.001);
                #endif
                float2 flowuv = float2(0, 0);
                flowuv.x = (IN.texflowlight.x - _UvRect.x) / (_UvRect.z - _UvRect.x);
                flowuv.y = (IN.texflowlight.y - _UvRect.y) / (_UvRect.w - _UvRect.y);
				fixed4 cadd = tex2D(_FlowlightTex, flowuv) * _Power;
				cadd.rgb *= c.rgb;
				c.rgb += cadd.rgb;
				c.rgb *= c.a;

				return c;
			}
			ENDCG
		}
	}
}