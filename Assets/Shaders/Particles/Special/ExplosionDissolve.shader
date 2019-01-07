// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33710,y:32537,varname:node_9361,prsc:2|emission-9926-OUT,alpha-7488-OUT,clip-7488-OUT;n:type:ShaderForge.SFN_Panner,id:825,x:31348,y:32552,varname:node_825,prsc:2,spu:0.05,spv:0.01|UVIN-2715-UVOUT;n:type:ShaderForge.SFN_Panner,id:3764,x:31317,y:32875,varname:node_3764,prsc:2,spu:0,spv:0|UVIN-4214-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:2715,x:31135,y:32541,varname:node_2715,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_TexCoord,id:4214,x:31049,y:32777,varname:node_4214,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:1610,x:31621,y:32598,ptovrint:False,ptlb:Dissolved-Texture01,ptin:_DissolvedTexture01,varname:node_1610,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-825-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:6719,x:31606,y:32866,ptovrint:False,ptlb:Dissolved-Texture02,ptin:_DissolvedTexture02,varname:node_6719,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-3764-UVOUT;n:type:ShaderForge.SFN_Multiply,id:8693,x:31840,y:32658,varname:node_8693,prsc:2|A-1610-R,B-6719-G;n:type:ShaderForge.SFN_Add,id:2662,x:32112,y:32639,varname:node_2662,prsc:2|A-8693-OUT,B-6815-OUT;n:type:ShaderForge.SFN_Slider,id:6815,x:31778,y:32866,ptovrint:False,ptlb:Dissolved_integrity,ptin:_Dissolved_integrity,varname:node_6815,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_VertexColor,id:8907,x:32007,y:32422,varname:node_8907,prsc:2;n:type:ShaderForge.SFN_OneMinus,id:6093,x:32196,y:32527,varname:node_6093,prsc:2|IN-8907-A;n:type:ShaderForge.SFN_If,id:5867,x:32537,y:32620,varname:node_5867,prsc:2|A-2662-OUT,B-6093-OUT,GT-6772-OUT,EQ-8568-OUT,LT-8568-OUT;n:type:ShaderForge.SFN_Vector1,id:8568,x:32148,y:32904,varname:node_8568,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:6772,x:32127,y:33072,varname:node_6772,prsc:2,v1:1;n:type:ShaderForge.SFN_If,id:4371,x:32537,y:32841,varname:node_4371,prsc:2|A-1610-R,B-6093-OUT,GT-6772-OUT,EQ-8568-OUT,LT-8568-OUT;n:type:ShaderForge.SFN_Subtract,id:2089,x:32797,y:32699,varname:node_2089,prsc:2|A-5867-OUT,B-4371-OUT;n:type:ShaderForge.SFN_Color,id:5432,x:32797,y:32903,ptovrint:False,ptlb:Color02,ptin:_Color02,varname:node_5432,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:8657,x:33000,y:32699,varname:node_8657,prsc:2|A-2089-OUT,B-5432-RGB;n:type:ShaderForge.SFN_Multiply,id:7488,x:33043,y:32473,varname:node_7488,prsc:2|A-5916-A,B-4505-A,C-5867-OUT;n:type:ShaderForge.SFN_Tex2d,id:4505,x:32719,y:32353,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_4505,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:1188,x:33043,y:32253,varname:node_1188,prsc:2|A-5916-RGB,B-4505-RGB,C-8907-RGB;n:type:ShaderForge.SFN_Color,id:5916,x:32781,y:32097,ptovrint:False,ptlb:Color01,ptin:_Color01,varname:node_5916,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Add,id:9926,x:33348,y:32427,varname:node_9926,prsc:2|A-1188-OUT,B-8657-OUT;n:type:ShaderForge.SFN_Slider,id:9754,x:31735,y:33442,ptovrint:False,ptlb:X_Speed,ptin:_X_Speed,varname:node_5625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:1610-6719-6815-4505-5916-5432;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/Explosion Dissolve" {
    Properties {
        _DissolvedTexture01 ("Dissolved-Texture01", 2D) = "white" {}
        _DissolvedTexture02 ("Dissolved-Texture02", 2D) = "white" {}
        _Dissolved_integrity ("Dissolved_integrity", Range(0, 1)) = 0
        _Texture ("Texture", 2D) = "white" {}
        [HDR]_Color01 ("Color01", Color) = (0.5,0.5,0.5,1)
        [HDR]_Color02 ("Color02", Color) = (0.5,0.5,0.5,1)
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
        }
        Pass {
            Name "FORWARD"
            Tags {
                "LightMode"="ForwardBase"
            }
            Blend SrcAlpha OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _DissolvedTexture01; uniform float4 _DissolvedTexture01_ST;
            uniform sampler2D _DissolvedTexture02; uniform float4 _DissolvedTexture02_ST;
            uniform float _Dissolved_integrity;
            uniform float4 _Color02;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float4 _Color01;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(1)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(i.uv0, _Texture));
                float4 node_2540 = _Time;
                float2 node_825 = (i.uv0+node_2540.g*float2(0.05,0.01));
                float4 _DissolvedTexture01_var = tex2D(_DissolvedTexture01,TRANSFORM_TEX(node_825, _DissolvedTexture01));
                float2 node_3764 = (i.uv0+node_2540.g*float2(0,0));
                float4 _DissolvedTexture02_var = tex2D(_DissolvedTexture02,TRANSFORM_TEX(node_3764, _DissolvedTexture02));
                float node_6093 = (1.0 - i.vertexColor.a);
                float node_5867_if_leA = step(((_DissolvedTexture01_var.r*_DissolvedTexture02_var.g)+_Dissolved_integrity),node_6093);
                float node_5867_if_leB = step(node_6093,((_DissolvedTexture01_var.r*_DissolvedTexture02_var.g)+_Dissolved_integrity));
                float node_8568 = 0.0;
                float node_6772 = 1.0;
                float node_5867 = lerp((node_5867_if_leA*node_8568)+(node_5867_if_leB*node_6772),node_8568,node_5867_if_leA*node_5867_if_leB);
                float node_7488 = (_Color01.a*_Texture_var.a*node_5867);
                clip(node_7488 - 0.5);
////// Lighting:
////// Emissive:
                float node_4371_if_leA = step(_DissolvedTexture01_var.r,node_6093);
                float node_4371_if_leB = step(node_6093,_DissolvedTexture01_var.r);
                float3 emissive = ((_Color01.rgb*_Texture_var.rgb*i.vertexColor.rgb)+((node_5867-lerp((node_4371_if_leA*node_8568)+(node_4371_if_leB*node_6772),node_8568,node_4371_if_leA*node_4371_if_leB))*_Color02.rgb));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,node_7488);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
