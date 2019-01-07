// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:Particles/Additive,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:True,fgod:False,fgor:False,fgmd:0,fgcr:0,fgcg:0,fgcb:0,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:4795,x:33162,y:32715,varname:node_4795,prsc:2|emission-9041-OUT;n:type:ShaderForge.SFN_Tex2d,id:6074,x:32111,y:32480,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:_MainTex,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8341-OUT;n:type:ShaderForge.SFN_Multiply,id:2393,x:32770,y:32433,varname:node_2393,prsc:2|A-7815-OUT,B-2053-RGB,C-797-RGB,D-7196-OUT,E-2105-OUT;n:type:ShaderForge.SFN_VertexColor,id:2053,x:31789,y:32921,varname:node_2053,prsc:2;n:type:ShaderForge.SFN_Color,id:797,x:31981,y:32710,ptovrint:True,ptlb:Color,ptin:_TintColor,varname:_TintColor,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:0.5019608;n:type:ShaderForge.SFN_Smoothstep,id:3726,x:32541,y:32892,varname:node_3726,prsc:2|A-9495-OUT,B-7815-OUT,V-170-OUT;n:type:ShaderForge.SFN_Slider,id:6239,x:31624,y:33254,ptovrint:False,ptlb:Soft_Dissove,ptin:_Soft_Dissove,varname:node_6239,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0.01,cur:0.998181,max:1;n:type:ShaderForge.SFN_Vector1,id:9495,x:32110,y:32930,varname:node_9495,prsc:2,v1:0;n:type:ShaderForge.SFN_Multiply,id:9041,x:32975,y:32767,varname:node_9041,prsc:2|A-2393-OUT,B-630-OUT,C-797-A,D-6074-A;n:type:ShaderForge.SFN_OneMinus,id:630,x:32747,y:32975,varname:node_630,prsc:2|IN-3726-OUT;n:type:ShaderForge.SFN_OneMinus,id:170,x:32231,y:33135,varname:node_170,prsc:2|IN-5308-OUT;n:type:ShaderForge.SFN_ValueProperty,id:7196,x:32130,y:33008,ptovrint:False,ptlb:Glow,ptin:_Glow,varname:node_7196,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_SwitchProperty,id:2105,x:32470,y:33135,ptovrint:False,ptlb:AlphaSwitch,ptin:_AlphaSwitch,varname:node_2105,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-8108-OUT,B-2053-A;n:type:ShaderForge.SFN_Vector1,id:8108,x:32303,y:33288,varname:node_8108,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:5308,x:32009,y:33189,varname:node_5308,prsc:2|A-2053-A,B-6239-OUT;n:type:ShaderForge.SFN_Tex2d,id:3925,x:31370,y:32233,ptovrint:False,ptlb:FlowMap,ptin:_FlowMap,varname:node_3925,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-8151-OUT;n:type:ShaderForge.SFN_Multiply,id:5494,x:31599,y:32370,varname:node_5494,prsc:2|A-3925-R,B-3925-G,C-3357-OUT;n:type:ShaderForge.SFN_ValueProperty,id:3357,x:31333,y:32564,ptovrint:False,ptlb:Dis_QD,ptin:_Dis_QD,varname:node_3357,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Add,id:8341,x:31850,y:32494,varname:node_8341,prsc:2|A-5494-OUT,B-8442-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:8442,x:30897,y:32419,varname:node_8442,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Multiply,id:9215,x:30728,y:32079,varname:node_9215,prsc:2|A-3404-T,B-650-OUT;n:type:ShaderForge.SFN_Multiply,id:6797,x:30749,y:32203,varname:node_6797,prsc:2|A-3404-T,B-4076-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4076,x:30513,y:32175,ptovrint:False,ptlb:V,ptin:_V,varname:node_4076,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:650,x:30545,y:31979,ptovrint:False,ptlb:U,ptin:_U,varname:node_650,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:3404,x:30532,y:32027,varname:node_3404,prsc:2;n:type:ShaderForge.SFN_Append,id:6107,x:30931,y:32147,varname:node_6107,prsc:2|A-9215-OUT,B-6797-OUT;n:type:ShaderForge.SFN_Add,id:8151,x:31170,y:32233,varname:node_8151,prsc:2|A-6107-OUT,B-8442-UVOUT;n:type:ShaderForge.SFN_SwitchProperty,id:339,x:32153,y:32335,ptovrint:False,ptlb:FlowMap_Mutiply,ptin:_FlowMap_Mutiply,varname:node_339,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,on:False|A-9866-OUT,B-3925-RGB;n:type:ShaderForge.SFN_Vector1,id:9866,x:31869,y:32256,varname:node_9866,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:7815,x:32371,y:32429,varname:node_7815,prsc:2|A-339-OUT,B-6074-RGB;n:type:ShaderForge.SFN_Slider,id:5325,x:31543,y:33250,ptovrint:False,ptlb:X_Speed,ptin:_X_Speed,varname:node_5625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:797-6074-3925-7196-3357-650-4076-6239-2105-339;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/Addtive Distort" {
    Properties {
        _TintColor ("Color", Color) = (0.5,0.5,0.5,0.5019608)
        _MainTex ("MainTex", 2D) = "white" {}
        _FlowMap ("FlowMap", 2D) = "white" {}
        _Glow ("Glow", Float ) = 2
        _Dis_QD ("Dis_QD", Float ) = 0.05
        _U ("U", Float ) = 0
        _V ("V", Float ) = 0
        _Soft_Dissove ("Soft_Dissove", Range(0.01, 1)) = 0.998181
        [MaterialToggle] _AlphaSwitch ("AlphaSwitch", Float ) = 1
        [MaterialToggle] _FlowMap_Mutiply ("FlowMap_Mutiply", Float ) = 1
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
            Blend One One
            Cull Off
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal n3ds wiiu 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _TintColor;
            uniform float _Soft_Dissove;
            uniform float _Glow;
            uniform fixed _AlphaSwitch;
            uniform sampler2D _FlowMap; uniform float4 _FlowMap_ST;
            uniform float _Dis_QD;
            uniform float _V;
            uniform float _U;
            uniform fixed _FlowMap_Mutiply;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
////// Lighting:
////// Emissive:
                float4 node_3404 = _Time;
                float2 node_8151 = (float2((node_3404.g*_U),(node_3404.g*_V))+i.uv0);
                float4 _FlowMap_var = tex2D(_FlowMap,TRANSFORM_TEX(node_8151, _FlowMap));
                float2 node_8341 = ((_FlowMap_var.r*_FlowMap_var.g*_Dis_QD)+i.uv0);
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_8341, _MainTex));
                float3 node_7815 = (lerp( 1.0, _FlowMap_var.rgb, _FlowMap_Mutiply )*_MainTex_var.rgb);
                float node_9495 = 0.0;
                float node_170 = (1.0 - (i.vertexColor.a*_Soft_Dissove));
                float3 emissive = ((node_7815*i.vertexColor.rgb*_TintColor.rgb*_Glow*lerp( 1.0, i.vertexColor.a, _AlphaSwitch ))*(1.0 - smoothstep( float3(node_9495,node_9495,node_9495), node_7815, float3(node_170,node_170,node_170) ))*_TintColor.a*_MainTex_var.a);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Particles/Additive"
    CustomEditor "ShaderForgeMaterialInspector"
}
