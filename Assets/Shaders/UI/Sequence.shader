// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PJAQ/UI/Sequence" {
 Properties
 {
     _MainTex ("Texture", 2D) = "white" {}
     _Color("Tint", Color) = (1,1,1,1)
 
     _RowCount ("RowCount", float) = 0
     _ColCount ("ColCount", float) = 0
     _Speed ("Speed", float) = 30
 
     _StencilComp("Stencil Comparison", Float) = 8
     _Stencil("Stencil ID", Float) = 0
     _StencilOp("Stencil Operation", Float) = 0
     _StencilWriteMask("Stencil Write Mask", Float) = 255
     _StencilReadMask("Stencil Read Mask", Float) = 255
     _ColorMask("Color Mask", Float) = 15
    [Toggle(UNITY_UI_ALPHACLIP)] _UseUIAlphaClip ("Use Alpha Clip", Float) = 0
 }
 SubShader
 {
     Tags
     {
         "Queue" = "Transparent"
         "IgnoreProjector" = "True"
         "RenderType" = "Transparent"
         "PreviewType" = "Plane"
         "CanUseSpriteAtlas" = "True"
     }
 
     Stencil
     {
         Ref[_Stencil]
         Comp[_StencilComp]
         Pass[_StencilOp]
         ReadMask[_StencilReadMask]
         WriteMask[_StencilWriteMask]
     }
     ColorMask[_ColorMask]
 
     Cull Off
     Lighting Off
     ZWrite Off
     ZTest[unity_GUIZTestMode]
     Blend SrcAlpha OneMinusSrcAlpha
     
     Pass
     {
         CGPROGRAM
         #pragma vertex vert
         #pragma fragment frag
         #pragma multi_compile _ PIXELSNAP_ON
         #pragma fragmentoption ARB_precision_hint_fastest
         #pragma multi_compile __ UNITY_UI_ALPHACLIP
         #include "UnityCG.cginc"
         #include "UnityUI.cginc"
 
         struct appdata
         {
             float4 vertex : POSITION;
             float2 uv : TEXCOORD0;
         };
 
         struct v2f
         {
             float2 uv : TEXCOORD0;
             float4 vertex : SV_POSITION;
             float4 worldPosition : TEXCOORD1;
         };
 
         sampler2D _MainTex;
         float4 _MainTex_ST;
         float _Speed;
         float _RowCount;
         float _ColCount;
         float4 _ClipRect;
 
         v2f vert (appdata v)
         {
             v2f o;
             o.worldPosition = v.vertex;
             o.vertex = UnityObjectToClipPos(v.vertex);
             o.uv = TRANSFORM_TEX(v.uv, _MainTex);
             return o;
         }


 
         fixed4 frag (v2f i) : SV_Target
         {
             //从左往右，从上往下进行序列帧播放 
             float totalCount = _ColCount * _RowCount;
             float curIndex = floor((_Time.y * _Speed) % totalCount);
             float2 unitSize = float2(1 / _ColCount, 1 / _RowCount); 
             float offsetU = floor(curIndex % _ColCount);
             float offsetV = floor((totalCount - 1 - curIndex) / _ColCount); 
             float2 originUv = float2(offsetU, offsetV) * unitSize; 
             float2 newUv = originUv + i.uv * unitSize;
             fixed4 col = tex2D(_MainTex, newUv);
             col.a*=UnityGet2DClipping(i.worldPosition,_ClipRect);
             #ifdef UNITY_UI_ALPHACLIP
                clip (col.a - 0.001);
             #endif
             return col;
         }
         ENDCG
     }
 }
}