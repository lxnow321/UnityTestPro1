// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PJAQ/Unity(Modify)/Particles/Additive_No_Fog" {
Properties {
    _MainTex ("Particle Texture", 2D) = "white" {}
}
 
Category {
    Tags { "Queue"="Transparent" "IgnoreProjector"="True" "RenderType"="Transparent" }
    Blend SrcAlpha One
    Cull Off Lighting Off ZWrite Off
 
    SubShader {
        Pass {
     
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #pragma fragmentoption ARB_precision_hint_fastest 
 
            #include "UnityCG.cginc"
 
            sampler2D _MainTex;
         
            struct appdata_t {
                float4 vertex : POSITION;
                fixed4 color : COLOR;
                float2 texcoord : TEXCOORD0;
            };
 
            struct v2f {
                float4 vertex : SV_POSITION;
                fixed4 color : COLOR;
                float2 texcoord : TEXCOORD0;
            };
         
            float4 _MainTex_ST;
 
            v2f vert (appdata_t v)
            {
                v2f o;
                o.vertex = UnityObjectToClipPos(v.vertex);
                o.color = v.color;
                o.texcoord = TRANSFORM_TEX(v.texcoord,_MainTex);
                return o;
            }
         
            fixed4 frag (v2f i) : SV_Target
            {            
                fixed4 col = i.color * tex2D(_MainTex, i.texcoord);
                return col;
            }
            ENDCG
        }
    }
}
}