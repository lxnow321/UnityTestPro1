// Shader created with Shader Forge v1.37 
// Shader Forge (c) Neat Corporation / Joachim Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.37;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:0,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:1,dpts:2,wrdp:True,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:False,aust:True,igpj:False,qofs:0,qpre:1,rntp:1,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:False,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:3138,x:34668,y:32565,varname:node_3138,prsc:2|emission-894-OUT,olwid-5454-OUT,olcol-7968-RGB;n:type:ShaderForge.SFN_NormalVector,id:4464,x:30312,y:32455,prsc:2,pt:True;n:type:ShaderForge.SFN_LightVector,id:9685,x:30312,y:32606,varname:node_9685,prsc:2;n:type:ShaderForge.SFN_Dot,id:7949,x:30578,y:32565,varname:node_7949,prsc:2,dt:0|A-4464-OUT,B-9685-OUT;n:type:ShaderForge.SFN_RemapRange,id:8680,x:30741,y:32565,varname:node_8680,prsc:2,frmn:-1,frmx:1,tomn:0,tomx:1|IN-7949-OUT;n:type:ShaderForge.SFN_OneMinus,id:5900,x:30908,y:32565,varname:node_5900,prsc:2|IN-8680-OUT;n:type:ShaderForge.SFN_RemapRangeAdvanced,id:7279,x:31243,y:32754,varname:node_7279,prsc:2|IN-5900-OUT,IMIN-2190-OUT,IMAX-2108-OUT,OMIN-5218-OUT,OMAX-6682-OUT;n:type:ShaderForge.SFN_Slider,id:7436,x:30286,y:32822,ptovrint:False,ptlb:Mix-kage,ptin:_Mixkage,varname:node_7436,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_OneMinus,id:2190,x:30655,y:32733,varname:node_2190,prsc:2|IN-7436-OUT;n:type:ShaderForge.SFN_Slider,id:2108,x:30286,y:32943,ptovrint:False,ptlb:Mix-diffuse,ptin:_Mixdiffuse,varname:node_2108,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0.5,max:1;n:type:ShaderForge.SFN_Vector1,id:5218,x:30364,y:33036,varname:node_5218,prsc:2,v1:1;n:type:ShaderForge.SFN_Tex2d,id:1500,x:30310,y:33206,ptovrint:False,ptlb:ShadowMask,ptin:_ShadowMask,varname:node_1500,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_OneMinus,id:312,x:30482,y:33206,varname:node_312,prsc:2|IN-1500-RGB;n:type:ShaderForge.SFN_Lerp,id:1006,x:31887,y:32409,varname:node_1006,prsc:2|A-2038-RGB,B-6189-OUT,T-9734-OUT;n:type:ShaderForge.SFN_Clamp01,id:5991,x:31436,y:32754,varname:node_5991,prsc:2|IN-7279-OUT;n:type:ShaderForge.SFN_Tex2d,id:2038,x:30631,y:31828,ptovrint:False,ptlb:MainTex,ptin:_MainTex,varname:node_2038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:8976,x:32447,y:32574,varname:node_8976,prsc:2|A-1006-OUT,B-4679-OUT;n:type:ShaderForge.SFN_Slider,id:5517,x:31826,y:32702,ptovrint:False,ptlb:AmbientLight,ptin:_AmbientLight,varname:node_5517,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:8;n:type:ShaderForge.SFN_Multiply,id:4679,x:32191,y:32727,varname:node_4679,prsc:2|A-5517-OUT,B-2285-RGB,C-2285-A;n:type:ShaderForge.SFN_ComponentMask,id:6682,x:30652,y:33206,varname:node_6682,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-312-OUT;n:type:ShaderForge.SFN_Multiply,id:6189,x:31236,y:32419,varname:node_6189,prsc:2|A-2038-RGB,B-2550-OUT,C-4034-RGB;n:type:ShaderForge.SFN_Slider,id:2550,x:30476,y:32255,ptovrint:False,ptlb:ShadowPower,ptin:_ShadowPower,varname:node_2550,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_Color,id:4034,x:30725,y:32359,ptovrint:False,ptlb:ShadowColor,ptin:_ShadowColor,varname:node_4034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ComponentMask,id:5454,x:32321,y:34159,varname:node_5454,prsc:2,cc1:0,cc2:-1,cc3:-1,cc4:-1|IN-9118-OUT;n:type:ShaderForge.SFN_Multiply,id:9118,x:31991,y:34166,varname:node_9118,prsc:2|A-233-OUT,B-5631-OUT;n:type:ShaderForge.SFN_Slider,id:233,x:31431,y:34138,ptovrint:False,ptlb:Line,ptin:_Line,varname:node_233,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:80;n:type:ShaderForge.SFN_Vector1,id:5631,x:31588,y:34227,varname:node_5631,prsc:2,v1:0.001;n:type:ShaderForge.SFN_Color,id:2285,x:31826,y:32798,ptovrint:False,ptlb:Lightcolor/Kd,ptin:_LightcolorKd,varname:node_2285,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Color,id:7968,x:33882,y:32853,ptovrint:False,ptlb:LineColor,ptin:_LineColor,varname:node_7968,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_NormalVector,id:2601,x:30257,y:30770,prsc:2,pt:False;n:type:ShaderForge.SFN_Power,id:6560,x:30985,y:30911,varname:node_6560,prsc:2|VAL-9637-OUT,EXP-9593-OUT;n:type:ShaderForge.SFN_Slider,id:9593,x:30239,y:31069,ptovrint:False,ptlb:SpecularPower,ptin:_SpecularPower,varname:node_9593,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:4,cur:32,max:128;n:type:ShaderForge.SFN_Color,id:6576,x:30287,y:31181,ptovrint:False,ptlb:SpecularColor/Ks,ptin:_SpecularColorKs,varname:node_6576,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:8745,x:31412,y:31027,varname:node_8745,prsc:2|A-6560-OUT,B-2879-R,C-6576-RGB,D-6576-A;n:type:ShaderForge.SFN_Add,id:894,x:33722,y:32283,varname:node_894,prsc:2|A-7032-OUT,B-3542-OUT,C-9092-OUT,D-1557-OUT,E-4869-OUT;n:type:ShaderForge.SFN_Cubemap,id:8262,x:31911,y:30457,ptovrint:False,ptlb:Cube,ptin:_Cube,varname:node_8262,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,pvfc:0;n:type:ShaderForge.SFN_Color,id:928,x:31889,y:30645,ptovrint:False,ptlb:ReflectColor/Kr,ptin:_ReflectColorKr,varname:node_928,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2167,x:32499,y:30700,varname:node_2167,prsc:2|A-8262-RGB,B-928-RGB,C-928-A,D-2879-G;n:type:ShaderForge.SFN_Dot,id:2231,x:30482,y:30700,varname:node_2231,prsc:2,dt:0|A-4919-OUT,B-2601-OUT;n:type:ShaderForge.SFN_Tex2d,id:2879,x:30790,y:31396,ptovrint:False,ptlb:Specular/Reflect/UV Mask,ptin:_SpecularReflectUVMask,cmnt:SpecularReflectUV Mask,varname:node_2879,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Tex2d,id:6038,x:33773,y:31385,ptovrint:False,ptlb:LightMap,ptin:_LightMap,varname:node_6038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:2,isnm:False|UVIN-5847-UVOUT;n:type:ShaderForge.SFN_Panner,id:5847,x:33641,y:31071,varname:node_5847,prsc:2,spu:0.1,spv:0.1|UVIN-9366-UVOUT,DIST-529-OUT;n:type:ShaderForge.SFN_TexCoord,id:9366,x:33365,y:30846,varname:node_9366,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Time,id:5907,x:32955,y:31211,varname:node_5907,prsc:2;n:type:ShaderForge.SFN_RemapRange,id:6624,x:33347,y:31389,varname:node_6624,prsc:2,frmn:0,frmx:1,tomn:1,tomx:10|IN-3039-OUT;n:type:ShaderForge.SFN_Divide,id:529,x:33434,y:31153,varname:node_529,prsc:2|A-5907-T,B-6624-OUT;n:type:ShaderForge.SFN_Slider,id:3039,x:32955,y:31450,ptovrint:False,ptlb:UV,ptin:_UV,varname:node_3039,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:1;n:type:ShaderForge.SFN_Multiply,id:5509,x:33716,y:31585,varname:node_5509,prsc:2|A-6038-RGB,B-2879-B;n:type:ShaderForge.SFN_Slider,id:4292,x:31371,y:33557,ptovrint:False,ptlb:RimSharpness,ptin:_RimSharpness,varname:node_4292,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:2,cur:2,max:10;n:type:ShaderForge.SFN_Multiply,id:7325,x:32007,y:33587,varname:node_7325,prsc:2|A-4800-OUT,B-7263-RGB;n:type:ShaderForge.SFN_Color,id:7263,x:31717,y:33748,ptovrint:False,ptlb:RimColor,ptin:_RimColor,varname:node_7263,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Clamp01,id:9637,x:30679,y:30700,varname:node_9637,prsc:2|IN-2231-OUT;n:type:ShaderForge.SFN_HalfVector,id:4919,x:30257,y:30653,varname:node_4919,prsc:2;n:type:ShaderForge.SFN_Fresnel,id:4800,x:31717,y:33537,varname:node_4800,prsc:2|EXP-4292-OUT;n:type:ShaderForge.SFN_Set,id:2193,x:34069,y:31624,varname:uvValue,prsc:2|IN-5509-OUT;n:type:ShaderForge.SFN_Get,id:3542,x:33202,y:32247,varname:node_3542,prsc:2|IN-2193-OUT;n:type:ShaderForge.SFN_Set,id:3427,x:32180,y:33587,varname:rimValue,prsc:2|IN-7325-OUT;n:type:ShaderForge.SFN_Get,id:1557,x:33202,y:32414,varname:node_1557,prsc:2|IN-3427-OUT;n:type:ShaderForge.SFN_Set,id:2562,x:32759,y:30673,varname:reflectValue,prsc:2|IN-2167-OUT;n:type:ShaderForge.SFN_Get,id:9092,x:33162,y:32332,varname:node_9092,prsc:2|IN-2562-OUT;n:type:ShaderForge.SFN_Set,id:7037,x:31592,y:31027,varname:specularValue,prsc:2|IN-8745-OUT;n:type:ShaderForge.SFN_Get,id:4869,x:33202,y:32489,varname:node_4869,prsc:2|IN-7037-OUT;n:type:ShaderForge.SFN_Set,id:6048,x:32652,y:32574,varname:diffuseValue,prsc:2|IN-8976-OUT;n:type:ShaderForge.SFN_Get,id:7032,x:33162,y:32178,varname:node_7032,prsc:2|IN-6048-OUT;n:type:ShaderForge.SFN_Set,id:8387,x:31617,y:32754,varname:tKage,prsc:2|IN-5991-OUT;n:type:ShaderForge.SFN_Get,id:9734,x:31546,y:32510,varname:node_9734,prsc:2|IN-8387-OUT;proporder:5517-2285-2038-2108-7436-1500-2550-4034-233-7968-2879-9593-6576-8262-928-6038-3039-4292-7263;pass:END;sub:END;*/

