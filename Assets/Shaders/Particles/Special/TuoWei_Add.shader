// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:2,bsrc:0,bdst:0,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34414,y:32831,varname:node_9361,prsc:2|emission-8151-OUT,clip-7719-OUT;n:type:ShaderForge.SFN_Tex2d,id:4853,x:32787,y:32457,ptovrint:False,ptlb:Main Tex,ptin:_MainTex,varname:node_4853,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-6869-OUT;n:type:ShaderForge.SFN_TexCoord,id:3437,x:32141,y:32350,varname:node_3437,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:3511,x:31883,y:32571,varname:node_3511,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:5800,x:31883,y:32491,ptovrint:False,ptlb:x_speed_Main Tex,ptin:_x_speed_MainTex,varname:node_5800,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.6;n:type:ShaderForge.SFN_ValueProperty,id:3998,x:31883,y:32722,ptovrint:False,ptlb:Y_speed_Main Tex,ptin:_Y_speed_MainTex,varname:node_3998,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4081,x:32129,y:32525,varname:node_4081,prsc:2|A-5800-OUT,B-3511-T;n:type:ShaderForge.SFN_Multiply,id:5813,x:32115,y:32688,varname:node_5813,prsc:2|A-3511-T,B-3998-OUT;n:type:ShaderForge.SFN_Append,id:713,x:32323,y:32614,varname:node_713,prsc:2|A-4081-OUT,B-5813-OUT;n:type:ShaderForge.SFN_Add,id:6869,x:32570,y:32457,varname:node_6869,prsc:2|A-3437-UVOUT,B-713-OUT;n:type:ShaderForge.SFN_VertexColor,id:224,x:32787,y:32686,varname:node_224,prsc:2;n:type:ShaderForge.SFN_Color,id:4205,x:32787,y:32261,ptovrint:False,ptlb:Main Color,ptin:_MainColor,varname:node_4205,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0,c2:0.3088235,c3:0.1426978,c4:1;n:type:ShaderForge.SFN_Multiply,id:3314,x:33628,y:32671,varname:node_3314,prsc:2|A-4205-RGB,B-4853-RGB,C-224-RGB;n:type:ShaderForge.SFN_Tex2d,id:2090,x:32787,y:32929,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_2090,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:28c7aad1372ff114b90d330f8a2dd938,ntxv:0,isnm:False|UVIN-9641-OUT;n:type:ShaderForge.SFN_ValueProperty,id:5814,x:31883,y:32874,ptovrint:False,ptlb:x_speed_Noise,ptin:_x_speed_Noise,varname:node_5814,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:-0.4;n:type:ShaderForge.SFN_ValueProperty,id:2134,x:31871,y:33136,ptovrint:False,ptlb:y_speed_Noise,ptin:_y_speed_Noise,varname:node_2134,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Time,id:4063,x:31883,y:32958,varname:node_4063,prsc:2;n:type:ShaderForge.SFN_Multiply,id:549,x:32170,y:32870,varname:node_549,prsc:2|A-5814-OUT,B-4063-T;n:type:ShaderForge.SFN_Multiply,id:351,x:32170,y:33042,varname:node_351,prsc:2|A-4063-T,B-2134-OUT;n:type:ShaderForge.SFN_Append,id:7623,x:32344,y:32951,varname:node_7623,prsc:2|A-549-OUT,B-351-OUT;n:type:ShaderForge.SFN_Add,id:9641,x:32546,y:32929,varname:node_9641,prsc:2|A-3437-UVOUT,B-7623-OUT;n:type:ShaderForge.SFN_Multiply,id:7719,x:33649,y:33034,varname:node_7719,prsc:2|A-4853-R,B-3273-OUT;n:type:ShaderForge.SFN_ComponentMask,id:3092,x:32112,y:33174,varname:node_3092,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-3437-UVOUT;n:type:ShaderForge.SFN_Vector1,id:5132,x:32112,y:33363,varname:node_5132,prsc:2,v1:7;n:type:ShaderForge.SFN_Multiply,id:9118,x:32325,y:33174,varname:node_9118,prsc:2|A-3092-OUT,B-5132-OUT;n:type:ShaderForge.SFN_RemapRange,id:1261,x:32325,y:33312,varname:node_1261,prsc:2,frmn:0,frmx:1,tomn:1,tomx:0|IN-3092-OUT;n:type:ShaderForge.SFN_Min,id:2786,x:32540,y:33229,varname:node_2786,prsc:2|A-9118-OUT,B-1261-OUT;n:type:ShaderForge.SFN_Add,id:3273,x:32826,y:33147,varname:node_3273,prsc:2|A-2090-R,B-2786-OUT,C-8058-OUT;n:type:ShaderForge.SFN_RemapRange,id:1178,x:33072,y:33147,varname:node_1178,prsc:2,frmn:0,frmx:1,tomn:-3,tomx:3|IN-3273-OUT;n:type:ShaderForge.SFN_Clamp01,id:1404,x:33236,y:33147,varname:node_1404,prsc:2|IN-1178-OUT;n:type:ShaderForge.SFN_Append,id:1645,x:33439,y:33147,varname:node_1645,prsc:2|A-1404-OUT,B-1943-OUT;n:type:ShaderForge.SFN_Vector1,id:1943,x:33247,y:33317,varname:node_1943,prsc:2,v1:0;n:type:ShaderForge.SFN_Tex2dAsset,id:1626,x:33426,y:33388,ptovrint:False,ptlb:Gradient Edge,ptin:_GradientEdge,varname:node_1626,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:1440,x:33639,y:33167,varname:node_1440,prsc:2,ntxv:0,isnm:False|UVIN-1645-OUT,TEX-1626-TEX;n:type:ShaderForge.SFN_OneMinus,id:5156,x:33835,y:33167,varname:node_5156,prsc:2|IN-1440-RGB;n:type:ShaderForge.SFN_Color,id:130,x:33832,y:33355,ptovrint:False,ptlb:Color Edge,ptin:_ColorEdge,varname:node_130,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.6000002,c3:0,c4:1;n:type:ShaderForge.SFN_Slider,id:1489,x:32408,y:33484,ptovrint:False,ptlb:Dissolver Amount,ptin:_DissolverAmount,varname:node_1489,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.4606643,max:1;n:type:ShaderForge.SFN_RemapRange,id:8058,x:32989,y:33399,varname:node_8058,prsc:2,frmn:0,frmx:1,tomn:-1.7,tomx:1|IN-7059-OUT;n:type:ShaderForge.SFN_Lerp,id:8151,x:34231,y:32932,varname:node_8151,prsc:2|A-3314-OUT,B-5665-OUT,T-5156-OUT;n:type:ShaderForge.SFN_Add,id:5665,x:34128,y:33188,varname:node_5665,prsc:2|A-5156-OUT,B-130-RGB;n:type:ShaderForge.SFN_Multiply,id:7059,x:32808,y:33571,varname:node_7059,prsc:2|A-1489-OUT,B-6887-A;n:type:ShaderForge.SFN_VertexColor,id:6887,x:32457,y:33607,varname:node_6887,prsc:2;proporder:4853-5800-3998-4205-2090-5814-2134-1489-1626-130;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/TuoWei_Add" {
    Properties {
        _MainTex ("Main Tex", 2D) = "white" {}
        _x_speed_MainTex ("x_speed_Main Tex", Float ) = -0.6
        _Y_speed_MainTex ("Y_speed_Main Tex", Float ) = 0
        [HDR]_MainColor ("Main Color", Color) = (0,0.3088235,0.1426978,1)
        _Noise ("Noise", 2D) = "white" {}
        _x_speed_Noise ("x_speed_Noise", Float ) = -0.4
        _y_speed_Noise ("y_speed_Noise", Float ) = 0
        _DissolverAmount ("Dissolver Amount", Range(0, 1)) = 0.4606643
        _GradientEdge ("Gradient Edge", 2D) = "white" {}
        [HDR]_ColorEdge ("Color Edge", Color) = (1,0.6000002,0,1)
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
            Blend One One
            Cull Off
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _x_speed_MainTex;
            uniform float _Y_speed_MainTex;
            uniform float4 _MainColor;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _x_speed_Noise;
            uniform float _y_speed_Noise;
            uniform sampler2D _GradientEdge; uniform float4 _GradientEdge_ST;
            uniform float4 _ColorEdge;
            uniform float _DissolverAmount;
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
            float4 frag(VertexOutput i, float facing : VFACE) : COLOR {
                float isFrontFace = ( facing >= 0 ? 1 : 0 );
                float faceSign = ( facing >= 0 ? 1 : -1 );
                float4 node_3511 = _Time + _TimeEditor;
                float2 node_6869 = (i.uv0+float2((_x_speed_MainTex*node_3511.g),(node_3511.g*_Y_speed_MainTex)));
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(node_6869, _MainTex));
                float4 node_4063 = _Time + _TimeEditor;
                float2 node_9641 = (i.uv0+float2((_x_speed_Noise*node_4063.g),(node_4063.g*_y_speed_Noise)));
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(node_9641, _Noise));
                float node_3092 = i.uv0.r;
                float node_3273 = (_Noise_var.r+min((node_3092*7.0),(node_3092*-1.0+1.0))+((_DissolverAmount*i.vertexColor.a)*2.7+-1.7));
                clip((_MainTex_var.r*node_3273) - 0.5);
////// Lighting:
////// Emissive:
                float2 node_1645 = float2(saturate((node_3273*6.0+-3.0)),0.0);
                float4 node_1440 = tex2D(_GradientEdge,TRANSFORM_TEX(node_1645, _GradientEdge));
                float3 node_5156 = (1.0 - node_1440.rgb);
                float3 emissive = lerp((_MainColor.rgb*_MainTex_var.rgb*i.vertexColor.rgb),(node_5156+_ColorEdge.rgb),node_5156);
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
