// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33933,y:31547,varname:node_9361,prsc:2|emission-6917-OUT,alpha-8711-A,voffset-1193-OUT;n:type:ShaderForge.SFN_Tex2d,id:282,x:32627,y:31370,ptovrint:False,ptlb:node_282,ptin:_node_282,varname:node_282,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:fa4ef8524c7341e4c8e4593715302765,ntxv:0,isnm:False|UVIN-9291-UVOUT;n:type:ShaderForge.SFN_Tex2d,id:7355,x:32024,y:31116,ptovrint:False,ptlb:node_7355,ptin:_node_7355,varname:node_7355,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:393117b4874648d45b27773ef3f19d0b,ntxv:0,isnm:False|UVIN-2685-OUT;n:type:ShaderForge.SFN_Time,id:1056,x:30960,y:31086,varname:node_1056,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:2296,x:31039,y:30899,ptovrint:False,ptlb:U,ptin:_U,varname:node_2296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:2567,x:31039,y:31345,ptovrint:False,ptlb:V,ptin:_V,varname:node_2567,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:8051,x:31274,y:30882,varname:node_8051,prsc:2|A-2296-OUT,B-1056-T;n:type:ShaderForge.SFN_Multiply,id:3966,x:31276,y:31197,varname:node_3966,prsc:2|A-1056-T,B-2567-OUT;n:type:ShaderForge.SFN_Append,id:7368,x:31500,y:31087,varname:node_7368,prsc:2|A-8051-OUT,B-3966-OUT;n:type:ShaderForge.SFN_Add,id:2685,x:31793,y:31116,varname:node_2685,prsc:2|A-7368-OUT,B-3182-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:3182,x:31523,y:31275,varname:node_3182,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:1272,x:31650,y:31442,ptovrint:False,ptlb:node_1272,ptin:_node_1272,varname:node_1272,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_Append,id:506,x:32312,y:31174,varname:node_506,prsc:2|A-7355-R,B-7355-R;n:type:ShaderForge.SFN_Multiply,id:430,x:31993,y:31519,varname:node_430,prsc:2|A-506-OUT,B-1272-OUT;n:type:ShaderForge.SFN_Add,id:3858,x:32304,y:31477,varname:node_3858,prsc:2|A-430-OUT,B-3182-UVOUT;n:type:ShaderForge.SFN_Panner,id:9291,x:32463,y:31453,varname:node_9291,prsc:2,spu:0.6,spv:0|UVIN-3858-OUT;n:type:ShaderForge.SFN_Tex2d,id:320,x:32765,y:30792,ptovrint:False,ptlb:node_320,ptin:_node_320,varname:node_320,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:8ca522b01302e5549ab1a422e25d20b5,ntxv:0,isnm:False|UVIN-855-UVOUT;n:type:ShaderForge.SFN_Multiply,id:6917,x:33476,y:31273,varname:node_6917,prsc:2|A-6750-OUT,B-5477-OUT,C-8711-RGB;n:type:ShaderForge.SFN_Add,id:6750,x:33109,y:31212,varname:node_6750,prsc:2|A-1935-OUT,B-2518-OUT;n:type:ShaderForge.SFN_Panner,id:855,x:32530,y:30971,varname:node_855,prsc:2,spu:1,spv:0|UVIN-7296-UVOUT;n:type:ShaderForge.SFN_TexCoord,id:7296,x:32266,y:30951,varname:node_7296,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_ValueProperty,id:5477,x:33109,y:31371,ptovrint:False,ptlb:node_5477,ptin:_node_5477,varname:node_5477,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1.5;n:type:ShaderForge.SFN_VertexColor,id:8711,x:33109,y:31441,varname:node_8711,prsc:2;n:type:ShaderForge.SFN_Add,id:6364,x:32351,y:32240,varname:node_6364,prsc:2|A-3062-U,B-3062-V;n:type:ShaderForge.SFN_Time,id:3248,x:32285,y:32369,varname:node_3248,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1535,x:32303,y:32517,ptovrint:False,ptlb:Frequency,ptin:_Frequency,varname:node_7273,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:2989,x:32552,y:32391,varname:node_2989,prsc:2|A-3248-T,B-1535-OUT;n:type:ShaderForge.SFN_Multiply,id:5463,x:32540,y:32233,varname:node_5463,prsc:2|A-9590-OUT,B-6364-OUT;n:type:ShaderForge.SFN_ValueProperty,id:9590,x:32351,y:32174,ptovrint:False,ptlb:Wavelength,ptin:_Wavelength,varname:node_447,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Add,id:3419,x:32714,y:32297,varname:node_3419,prsc:2|A-5463-OUT,B-2989-OUT;n:type:ShaderForge.SFN_Vector3,id:8278,x:32853,y:32191,varname:node_8278,prsc:2,v1:0,v2:1,v3:0;n:type:ShaderForge.SFN_ValueProperty,id:7038,x:32880,y:32454,ptovrint:False,ptlb:Amplitude,ptin:_Amplitude,varname:node_7147,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:2;n:type:ShaderForge.SFN_Multiply,id:1193,x:33092,y:32314,varname:node_1193,prsc:2|A-8278-OUT,B-8222-OUT,C-7038-OUT;n:type:ShaderForge.SFN_Sin,id:8222,x:32880,y:32297,varname:node_8222,prsc:2|IN-3419-OUT;n:type:ShaderForge.SFN_TexCoord,id:3062,x:32171,y:32230,varname:node_3062,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Color,id:6505,x:32746,y:31037,ptovrint:False,ptlb:node_6505,ptin:_node_6505,varname:node_6505,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1935,x:33047,y:30863,varname:node_1935,prsc:2|A-320-RGB,B-6505-RGB;n:type:ShaderForge.SFN_Multiply,id:2518,x:32892,y:31441,varname:node_2518,prsc:2|A-282-RGB,B-9367-RGB;n:type:ShaderForge.SFN_Color,id:9367,x:32710,y:31660,ptovrint:False,ptlb:node_9367,ptin:_node_9367,varname:node_9367,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;proporder:282-7355-2296-2567-1272-320-5477-1535-9590-7038-6505-9367;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/HaiLang" {
    Properties {
        _node_282 ("node_282", 2D) = "white" {}
        _node_7355 ("node_7355", 2D) = "white" {}
        _U ("U", Float ) = 0
        _V ("V", Float ) = 0
        _node_1272 ("node_1272", Float ) = 0.05
        _node_320 ("node_320", 2D) = "white" {}
        _node_5477 ("node_5477", Float ) = 1.5
        _Frequency ("Frequency", Float ) = 2
        _Wavelength ("Wavelength", Float ) = 1
        _Amplitude ("Amplitude", Float ) = 2
        [HDR]_node_6505 ("node_6505", Color) = (0.5,0.5,0.5,1)
        [HDR]_node_9367 ("node_9367", Color) = (0.5,0.5,0.5,1)
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
            uniform float4 _TimeEditor;
            uniform sampler2D _node_282; uniform float4 _node_282_ST;
            uniform sampler2D _node_7355; uniform float4 _node_7355_ST;
            uniform float _U;
            uniform float _V;
            uniform float _node_1272;
            uniform sampler2D _node_320; uniform float4 _node_320_ST;
            uniform float _node_5477;
            uniform float _Frequency;
            uniform float _Wavelength;
            uniform float _Amplitude;
            uniform float4 _node_6505;
            uniform float4 _node_9367;
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
                float4 node_3248 = _Time + _TimeEditor;
                v.vertex.xyz += (float3(0,1,0)*sin(((_Wavelength*(o.uv0.r+o.uv0.g))+(node_3248.g*_Frequency)))*_Amplitude);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 node_2965 = _Time + _TimeEditor;
                float2 node_855 = (i.uv0+node_2965.g*float2(1,0));
                float4 _node_320_var = tex2D(_node_320,TRANSFORM_TEX(node_855, _node_320));
                float4 node_1056 = _Time + _TimeEditor;
                float2 node_2685 = (float2((_U*node_1056.g),(node_1056.g*_V))+i.uv0);
                float4 _node_7355_var = tex2D(_node_7355,TRANSFORM_TEX(node_2685, _node_7355));
                float2 node_9291 = (((float2(_node_7355_var.r,_node_7355_var.r)*_node_1272)+i.uv0)+node_2965.g*float2(0.6,0));
                float4 _node_282_var = tex2D(_node_282,TRANSFORM_TEX(node_9291, _node_282));
                float3 emissive = (((_node_320_var.rgb*_node_6505.rgb)+(_node_282_var.rgb*_node_9367.rgb))*_node_5477*i.vertexColor.rgb);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,i.vertexColor.a);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
