// Upgrade NOTE: replaced '_Object2World' with 'unity_ObjectToWorld'

// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:0,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:True,tesm:0,olmd:1,culm:2,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33653,y:32411,varname:node_9361,prsc:2|custl-1401-OUT,alpha-8253-OUT,voffset-4039-OUT;n:type:ShaderForge.SFN_TexCoord,id:5917,x:31879,y:32259,varname:node_5917,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:8522,x:32316,y:31950,ptovrint:False,ptlb:Mask,ptin:_Mask,varname:node_8522,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-1901-OUT;n:type:ShaderForge.SFN_Append,id:786,x:32533,y:32034,varname:node_786,prsc:2|A-8522-R,B-8522-G;n:type:ShaderForge.SFN_Add,id:2914,x:32542,y:32289,varname:node_2914,prsc:2|A-5917-UVOUT,B-3140-OUT;n:type:ShaderForge.SFN_Tex2d,id:6296,x:32912,y:32289,ptovrint:False,ptlb:Main,ptin:_Main,varname:node_6296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:613da7b63bfaf9f479165d707b1d90e0,ntxv:0,isnm:False|UVIN-1427-UVOUT;n:type:ShaderForge.SFN_Multiply,id:3140,x:32347,y:32396,varname:node_3140,prsc:2|A-786-OUT,B-590-OUT;n:type:ShaderForge.SFN_Add,id:1901,x:32135,y:32008,varname:node_1901,prsc:2|A-5917-UVOUT,B-1446-OUT;n:type:ShaderForge.SFN_Panner,id:1427,x:32733,y:32289,varname:node_1427,prsc:2,spu:0,spv:1|UVIN-2914-OUT;n:type:ShaderForge.SFN_Color,id:4155,x:32855,y:32076,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4155,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1401,x:33395,y:32226,varname:node_1401,prsc:2|A-1300-OUT,B-6296-RGB;n:type:ShaderForge.SFN_ValueProperty,id:590,x:32123,y:32430,ptovrint:False,ptlb:Vaule1,ptin:_Vaule1,varname:node_590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_ValueProperty,id:7974,x:31530,y:31934,ptovrint:False,ptlb:U,ptin:_U,varname:node_7974,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:7782,x:31530,y:32147,ptovrint:False,ptlb:V,ptin:_V,varname:node_7782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:3455,x:31406,y:32006,varname:node_3455,prsc:2;n:type:ShaderForge.SFN_Multiply,id:6126,x:31773,y:31990,varname:node_6126,prsc:2|A-7974-OUT,B-3455-T;n:type:ShaderForge.SFN_Multiply,id:9080,x:31758,y:32113,varname:node_9080,prsc:2|A-3455-T,B-7782-OUT;n:type:ShaderForge.SFN_Append,id:1446,x:31942,y:32018,varname:node_1446,prsc:2|A-6126-OUT,B-9080-OUT;n:type:ShaderForge.SFN_Add,id:2270,x:32777,y:33012,varname:node_2270,prsc:2|A-231-X,B-231-Z;n:type:ShaderForge.SFN_Time,id:3014,x:32706,y:33137,varname:node_3014,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:7273,x:32687,y:33289,ptovrint:False,ptlb:Speed,ptin:_Speed,varname:node_7273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:3907,x:33002,y:33140,varname:node_3907,prsc:2|A-3014-T,B-7273-OUT;n:type:ShaderForge.SFN_Multiply,id:3891,x:32990,y:32982,varname:node_3891,prsc:2|A-447-OUT,B-2270-OUT;n:type:ShaderForge.SFN_ValueProperty,id:447,x:32790,y:32946,ptovrint:False,ptlb:PosMul,ptin:_PosMul,varname:node_447,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:6868,x:33164,y:33046,varname:node_6868,prsc:2|A-3891-OUT,B-3907-OUT;n:type:ShaderForge.SFN_Vector3,id:9965,x:33303,y:32940,varname:node_9965,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:7147,x:33330,y:33203,ptovrint:False,ptlb:Offset,ptin:_Offset,varname:node_7147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Multiply,id:4039,x:33542,y:33063,varname:node_4039,prsc:2|A-9965-OUT,B-9926-OUT,C-7147-OUT;n:type:ShaderForge.SFN_Sin,id:9926,x:33330,y:33046,varname:node_9926,prsc:2|IN-6868-OUT;n:type:ShaderForge.SFN_FragmentPosition,id:231,x:32522,y:32901,varname:node_231,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:5275,x:32891,y:32545,varname:node_5275,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:3572,x:33173,y:32554,varname:node_3572,prsc:2|A-5275-V,B-4806-OUT,C-7844-OUT;n:type:ShaderForge.SFN_Vector1,id:4806,x:32904,y:32703,varname:node_4806,prsc:2,v1:-0.5;n:type:ShaderForge.SFN_Abs,id:2178,x:33327,y:32554,varname:node_2178,prsc:2|IN-3572-OUT;n:type:ShaderForge.SFN_Multiply,id:8253,x:33472,y:32682,varname:node_8253,prsc:2|A-2178-OUT,B-8116-OUT;n:type:ShaderForge.SFN_Vector1,id:8116,x:33236,y:32778,varname:node_8116,prsc:2,v1:8;n:type:ShaderForge.SFN_Vector1,id:7844,x:32939,y:32761,varname:node_7844,prsc:2,v1:0.5;n:type:ShaderForge.SFN_VertexColor,id:7202,x:32838,y:31921,varname:node_7202,prsc:2;n:type:ShaderForge.SFN_Multiply,id:1300,x:33190,y:31953,varname:node_1300,prsc:2|A-7202-RGB,B-4155-RGB;n:type:ShaderForge.SFN_Slider,id:2355,x:31607,y:33314,ptovrint:False,ptlb:X_Speed,ptin:_X_Speed,varname:node_5625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:8522-6296-4155-590-7974-7782-7273-447-7147;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/Waterfall" {
    Properties {
        _Mask ("Mask", 2D) = "white" {}
        _Main ("Main", 2D) = "white" {}
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Vaule1 ("Vaule1", Float ) = 0.05
        _U ("U", Float ) = 0
        _V ("V", Float ) = 1
        _Speed ("Speed", Float ) = 2
        _PosMul ("PosMul", Float ) = 1
        _Offset ("Offset", Float ) = 1
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5
        [MaterialToggle] PixelSnap ("Pixel snap", Float) = 0
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
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #pragma multi_compile _ PIXELSNAP_ON
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _Mask; uniform float4 _Mask_ST;
            uniform sampler2D _Main; uniform float4 _Main_ST;
            uniform float4 _Color;
            uniform float _Vaule1;
            uniform float _U;
            uniform float _V;
            uniform float _Speed;
            uniform float _PosMul;
            uniform float _Offset;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(2)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                float4 node_3014 = _Time;
                v.vertex.xyz += (float3(0,1,0)*sin(((_PosMul*(mul(unity_ObjectToWorld, v.vertex).r+mul(unity_ObjectToWorld, v.vertex).b))+(node_3014.g*_Speed)))*_Offset);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                #ifdef PIXELSNAP_ON
                    o.pos = UnityPixelSnap(o.pos);
                #endif
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
                float4 node_100 = _Time;
                float4 node_3455 = _Time;
                float2 node_1901 = (i.uv0+float2((_U*node_3455.g),(node_3455.g*_V)));
                float4 _Mask_var = tex2D(_Mask,TRANSFORM_TEX(node_1901, _Mask));
                float2 node_1427 = ((i.uv0+(float2(_Mask_var.r,_Mask_var.g)*_Vaule1))+node_100.g*float2(0,1));
                float4 _Main_var = tex2D(_Main,TRANSFORM_TEX(node_1427, _Main));
                float3 finalColor = ((i.vertexColor.rgb*_Color.rgb)*_Main_var.rgb);
                fixed4 finalRGBA = fixed4(finalColor,(abs((i.uv0.g+(-0.5)+0.5))*8.0));
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