Shader "PJAQ/Character/ToonV3" {
    Properties {
        _AmbientLight ("AmbientLight", Range(0, 8)) = 1
        _LightcolorKd ("Lightcolor/Kd", Color) = (0.5,0.5,0.5,1)
        _MainTex ("MainTex", 2D) = "white" {}
        _Mixdiffuse ("Mix-diffuse", Range(0, 1)) = 0.5
        _Mixkage ("Mix-kage", Range(0, 1)) = 0.5
        _ShadowMask ("ShadowMask", 2D) = "white" {}
        _ShadowPower ("ShadowPower", Range(0, 1)) = 1
        _ShadowColor ("ShadowColor", Color) = (0.5,0.5,0.5,1)
        _Line ("Line", Range(0, 80)) = 0
        _LineColor ("LineColor", Color) = (0.5,0.5,0.5,1)
        _SpecularReflectUVMask ("Specular/Reflect/UV Mask", 2D) = "white" {}
        _SpecularPower ("SpecularPower", Range(4, 128)) = 32
        _SpecularColorKs ("SpecularColor/Ks", Color) = (0.5,0.5,0.5,1)
        _Cube ("Cube", Cube) = "_Skybox" {}
        _ReflectColorKr ("ReflectColor/Kr", Color) = (0.5,0.5,0.5,1)
        _LightMap ("LightMap", 2D) = "black" {}
        _UV ("UV", Range(0, 1)) = 0
        _RimSharpness ("RimSharpness", Range(2, 10)) = 2
        _RimColor ("RimColor", Color) = (0.5,0.5,0.5,1)
        _Hight ("Hight", Range(0, 5)) = 0
        _Offset ("Offset", Range(-2, 0)) = 0
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }
        Pass {
            Name "Outline"
            Tags {
            }
            Cull Front
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #include "UnityCG.cginc"
            #pragma fragmentoption ARB_precision_hint_fastest
            #pragma multi_compile_shadowcaster
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 n3ds wiiu 
            #pragma target 3.0
            uniform float _Line;
            uniform float4 _LineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal*(_Line*0.001).r,1) );
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(_LineColor.rgb,0);
            }
            ENDCG
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
            #include "AutoLight.cginc"
            #pragma multi_compile _ _SHADOW_ON
            #pragma multi_compile _ _SPECULAR_ON
            #pragma multi_compile _ _REFLECT_ON
            #pragma multi_compile _ _UV_ANIM_ON
            #pragma multi_compile _ _RIM_ON
            #pragma multi_compile_fwdbase_fullshadows
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 n3ds wiiu 
            #pragma target 3.0
            uniform float4 _TimeEditor;
            uniform float _Mixkage;
            uniform float _Mixdiffuse;
            uniform sampler2D _ShadowMask; uniform float4 _ShadowMask_ST;
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform float _AmbientLight;
            uniform float _ShadowPower;
            uniform float4 _ShadowColor;
            uniform float4 _LightcolorKd;
            uniform float _SpecularPower;
            uniform float4 _SpecularColorKs;
            uniform samplerCUBE _Cube;
            uniform float4 _ReflectColorKr;
            uniform sampler2D _SpecularReflectUVMask; uniform float4 _SpecularReflectUVMask_ST;
            uniform sampler2D _LightMap; uniform float4 _LightMap_ST;
            uniform float _UV;
            uniform float _RimSharpness;
            uniform float4 _RimColor;
            uniform float _Hight;
            uniform float _Offset;
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
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.uv0 = v.texcoord0;
                o.normalDir = UnityObjectToWorldNormal(v.normal);
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                o.posWorld = mul(unity_ObjectToWorld, v.vertex);
                o.pos = UnityObjectToClipPos( v.vertex );
                TRANSFER_VERTEX_TO_FRAGMENT(o)
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                float4 objPos = mul ( unity_ObjectToWorld, float4(0,0,0,1) );
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;
                float3 viewReflectDirection = reflect( -viewDirection, normalDirection );
                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);
