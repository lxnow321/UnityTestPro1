// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:False,qofs:0,qpre:2,rntp:3,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34045,y:32637,varname:node_9361,prsc:2|emission-2436-OUT,custl-7341-OUT,clip-7492-OUT;n:type:ShaderForge.SFN_Fresnel,id:798,x:33130,y:32325,varname:node_798,prsc:2;n:type:ShaderForge.SFN_Multiply,id:486,x:33424,y:32412,varname:node_486,prsc:2|A-798-OUT,B-861-OUT;n:type:ShaderForge.SFN_Multiply,id:7341,x:33829,y:32572,varname:node_7341,prsc:2|A-7104-RGB,B-486-OUT,C-6620-RGB;n:type:ShaderForge.SFN_Color,id:7104,x:33667,y:32379,ptovrint:False,ptlb:Fresnel color,ptin:_Fresnelcolor,varname:node_7104,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Tex2d,id:4457,x:32775,y:32936,ptovrint:False,ptlb:Noise,ptin:_Noise,varname:node_4457,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Slider,id:1821,x:32526,y:33157,ptovrint:False,ptlb:Dissolve,ptin:_Dissolve,varname:node_1821,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Divide,id:7492,x:33122,y:32915,varname:node_7492,prsc:2|A-4457-R,B-5609-OUT;n:type:ShaderForge.SFN_If,id:889,x:33682,y:33106,varname:node_889,prsc:2|A-7492-OUT,B-7939-OUT,GT-2259-OUT,EQ-46-OUT,LT-46-OUT;n:type:ShaderForge.SFN_Slider,id:7939,x:33181,y:33176,ptovrint:False,ptlb:Edge,ptin:_Edge,varname:node_7939,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Vector1,id:2259,x:33349,y:33267,varname:node_2259,prsc:2,v1:0;n:type:ShaderForge.SFN_Vector1,id:46,x:33411,y:33378,varname:node_46,prsc:2,v1:1;n:type:ShaderForge.SFN_Multiply,id:2436,x:33694,y:32759,varname:node_2436,prsc:2|A-122-RGB,B-889-OUT;n:type:ShaderForge.SFN_Color,id:122,x:33387,y:32782,ptovrint:False,ptlb:Edge color,ptin:_Edgecolor,varname:node_122,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_RemapRange,id:5609,x:32896,y:33159,varname:node_5609,prsc:2,frmn:0,frmx:1,tomn:0,tomx:2.1|IN-1821-OUT;n:type:ShaderForge.SFN_Slider,id:861,x:33033,y:32494,ptovrint:False,ptlb:intensity,ptin:_intensity,varname:node_861,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7203254,max:5;n:type:ShaderForge.SFN_VertexColor,id:6620,x:33600,y:32608,varname:node_6620,prsc:2;n:type:ShaderForge.SFN_Slider,id:6657,x:31799,y:33506,ptovrint:False,ptlb:X_Speed,ptin:_X_Speed,varname:node_5625,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:10;proporder:7104-4457-1821-122-7939-861;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/HeiHua" {
    Properties {
        [HDR]_Fresnelcolor ("Fresnel color", Color) = (0.5,0.5,0.5,1)
        _Noise ("Noise", 2D) = "white" {}
        _Dissolve ("Dissolve", Range(0, 1)) = 0
        [HDR]_Edgecolor ("Edge color", Color) = (0.5,0.5,0.5,1)
        _Edge ("Edge", Range(0, 1)) = 0
        _intensity ("intensity", Range(0, 5)) = 0.7203254
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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _Fresnelcolor;
            uniform sampler2D _Noise; uniform float4 _Noise_ST;
            uniform float _Dissolve;
            uniform float _Edge;
            uniform float4 _Edgecolor;
            uniform float _intensity;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
                float4 vertexColor : COLOR;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
                float4 vertexColor : COLOR;
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.vertexColor = v.vertexColor;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float4 _Noise_var = tex2D(_Noise,TRANSFORM_TEX(i.uv0, _Noise));
                float node_7492 = (_Noise_var.r/(_Dissolve*2.1+0.0));
                clip(node_7492 - 0.5);
////// Lighting:
////// Emissive:
                float node_889_if_leA = step(node_7492,_Edge);
                float node_889_if_leB = step(_Edge,node_7492);
                float node_46 = 1.0;
                float3 emissive = (_Edgecolor.rgb*lerp((node_889_if_leA*node_46)+(node_889_if_leB*0.0),node_46,node_889_if_leA*node_889_if_leB));
                float3 finalColor = emissive + (_Fresnelcolor.rgb*((1.0-max(0,dot(normalDirection, viewDirection)))*_intensity)*i.vertexColor.rgb);
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
