// Upgrade NOTE: replaced 'mul(UNITY_MATRIX_MVP,*)' with 'UnityObjectToClipPos(*)'

// Shader created with Shader Forge v1.35 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.35;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False;n:type:ShaderForge.SFN_Final,id:3138,x:32719,y:32712,varname:node_3138,prsc:2|emission-449-OUT;n:type:ShaderForge.SFN_Color,id:7241,x:31492,y:32937,ptovrint:False,ptlb:FlashColor,ptin:_FlashColor,varname:node_7241,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:1,c2:0.9310346,c3:0,c4:1;n:type:ShaderForge.SFN_Tex2d,id:9784,x:31903,y:32507,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_9784,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Fresnel,id:1739,x:31719,y:32717,varname:node_1739,prsc:2|EXP-5473-OUT;n:type:ShaderForge.SFN_Multiply,id:449,x:32403,y:32635,varname:node_449,prsc:2|A-9784-RGB,B-15-OUT,C-6091-OUT;n:type:ShaderForge.SFN_Slider,id:4799,x:31085,y:32787,ptovrint:False,ptlb:ColorRange,ptin:_ColorRange,varname:node_4799,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.7,max:0.7;n:type:ShaderForge.SFN_Vector1,id:6091,x:32092,y:32933,varname:node_6091,prsc:2,v1:1.5;n:type:ShaderForge.SFN_ConstantClamp,id:15,x:32114,y:32760,varname:node_15,prsc:2,min:0.5,max:1|IN-6220-OUT;n:type:ShaderForge.SFN_Multiply,id:6220,x:31912,y:32841,varname:node_6220,prsc:2|A-1739-OUT,B-7241-RGB;n:type:ShaderForge.SFN_OneMinus,id:5473,x:31492,y:32739,varname:node_5473,prsc:2|IN-4799-OUT;proporder:9784-7241-4799;pass:END;sub:END;*/

Shader "PJAQ/FlashColor" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _FlashColor ("FlashColor", Color) = (1,0.9310346,0,1)
        _ColorRange ("ColorRange", Range(0, 0.7)) = 0.7
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
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float4 _FlashColor;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _ColorRange;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
                float2 texcoord0 : TEXCOORD0;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                float2 uv0 : TEXCOORD0;
                float4 posWorld : TEXCOORD1;
                float3 normalDir : TEXCOORD2;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos(v.vertex );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 emissive = (_MainTex_var.rgb*clamp((pow(1.0-max(0,dot(normalDirection, viewDirection)),(1.0 - _ColorRange))*_FlashColor.rgb),0.5,1)*1.5);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
