// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:32915,y:32424,varname:node_3138,prsc:2|emission-8976-OUT;n:type:ShaderForge.SFN_Tex2d,id:2038,x:31497,y:32286,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8976,x:32136,y:32509,varname:node_8976,prsc:2|A-2038-RGB,B-4679-OUT;n:type:ShaderForge.SFN_Slider,id:5517,x:31443,y:32538,ptovrint:False,ptlb:Amb-lighting,ptin:_Amblighting,varname:node_5517,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:8;n:type:ShaderForge.SFN_Multiply,id:4679,x:31860,y:32595,varname:node_4679,prsc:2|A-5517-OUT,B-2285-RGB,C-3663-OUT;n:type:ShaderForge.SFN_Color,id:2285,x:31443,y:32664,ptovrint:False,ptlb:Lightcolor,ptin:_Lightcolor,varname:node_2285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Time,id:7464,x:31229,y:32906,varname:node_7464,prsc:2;n:type:ShaderForge.SFN_Fmod,id:9594,x:31571,y:32925,varname:node_9594,prsc:2|A-5082-OUT,B-3453-OUT;n:type:ShaderForge.SFN_Round,id:5082,x:31388,y:32906,varname:node_5082,prsc:2|IN-7464-TTR;n:type:ShaderForge.SFN_Vector1,id:3453,x:31344,y:33097,varname:node_3453,prsc:2,v1:2;n:type:ShaderForge.SFN_ConstantClamp,id:3663,x:31750,y:32925,varname:node_3663,prsc:2,min:0.5,max:1|IN-9594-OUT;proporder:2038-5517-2285;pass:END;sub:END;*/

Shader "PJAQ/Tiling/TilingBlink" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Amblighting ("Amb-lighting", Range(0, 8)) = 0
        _Lightcolor ("Lightcolor", Color) = (0.5,0.5,0.5,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _Amblighting;
            uniform float4 _Lightcolor;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 node_7464 = _Time + _TimeEditor;
                float3 emissive = (_MainTex_var.rgb*(_Amblighting*_Lightcolor.rgb*clamp(fmod(round(node_7464.a),2.0),0.5,1)));
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}