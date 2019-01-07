// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:1,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33762,y:32647,varname:node_9361,prsc:2|spec-6908-OUT,gloss-5102-OUT,emission-5243-OUT;n:type:ShaderForge.SFN_Tex2d,id:8611,x:32142,y:32396,ptovrint:False,ptlb:Diffuse,ptin:_Diffuse,varname:node_8611,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:4153,x:32396,y:32880,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4153,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3438,x:32680,y:32880,varname:node_3438,prsc:2|A-8611-RGB,B-4153-RGB;n:type:ShaderForge.SFN_ValueProperty,id:6908,x:32611,y:32610,ptovrint:False,ptlb:Specular,ptin:_Specular,varname:node_6908,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:5102,x:32745,y:32752,ptovrint:False,ptlb:Gloss,ptin:_Gloss,varname:node_5102,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Fresnel,id:1688,x:32630,y:33119,varname:node_1688,prsc:2|EXP-2443-OUT;n:type:ShaderForge.SFN_Slider,id:2443,x:32184,y:33209,ptovrint:False,ptlb:FresnelLine,ptin:_FresnelLine,varname:node_2443,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Color,id:4923,x:32519,y:33298,ptovrint:False,ptlb:Fresnel-Color,ptin:_FresnelColor,varname:node_4923,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:455,x:32887,y:33126,varname:node_455,prsc:2|A-1688-OUT,B-4923-RGB;n:type:ShaderForge.SFN_Add,id:5243,x:33307,y:32865,varname:node_5243,prsc:2|A-3438-OUT,B-455-OUT,C-4645-OUT,D-3445-RGB;n:type:ShaderForge.SFN_Cubemap,id:9512,x:32780,y:33329,ptovrint:False,ptlb:Cube,ptin:_Cube,varname:node_9512,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,cube:807b825573eaf4246b96440b6e61cb49,pvfc:0;n:type:ShaderForge.SFN_ValueProperty,id:9864,x:32780,y:33539,ptovrint:False,ptlb:CubePower,ptin:_CubePower,varname:node_9864,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:4645,x:33091,y:33354,varname:node_4645,prsc:2|A-9512-RGB,B-9864-OUT;n:type:ShaderForge.SFN_NormalVector,id:1126,x:31896,y:33697,prsc:2,pt:False;n:type:ShaderForge.SFN_Transform,id:8514,x:32137,y:33697,varname:node_8514,prsc:2,tffrom:0,tfto:3|IN-1126-OUT;n:type:ShaderForge.SFN_ComponentMask,id:9052,x:32386,y:33663,varname:node_9052,prsc:2,cc1:0,cc2:1,cc3:-1,cc4:-1|IN-8514-XYZ;n:type:ShaderForge.SFN_Vector1,id:8195,x:32452,y:33577,varname:node_8195,prsc:2,v1:0.5;n:type:ShaderForge.SFN_Multiply,id:642,x:32626,y:33663,varname:node_642,prsc:2|A-8195-OUT,B-9052-OUT;n:type:ShaderForge.SFN_Add,id:4588,x:32851,y:33652,varname:node_4588,prsc:2|A-8195-OUT,B-642-OUT,C-4604-OUT;n:type:ShaderForge.SFN_Tex2d,id:3445,x:33109,y:33648,ptovrint:False,ptlb:Line,ptin:_Line,varname:node_3445,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False|UVIN-4588-OUT;n:type:ShaderForge.SFN_ValueProperty,id:4604,x:32408,y:33951,ptovrint:False,ptlb:LinePower,ptin:_LinePower,varname:node_4604,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;proporder:8611-4153-6908-5102-2443-4923-9512-9864-3445-4604;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/Ice_Alpha" {
    Properties {
        _Diffuse ("Diffuse", 2D) = "white" {}
        [HDR]_Color ("Color", Color) = (0.5,0.5,0.5,1)
        _Specular ("Specular", Float ) = 0
        _Gloss ("Gloss", Float ) = 0
    _FresnelLine ("FresnelLine", Range(0, 1)) = 0
        [HDR]_FresnelColor ("Fresnel-Color", Color) = (0.5,0.5,0.5,1)
        _Cube ("Cube", Cube) = "_Skybox" {}
        _CubePower ("CubePower", Float ) = 0
        _Line ("Line", 2D) = "white" {}
        _LinePower ("LinePower", Float ) = 0
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _FresnelLine;
            uniform float4 _FresnelColor;
            uniform samplerCUBE _Cube;
            uniform float _CubePower;
            uniform sampler2D _Line; uniform float4 _Line_ST;
            uniform float _LinePower;
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
                UNITY_FOG_COORDS(3)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = 1;
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
////// Emissive:
                float4 _Diffuse_var = tex2D(_Diffuse,TRANSFORM_TEX(i.uv0, _Diffuse));
                float node_8195 = 0.5;
                float2 node_4588 = (node_8195+(node_8195*mul( UNITY_MATRIX_V, float4(i.normalDir,0) ).xyz.rgb.rg)+_LinePower);
                float4 _Line_var = tex2D(_Line,TRANSFORM_TEX(node_4588, _Line));
                float3 emissive = ((_Diffuse_var.rgb*_Color.rgb)+(pow(1.0-max(0,dot(normalDirection, viewDirection)),_FresnelLine)*_FresnelColor.rgb)+(texCUBE(_Cube,viewReflectDirection).rgb*_CubePower)+_Line_var.rgb);
/// Final Color:
                float3 finalColor = specular + emissive;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
        Pass {
            Name "FORWARD_DELTA"
            Tags {
                "LightMode"="ForwardAdd"
            }
            Blend One One
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDADD
            #include "UnityCG.cginc"
            #include "AutoLight.cginc"
            #pragma multi_compile_fwdadd
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles 
            #pragma target 3.0
            uniform float4 _LightColor0;
            uniform sampler2D _Diffuse; uniform float4 _Diffuse_ST;
            uniform float4 _Color;
            uniform float _Specular;
            uniform float _Gloss;
            uniform float _FresnelLine;
            uniform float4 _FresnelColor;
            uniform samplerCUBE _Cube;
            uniform float _CubePower;
            uniform sampler2D _Line; uniform float4 _Line_ST;
            uniform float _LinePower;
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
                LIGHTING_COORDS(3,4)
                UNITY_FOG_COORDS(5)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(lerp(_WorldSpaceLightPos0.xyz, _WorldSpaceLightPos0.xyz - i.posWorld.xyz,_WorldSpaceLightPos0.w));
                float3 lightColor = _LightColor0.rgb;
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
                float attenuation = LIGHT_ATTENUATION(i);
                float3 attenColor = attenuation * _LightColor0.xyz;
///////// Gloss:
                float gloss = _Gloss;
                float specPow = exp2( gloss * 10.0 + 1.0 );
////// Specular:
                float NdotL = saturate(dot( normalDirection, lightDirection ));
                float3 specularColor = float3(_Specular,_Specular,_Specular);
                float3 directSpecular = attenColor * pow(max(0,dot(halfDirection,normalDirection)),specPow)*specularColor;
                float3 specular = directSpecular;
/// Final Color:
                float3 finalColor = specular;
                fixed4 finalRGBA = fixed4(finalColor * 1,0);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
