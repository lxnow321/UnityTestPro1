// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

Shader "PJAQ/Particles/BladeLight" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        _Noise ("Noise", 2D) = "white" {}
        _0_ ("0_勾边大小", Float ) = 0.1
        _1_ ("1_勾边亮度", Float ) = 100
        _2_diffuse ("2_diffuse强度", Float ) = 10
        _3_color ("3_color", Color) = (0.8,0.3,0.1,1)
        _4_ ("4_扭曲强度", Range(0, 1)) = 0.2
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Overlay"
            "RenderType"="Transparent"
        }
        GrabPass{ }
        Pass {
            Name "ForwardBase"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma exclude_renderers xbox360 ps3 flash d3d11_9x 
            #pragma target 3.0
            #pragma fragmentoption ARB_precision_hint_fastest 
            sampler2D _GrabTexture;
            sampler2D _Diffuse;
            float4 _Diffuse_ST;
            sampler2D _Noise;
            float4 _Noise_ST;
            float _0_;
            float _1_;
            float _2_diffuse;
            float4 _3_color;
            float _4_;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float4 tangent : TANGENT;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float3 tangentDir : TEXCOORD3;
                float3 binormalDir : TEXCOORD4;
                float4 screenPos : TEXCOORD5;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = mul(unity_ObjectToWorld, float4(v.normal,0)).xyz;
                o.tangentDir = normalize( mul( unity_ObjectToWorld, float4( v.tangent.xyz, 0.0 ) ).xyz );
                o.binormalDir = normalize(cross(o.normalDir, o.tangentDir) * v.tangent.w);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex);
                o.screenPos = o.pos;
                return o;
            }
            fixed4 frag(VertexOutput i) : COLOR {
                #if UNITY_UV_STARTS_AT_TOP
                    float grabSign = -_ProjectionParams.x;
                #else
                    float grabSign = _ProjectionParams.x;
                #endif
                i.normalDir = normalize(i.normalDir);
                i.screenPos = float4( i.screenPos.xy / i.screenPos.w, 0, 0 );
                i.screenPos.y *= _ProjectionParams.x;
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float2 sceneUVs = float2(1,grabSign)*i.screenPos.xy*0.5+0.5 + ((_Diffuse_var.rgb.rg*i.vertexColor.a)*(_4_*0.1));
                float4 sceneColor = tex2D(_GrabTexture, sceneUVs);
                float3x3 tangentTransform = float3x3( i.tangentDir, i.binormalDir, i.normalDir);
/////// Vectors:
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalLocal = lerp(float3(0,0,1),float3(_Diffuse_var.a,_Diffuse_var.a,_Diffuse_var.a),_4_);
                float3 normalDirection = normalize(mul( normalLocal, tangentTransform )); // Perturbed normals
                
                float nSign = sign( dot( viewDirection, i.normalDir ) ); // Reverse normal if this is a backface
                i.normalDir *= nSign;
                normalDirection *= nSign;
                
////// Lighting:
////// Emissive:
                float3 emissive = ((_2_diffuse*(_3_color.rgb*_Diffuse_var.rgb))*_Diffuse_var.r);
                float3 finalColor = emissive;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_459_if_leA = step((_0_+i.vertexColor.r),_Noise_var.r);
                float node_459_if_leB = step(_Noise_var.r,(_0_+i.vertexColor.r));
                float node_7299 = 0.0;
                float node_1623 = 1.0;
                float node_459 = lerp((node_459_if_leA*node_7299)+(node_459_if_leB*node_1623),node_1623,node_459_if_leA*node_459_if_leB);
                float node_2124_if_leA = step(i.vertexColor.r,_Noise_var.r);
                float node_2124_if_leB = step(_Noise_var.r,i.vertexColor.r);
                return fixed4(lerp(sceneColor.rgb, finalColor,(i.vertexColor.a*(_Diffuse_var.a*(node_459+((node_459-lerp((node_2124_if_leA*node_7299)+(node_2124_if_leB*node_1623),node_1623,node_2124_if_leA*node_2124_if_leB))*_1_))))),1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