////// Lighting:
////// Emissive:
                float3 diffuseValue = float3(0,0,0);
                float3 uvValue = float3(0,0,0);
                float3 reflectValue = float3(0,0,0);
                float3 rimValue = float3(0,0,0);
                float3 specularValue = float3(0,0,0);

                float4 _MainTex_var = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float4 _SpecularReflectUVMask_var = tex2D(_SpecularReflectUVMask,TRANSFORM_TEX(i.uv0, _SpecularReflectUVMask)); // SpecularReflectUV Mask

                #if _SHADOW_ON
                float node_2190 = (1.0 - _Mixkage);
                float node_5218 = 1.0;
                float4 _ShadowMask_var = tex2D(_ShadowMask,TRANSFORM_TEX(i.uv0, _ShadowMask));
                float tKage = saturate((node_5218 + ( ((1.0 - (dot(normalDirection,lightDirection)*0.5+0.5)) - node_2190) * ((1.0 - _ShadowMask_var.rgb).r - node_5218) ) / (_Mixdiffuse - node_2190)));
                diffuseValue = (lerp(_MainTex_var.rgb,(_MainTex_var.rgb*_ShadowPower*_ShadowColor.rgb),tKage)*(_AmbientLight*_LightcolorKd.rgb*_LightcolorKd.a));
                #else
                diffuseValue = _MainTex_var.rgb*(_AmbientLight*_LightcolorKd.rgb*_LightcolorKd.a);
                #endif

                #if _UV_ANIM_ON
                float4 node_5907 = _Time + _TimeEditor;
                float2 node_5847 = (i.uv0+(node_5907.g/(_UV*9.0+1.0))*float2(0.1,0.1));
                float4 _LightMap_var = tex2D(_LightMap,TRANSFORM_TEX(node_5847, _LightMap));
                uvValue = (_LightMap_var.rgb*_SpecularReflectUVMask_var.b);
                #endif

                #if _REFLECT_ON
                reflectValue = (texCUBE(_Cube,viewReflectDirection).rgb*_ReflectColorKr.rgb*_ReflectColorKr.a*_SpecularReflectUVMask_var.g);
                #endif

                #if _RIM_ON
		float node_9381 = 0.0;
                float normalizedHight = saturate((node_9381 + ( ((i.posWorld.g-objPos.g) - _Offset) * (1.0 - node_9381) ) / ((_Offset+_Hight) - _Offset)));
                rimValue = (pow(1.0-max(0,dot(normalDirection, viewDirection)),_RimSharpness)*_RimColor.rgb*normalizedHight);
                #endif

                #if _SPECULAR_ON
                specularValue = (pow(saturate(dot(halfDirection,i.normalDir)),_SpecularPower)*_SpecularReflectUVMask_var.r*_SpecularColorKs.rgb*_SpecularColorKs.a);
                #endif

                float3 emissive = (diffuseValue+uvValue+reflectValue+rimValue+specularValue);
                float3 finalColor = emissive;
                return fixed4(finalColor,1);
            }
            ENDCG
        }
    }
    FallBack "Diffuse"
    //CustomEditor "ShaderForgeMaterialInspector"
    CustomEditor "AQ.ToonShaderGUI"
}
