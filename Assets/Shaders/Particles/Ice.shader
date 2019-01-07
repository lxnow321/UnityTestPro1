// Shader created with Shader Forge v1.38 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:3,bdst:7,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:False,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:33232,y:32725,varname:node_9361,prsc:2|emission-7850-OUT,alpha-1553-OUT;n:type:ShaderForge.SFN_Tex2d,id:7279,x:32503,y:32439,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_7279,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9950,x:32718,y:32585,varname:node_9950,prsc:2|A-7279-RGB,B-1126-OUT;n:type:ShaderForge.SFN_Fresnel,id:6719,x:31952,y:32464,varname:node_6719,prsc:2|EXP-3021-OUT;n:type:ShaderForge.SFN_Multiply,id:1126,x:32483,y:32742,varname:node_1126,prsc:2|A-6783-OUT,B-3975-OUT;n:type:ShaderForge.SFN_Color,id:4198,x:31945,y:32723,ptovrint:False,ptlb:Color,ptin:_Color,varname:node_4198,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:6783,x:32243,y:32589,varname:node_6783,prsc:2|A-6551-OUT,B-4198-RGB;n:type:ShaderForge.SFN_Slider,id:3021,x:31636,y:32553,ptovrint:False,ptlb:Power,ptin:_Power,varname:node_3021,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Fresnel,id:4550,x:32163,y:32980,varname:node_4550,prsc:2|EXP-2876-OUT;n:type:ShaderForge.SFN_Multiply,id:7512,x:32608,y:33125,varname:node_7512,prsc:2|A-1513-OUT,B-6087-OUT;n:type:ShaderForge.SFN_Color,id:4125,x:32040,y:33195,ptovrint:False,ptlb:BackColor,ptin:_BackColor,varname:_node_4198_copy,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:1513,x:32390,y:33125,varname:node_1513,prsc:2|A-4550-OUT,B-4125-RGB;n:type:ShaderForge.SFN_Slider,id:2876,x:31867,y:33029,ptovrint:False,ptlb:BackPower,ptin:_BackPower,varname:__copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:10;n:type:ShaderForge.SFN_Add,id:7850,x:32933,y:32804,varname:node_7850,prsc:2|A-9950-OUT,B-7512-OUT;n:type:ShaderForge.SFN_Slider,id:3975,x:32128,y:32847,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_3975,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:2,max:8;n:type:ShaderForge.SFN_Slider,id:6087,x:32272,y:33363,ptovrint:False,ptlb:BackIntensity,ptin:_BackIntensity,varname:node_6087,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:8;n:type:ShaderForge.SFN_Slider,id:1553,x:32830,y:33183,ptovrint:False,ptlb:Opacity Power,ptin:_OpacityPower,varname:node_1553,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:6551,x:32190,y:32419,varname:node_6551,prsc:2|IN-6719-OUT;proporder:7279-3021-3975-4198-2876-6087-4125-1553;pass:END;sub:END;*/

Shader "PJAQ/Particles/Ice" {
    Properties {
        _MainTex ("MainTex", 2D) = "white" {}
        _Power ("Power", Range(0, 10)) = 2
        _Intensity ("Intensity", Range(0, 8)) = 2
        _Color ("Color", Color) = (0.5,0.5,0.5,1)
        _BackPower ("BackPower", Range(0, 10)) = 2
        _BackIntensity ("BackIntensity", Range(0, 8)) = 1
        [HDR]_BackColor ("BackColor", Color) = (0.5,0.5,0.5,1)
        _OpacityPower ("Opacity Power", Range(0, 1)) = 1
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
            
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float4 _Color;
            uniform float _Power;
            uniform float4 _BackColor;
            uniform float _BackPower;
            uniform float _Intensity;
            uniform float _BackIntensity;
            uniform float _OpacityPower;
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
                o.pos = UnityObjectToClipPos( v.vertex );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
////// Lighting:
////// Emissive:
                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float node_4550 = pow(1.0-max(0,dot(normalDirection, viewDirection)),_BackPower);
                float3 emissive = ((_MainTex_var.rgb*(((1.0 - pow(1.0-max(0,dot(normalDirection, viewDirection)),_Power))*_Color.rgb)*_Intensity))+((node_4550*_BackColor.rgb)*_BackIntensity));
                float3 finalColor = emissive;
                fixed4 finalRGBA = fixed4(finalColor,_OpacityPower);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    CustomEditor "ShaderForgeMaterialInspector"
}
