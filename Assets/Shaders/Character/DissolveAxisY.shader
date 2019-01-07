// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-2922-OUT,clip-2642-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4437,x:31394,y:32947,ptovrint:False,ptlb:Hight,ptin:_Hight,varname:node_4437,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ObjectPosition,id:5513,x:31394,y:33026,varname:node_5513,prsc:2;n:type:ShaderForge.SFN_Add,id:128,x:31586,y:32978,varname:node_128,prsc:2|A-4437-OUT,B-5513-Y;n:type:ShaderForge.SFN_FragmentPosition,id:155,x:31378,y:33195,varname:node_155,prsc:2;n:type:ShaderForge.SFN_Subtract,id:8803,x:31765,y:33116,varname:node_8803,prsc:2|A-128-OUT,B-155-Y;n:type:ShaderForge.SFN_Tex2d,id:9301,x:31765,y:33309,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_9301,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Subtract,id:2925,x:31977,y:33181,varname:node_2925,prsc:2|A-8803-OUT,B-9301-R;n:type:ShaderForge.SFN_Clamp01,id:2642,x:32167,y:33181,varname:node_2642,prsc:2|IN-2925-OUT;n:type:ShaderForge.SFN_Tex2d,id:1493,x:31521,y:32306,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_1493,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:764,x:31434,y:32517,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_764,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_OneMinus,id:9456,x:31630,y:32517,varname:node_9456,prsc:2|IN-764-RGB;n:type:ShaderForge.SFN_Multiply,id:2053,x:31958,y:32552,varname:node_2053,prsc:2|A-1493-RGB,B-9456-OUT;n:type:ShaderForge.SFN_ChannelBlend,id:2922,x:32394,y:32561,varname:node_2922,prsc:2,chbt:1|M-8557-OUT,R-1493-RGB,BTM-2053-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7886,x:31434,y:32742,ptovrint:False,ptlb:Value,ptin:_Value,varname:node_7886,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_OneMinus,id:4787,x:31630,y:32742,varname:node_4787,prsc:2|IN-7886-OUT;n:type:ShaderForge.SFN_Power,id:8557,x:31980,y:32743,varname:node_8557,prsc:2|VAL-2642-OUT,EXP-4787-OUT;proporder:4437-9301-1493-764-7886;pass:END;sub:END;*/

Shader "PJAQ/Character/DissolveAxisY" {
    Properties {
        _Hight ("Hight", Float ) = 1
        _Mask ("Mask", 2D) = "white" {}
        _MainTex ("MainTex", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Value ("Value", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "Queue"="AlphaTest"
            "RenderType"="TransparentCutout"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float _Hight;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float _Value;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_2642 = saturate((((_Hight+objPos.g)-i.posWorld.g)-_Mask_var.r));
                clip(node_2642 - 0.5);
////// Lighting:
////// Emissive:
                float node_8557 = pow(node_2642,(1.0 - _Value));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (lerp( (_MainTex_var.rgb*(1.0 - _Color.rgb)), _MainTex_var.rgb, node_8557.r ));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
        Pass {
            Name "ShadowCaster"
            Tags {
                "LightMode"="ShadowCaster"
            }
            Offset 1, 1
            Cull Back
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_SHADOWCASTER
            #include "UnityCG.cginc"
            #include "Lighting.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float _Hight;
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                V2F_SHADOW_CASTER;
                float2 uv0 : TEXCOORD1;
                float4 posWorld : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_SHADOW_CASTER(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(i.uv0, _Mask));
                float node_2642 = saturate((((_Hight+objPos.g)-i.posWorld.g)-_Mask_var.r));
                clip(node_2642 - 0.5);
                SHADOW_CASTER_FRAGMENT(i)
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
