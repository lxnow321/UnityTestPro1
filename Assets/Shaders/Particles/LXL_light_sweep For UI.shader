// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:LXL/light_sweep,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:True,fnsp:True,fnfb:True;n:type:ShaderForge.SFN_Final,id:3138,x:32770,y:32676,varname:node_3138,prsc:2|emission-3522-OUT,alpha-4197-A;n:type:ShaderForge.SFN_Tex2d,id:4197,x:31896,y:32614,ptovrint:False,ptlb:diffuse,ptin:_diffuse,varname:_diffuse,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:2e953ed600944bc44ac76d8acd6cd85c,ntxv:0,isnm:False|UVIN-1211-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:616,x:31870,y:32874,ptovrint:False,ptlb:light_sweep,ptin:_light_sweep,varname:_light_sweep,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:19248df77d2675540b5e5c42fe1e9681,ntxv:0,isnm:False|UVIN-6390-UVOUT;n:type:ShaderForge.SFN_Add,id:3522,x:32500,y:32697,varname:node_3522,prsc:2|A-3096-OUT,B-8915-OUT;n:type:ShaderForge.SFN_Multiply,id:3096,x:32185,y:32568,varname:node_3096,prsc:2|A-4197-RGB,B-4197-A,C-6787-RGB,D-9477-OUT;n:type:ShaderForge.SFN_Rotator,id:6390,x:31517,y:32865,varname:node_6390,prsc:2|UVIN-2373-UVOUT,ANG-5885-OUT;n:type:ShaderForge.SFN_Slider,id:5885,x:31479,y:33129,ptovrint:False,ptlb:ROTATION,ptin:_ROTATION,varname:_ROTATION,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:3.14;n:type:ShaderForge.SFN_TexCoord,id:5317,x:30538,y:32876,varname:node_5317,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Panner,id:6622,x:30814,y:32865,varname:node_6622,prsc:2,spu:0,spv:1|UVIN-5317-UVOUT,DIST-3559-OUT;n:type:ShaderForge.SFN_Panner,id:2373,x:31134,y:32872,varname:node_2373,prsc:2,spu:1,spv:0|UVIN-6622-UVOUT,DIST-1742-OUT;n:type:ShaderForge.SFN_Time,id:6107,x:30920,y:33260,varname:node_6107,prsc:2;n:type:ShaderForge.SFN_Multiply,id:3559,x:30770,y:33100,varname:node_3559,prsc:2|A-2988-OUT,B-6107-T;n:type:ShaderForge.SFN_Multiply,id:1742,x:31291,y:33258,varname:node_1742,prsc:2|A-2809-OUT,B-6107-T;n:type:ShaderForge.SFN_Slider,id:2988,x:30517,y:33549,ptovrint:False,ptlb:V_SPEED,ptin:_V_SPEED,varname:_V_SPEED,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:0,max:5;n:type:ShaderForge.SFN_Slider,id:2809,x:31096,y:33541,ptovrint:False,ptlb:U_SPEED,ptin:_U_SPEED,varname:_U_SPEED,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:-5,cur:-0.3123643,max:5;n:type:ShaderForge.SFN_Slider,id:1008,x:32096,y:33306,ptovrint:False,ptlb:LIGHT,ptin:_LIGHT,varname:_LIGHT,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1.92102,max:2;n:type:ShaderForge.SFN_Multiply,id:8915,x:32243,y:32868,varname:node_8915,prsc:2|A-1008-OUT,B-616-RGB,C-6880-RGB;n:type:ShaderForge.SFN_TexCoord,id:1211,x:31673,y:32614,varname:node_1211,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:6787,x:31970,y:32386,ptovrint:False,ptlb:diffuse_color,ptin:_diffuse_color,varname:_diffuse_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:6880,x:31879,y:33181,ptovrint:False,ptlb:sweep_color,ptin:_sweep_color,varname:_sweep_color,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Slider,id:9477,x:31786,y:32282,ptovrint:False,ptlb:diffuse_light,ptin:_diffuse_light,varname:_diffuse_light,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:1,cur:1,max:2;proporder:6787-9477-4197-6880-616-5885-2988-2809-1008;pass:END;sub:END;*/

Shader "PJAQ/Particles/light_sweep" {
    Properties {
        _diffuse_color ("diffuse_color", Color) = (0.5,0.5,0.5,1)
        _diffuse_light ("diffuse_light", Range(1, 2)) = 1
        _diffuse ("diffuse", 2D) = "white" {}
        _sweep_color ("sweep_color", Color) = (0.5,0.5,0.5,1)
        _light_sweep ("light_sweep", 2D) = "white" {}
        _ROTATION ("ROTATION", Range(0, 3.14)) = 0
        _V_SPEED ("V_SPEED", Range(-5, 5)) = 0
        _U_SPEED ("U_SPEED", Range(-5, 5)) = -0.3123643
        _LIGHT ("LIGHT", Range(0, 2)) = 1.92102
        [HideInInspector]_Cutoff ("Alpha cutoff", Range(0,1)) = 0.5

        _StencilComp("Stencil Comparison", Float) = 8
        _Stencil("Stencil ID", Float) = 0
        _StencilOp("Stencil Operation", Float) = 0
        _StencilWriteMask("Stencil Write Mask", Float) = 255
        _StencilReadMask("Stencil Read Mask", Float) = 255
        _ColorMask ("Color Mask", Float) = 15
    }
    SubShader {
        Tags {
            "IgnoreProjector"="True"
            "Queue"="Transparent"
            "RenderType"="Transparent"
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal d3d11_9x 
            #pragma target 2.0
            uniform float4 _TimeEditor;
            uniform sampler2D _diffuse; uniform float4 _diffuse_ST;
            uniform sampler2D _light_sweep; uniform float4 _light_sweep_ST;
            uniform float _ROTATION;
            uniform float _V_SPEED;
            uniform float _U_SPEED;
            uniform float _LIGHT;
            uniform float4 _diffuse_color;
            uniform float4 _sweep_color;
            uniform float _diffuse_light;
            struct VertexInput {
                float4 vertex : POSITION;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _diffuse_var = tex2D(_diffuse,TRANSFORM_TEX(i.uv0, _diffuse));
                float node_6390_ang = _ROTATION;
                float node_6390_spd = 1.0;
                float node_6390_cos = cos(node_6390_spd*node_6390_ang);
                float node_6390_sin = sin(node_6390_spd*node_6390_ang);
                float2 node_6390_piv = float2(0.5,0.5);
                float4 node_6107 = _Time + _TimeEditor;
                float2 node_6390 = (mul(((i.uv0+(_V_SPEED*node_6107.g)*float2(0,1))+(_U_SPEED*node_6107.g)*float2(1,0))-node_6390_piv,float2x2( node_6390_cos, -node_6390_sin, node_6390_sin, node_6390_cos))+node_6390_piv);
                float4 _light_sweep_var = tex2D(_light_sweep,TRANSFORM_TEX(node_6390, _light_sweep));
                float3 emissive = ((_diffuse_var.rgb*_diffuse_var.a*_diffuse_color.rgb*_diffuse_light)+(_LIGHT*_light_sweep_var.rgb*_sweep_color.rgb));
                float3 finalColor = emissive;
                return fixed4(finalColor,_diffuse_var.a);
            }
            ENDCG
        }
    }
    CustomEditor "ShaderForgeMaterialInspector"
}
