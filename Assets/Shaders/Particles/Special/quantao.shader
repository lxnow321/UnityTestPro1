// Shader created with Shader Forge v1.38 
// Shader Forge (c) Freya Holmer - http://www.acegikmo.com/shaderforge/
// Note: Manually altering this data may prevent you from opening it in Shader Forge
/*SF_DATA;ver:1.38;sub:START;pass:START;ps:flbk:,iptp:0,cusa:False,bamd:0,cgin:,lico:1,lgpr:1,limd:0,spmd:1,trmd:0,grmd:0,uamb:True,mssp:True,bkdf:False,hqlp:False,rprd:False,enco:False,rmgx:True,imps:True,rpth:0,vtps:0,hqsc:True,nrmq:1,nrsp:0,vomd:0,spxs:False,tesm:0,olmd:1,culm:0,bsrc:0,bdst:7,dpts:2,wrdp:False,dith:0,atcv:False,rfrpo:True,rfrpn:Refraction,coma:15,ufog:True,aust:True,igpj:True,qofs:0,qpre:3,rntp:2,fgom:False,fgoc:False,fgod:False,fgor:False,fgmd:0,fgcr:0.5,fgcg:0.5,fgcb:0.5,fgca:1,fgde:0.01,fgrn:0,fgrf:300,stcl:False,atwp:False,stva:128,stmr:255,stmw:255,stcp:6,stps:0,stfa:0,stfz:0,ofsf:0,ofsu:0,f2p0:False,fnsp:True,fnfb:False,fsmp:False;n:type:ShaderForge.SFN_Final,id:9361,x:34904,y:32553,varname:node_9361,prsc:2|emission-6786-OUT,custl-4693-OUT;n:type:ShaderForge.SFN_Tex2d,id:371,x:33140,y:31099,varname:node_371,prsc:2,ntxv:0,isnm:False|TEX-9641-TEX;n:type:ShaderForge.SFN_Time,id:438,x:32080,y:33129,varname:node_438,prsc:2;n:type:ShaderForge.SFN_ValueProperty,id:1979,x:32080,y:33283,ptovrint:False,ptlb:V speed_light,ptin:_Vspeed_light,varname:_Vspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1127,x:32080,y:33036,ptovrint:False,ptlb:U speed_light,ptin:_Uspeed_light,varname:_Uspeed_copy,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_Multiply,id:6572,x:32328,y:33036,varname:node_6572,prsc:2|A-1127-OUT,B-438-T;n:type:ShaderForge.SFN_Append,id:2007,x:32513,y:33134,varname:node_2007,prsc:2|A-6572-OUT,B-2190-OUT;n:type:ShaderForge.SFN_Multiply,id:2190,x:32328,y:33223,varname:node_2190,prsc:2|A-438-T,B-1979-OUT;n:type:ShaderForge.SFN_TexCoord,id:3818,x:32513,y:32981,varname:node_3818,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Add,id:8191,x:32795,y:33086,varname:node_8191,prsc:2|A-3818-UVOUT,B-2007-OUT;n:type:ShaderForge.SFN_Rotator,id:1272,x:33083,y:33078,varname:node_1272,prsc:2|UVIN-8191-OUT,ANG-6291-OUT;n:type:ShaderForge.SFN_Slider,id:7038,x:32450,y:33383,ptovrint:False,ptlb:jiaodu,ptin:_jiaodu,varname:node_7038,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:0,max:360;n:type:ShaderForge.SFN_Pi,id:5150,x:32594,y:33564,varname:node_5150,prsc:2;n:type:ShaderForge.SFN_Multiply,id:5838,x:32819,y:33384,varname:node_5838,prsc:2|A-7038-OUT,B-5150-OUT;n:type:ShaderForge.SFN_Divide,id:6291,x:33107,y:33376,varname:node_6291,prsc:2|A-5838-OUT,B-2574-OUT;n:type:ShaderForge.SFN_Vector1,id:2574,x:33006,y:33567,varname:node_2574,prsc:2,v1:180;n:type:ShaderForge.SFN_Tex2d,id:2381,x:33464,y:32240,varname:node_2381,prsc:2,ntxv:0,isnm:False|UVIN-1272-UVOUT,TEX-6702-TEX;n:type:ShaderForge.SFN_Multiply,id:5215,x:33517,y:33053,varname:node_5215,prsc:2|A-9781-OUT,B-2381-RGB;n:type:ShaderForge.SFN_Slider,id:9781,x:33245,y:32850,ptovrint:False,ptlb:node_9781,ptin:_node_9781,varname:node_9781,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:5;n:type:ShaderForge.SFN_Tex2d,id:3086,x:33517,y:33247,ptovrint:False,ptlb:zhezhao,ptin:_zhezhao,varname:node_3086,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Multiply,id:9604,x:33774,y:33109,varname:node_9604,prsc:2|A-5215-OUT,B-3086-RGB;n:type:ShaderForge.SFN_Color,id:6366,x:33731,y:33317,ptovrint:False,ptlb:node_6366,ptin:_node_6366,varname:node_6366,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:3886,x:33957,y:33138,varname:node_3886,prsc:2|A-9604-OUT,B-6366-RGB;n:type:ShaderForge.SFN_Add,id:6786,x:34535,y:32163,varname:node_6786,prsc:2|A-2643-OUT,B-3886-OUT,C-8729-OUT;n:type:ShaderForge.SFN_Fresnel,id:1191,x:33009,y:30833,varname:node_1191,prsc:2|NRM-9871-OUT;n:type:ShaderForge.SFN_Multiply,id:2645,x:33283,y:30860,varname:node_2645,prsc:2|A-1191-OUT,B-2168-RGB;n:type:ShaderForge.SFN_Tex2d,id:2168,x:32717,y:31362,varname:node_2168,prsc:2,ntxv:0,isnm:False|TEX-6702-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:6702,x:32342,y:31376,ptovrint:False,ptlb:node_6702,ptin:_node_6702,varname:node_6702,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Add,id:6344,x:33760,y:30960,varname:node_6344,prsc:2|A-2645-OUT,B-7475-OUT;n:type:ShaderForge.SFN_Tex2d,id:7464,x:33468,y:31632,varname:node_7464,prsc:2,ntxv:0,isnm:False|TEX-9641-TEX;n:type:ShaderForge.SFN_Tex2dAsset,id:9641,x:32913,y:31584,ptovrint:False,ptlb:node_9641,ptin:_node_9641,varname:node_9641,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,ntxv:0,isnm:False;n:type:ShaderForge.SFN_Color,id:8276,x:33454,y:31755,ptovrint:False,ptlb:node_8276,ptin:_node_8276,varname:node_8276,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:2643,x:34026,y:31250,varname:node_2643,prsc:2|A-6344-OUT,B-257-OUT;n:type:ShaderForge.SFN_Multiply,id:8729,x:33821,y:31773,varname:node_8729,prsc:2|A-7464-RGB,B-8276-RGB,C-5751-OUT,D-9268-OUT;n:type:ShaderForge.SFN_Vector1,id:8515,x:33613,y:31551,varname:node_8515,prsc:2,v1:2;n:type:ShaderForge.SFN_Multiply,id:257,x:33740,y:31326,varname:node_257,prsc:2|A-1316-RGB,B-8515-OUT;n:type:ShaderForge.SFN_Fresnel,id:2644,x:34530,y:31692,varname:node_2644,prsc:2|EXP-6713-OUT;n:type:ShaderForge.SFN_Multiply,id:9356,x:34535,y:31358,varname:node_9356,prsc:2|A-4562-RGB,B-2644-OUT,C-5525-OUT;n:type:ShaderForge.SFN_Color,id:4562,x:34335,y:31253,ptovrint:False,ptlb:node_4562,ptin:_node_4562,varname:node_4562,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_ValueProperty,id:6713,x:34400,y:31800,ptovrint:False,ptlb:node_6713,ptin:_node_6713,varname:node_6713,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_ValueProperty,id:5525,x:34566,y:31828,ptovrint:False,ptlb:node_5525,ptin:_node_5525,varname:node_5525,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_VertexColor,id:1316,x:33540,y:31382,varname:node_1316,prsc:2;n:type:ShaderForge.SFN_TexCoord,id:6008,x:35439,y:33102,varname:node_6008,prsc:2,uv:0,uaff:False;n:type:ShaderForge.SFN_Tex2d,id:2270,x:35826,y:32843,ptovrint:False,ptlb:Tortuosity,ptin:_Tortuosity,varname:node_8522,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:d0373a68c5d63f74dbd9cf2582a3c75e,ntxv:0,isnm:False|UVIN-9490-OUT;n:type:ShaderForge.SFN_Append,id:4245,x:36029,y:32855,varname:node_4245,prsc:2|A-2270-R,B-2270-R;n:type:ShaderForge.SFN_Add,id:2383,x:36216,y:33089,varname:node_2383,prsc:2|A-6008-UVOUT,B-8185-OUT;n:type:ShaderForge.SFN_Tex2d,id:8018,x:36478,y:32981,ptovrint:False,ptlb:Texture,ptin:_Texture,varname:node_6296,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,tex:613da7b63bfaf9f479165d707b1d90e0,ntxv:0,isnm:False|UVIN-2383-OUT;n:type:ShaderForge.SFN_Multiply,id:8185,x:35867,y:33177,varname:node_8185,prsc:2|A-4245-OUT,B-6795-OUT;n:type:ShaderForge.SFN_Add,id:9490,x:35649,y:32843,varname:node_9490,prsc:2|A-6008-UVOUT,B-4027-OUT;n:type:ShaderForge.SFN_ValueProperty,id:6795,x:35632,y:33188,ptovrint:False,ptlb:Intensity,ptin:_Intensity,varname:node_590,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0.05;n:type:ShaderForge.SFN_ValueProperty,id:1158,x:35213,y:32605,ptovrint:False,ptlb:U_Seep,ptin:_U_Seep,varname:node_7974,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:0;n:type:ShaderForge.SFN_ValueProperty,id:1402,x:35247,y:32837,ptovrint:False,ptlb:V_Seep,ptin:_V_Seep,varname:node_7782,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,v1:1;n:type:ShaderForge.SFN_Time,id:5411,x:35110,y:32693,varname:node_5411,prsc:2;n:type:ShaderForge.SFN_Multiply,id:566,x:35456,y:32661,varname:node_566,prsc:2|A-1158-OUT,B-5411-T;n:type:ShaderForge.SFN_Multiply,id:436,x:35441,y:32784,varname:node_436,prsc:2|A-5411-T,B-1402-OUT;n:type:ShaderForge.SFN_Append,id:4027,x:35625,y:32689,varname:node_4027,prsc:2|A-566-OUT,B-436-OUT;n:type:ShaderForge.SFN_Color,id:1344,x:36445,y:33223,ptovrint:False,ptlb:node_1344,ptin:_node_1344,varname:node_1344,prsc:2,glob:False,taghide:False,taghdr:True,tagprd:False,tagnsco:False,tagnrm:False,c1:0.5,c2:0.5,c3:0.5,c4:1;n:type:ShaderForge.SFN_Multiply,id:4693,x:36878,y:33097,varname:node_4693,prsc:2|A-8018-RGB,B-1344-RGB;n:type:ShaderForge.SFN_Multiply,id:7475,x:33579,y:31080,varname:node_7475,prsc:2|A-371-RGB,B-4894-OUT;n:type:ShaderForge.SFN_NormalVector,id:9871,x:32808,y:30875,prsc:2,pt:False;n:type:ShaderForge.SFN_VertexColor,id:4467,x:33499,y:31940,varname:node_4467,prsc:2;n:type:ShaderForge.SFN_Slider,id:4034,x:33442,y:32126,ptovrint:False,ptlb:node_4034,ptin:_node_4034,varname:node_4034,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:6.495407,max:10;n:type:ShaderForge.SFN_Multiply,id:9268,x:33821,y:31955,varname:node_9268,prsc:2|A-4467-RGB,B-4034-OUT;n:type:ShaderForge.SFN_Slider,id:4894,x:33140,y:31281,ptovrint:False,ptlb:node_4894,ptin:_node_4894,varname:node_4894,prsc:2,glob:False,taghide:False,taghdr:False,tagprd:False,tagnsco:False,tagnrm:False,min:0,cur:1,max:1;n:type:ShaderForge.SFN_OneMinus,id:5751,x:34014,y:31571,varname:node_5751,prsc:2|IN-9356-OUT;proporder:1979-1127-7038-9781-6366-3086-6702-9641-8276-4562-6713-5525-2270-8018-6795-1158-1402-1344-4034-4894;pass:END;sub:END;*/

Shader "PJAQ/Particles/Special/QuanTao" {
    Properties {
        _Vspeed_light ("V speed_light", Float ) = 0
        _Uspeed_light ("U speed_light", Float ) = 0
        _jiaodu ("jiaodu", Range(0, 360)) = 0
        _node_9781 ("node_9781", Range(0, 5)) = 1
        _node_6366 ("node_6366", Color) = (0.5,0.5,0.5,1)
        _zhezhao ("zhezhao", 2D) = "white" {}
        _node_6702 ("node_6702", 2D) = "white" {}
        _node_9641 ("node_9641", 2D) = "white" {}
        [HDR]_node_8276 ("node_8276", Color) = (0.5,0.5,0.5,1)
        [HDR]_node_4562 ("node_4562", Color) = (0.5,0.5,0.5,1)
        _node_6713 ("node_6713", Float ) = 1
        _node_5525 ("node_5525", Float ) = 1
        _Tortuosity ("Tortuosity", 2D) = "white" {}
        _Texture ("Texture", 2D) = "white" {}
        _Intensity ("Intensity", Float ) = 0.05
        _U_Seep ("U_Seep", Float ) = 0
        _V_Seep ("V_Seep", Float ) = 1
        [HDR]_node_1344 ("node_1344", Color) = (0.5,0.5,0.5,1)
        _node_4034 ("node_4034", Range(0, 10)) = 6.495407
        _node_4894 ("node_4894", Range(0, 1)) = 1
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
            Blend One OneMinusSrcAlpha
            ZWrite Off
            
            CGPROGRAM
            #pragma vertex vert
            #pragma fragment frag
            #define UNITY_PASS_FORWARDBASE
            #include "UnityCG.cginc"
            #pragma multi_compile_fwdbase
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 metal 
            #pragma target 3.0
            uniform float _Vspeed_light;
            uniform float _Uspeed_light;
            uniform float _jiaodu;
            uniform float _node_9781;
            uniform sampler2D _zhezhao; uniform float4 _zhezhao_ST;
            uniform float4 _node_6366;
            uniform sampler2D _node_6702; uniform float4 _node_6702_ST;
            uniform sampler2D _node_9641; uniform float4 _node_9641_ST;
            uniform float4 _node_8276;
            uniform float4 _node_4562;
            uniform float _node_6713;
            uniform float _node_5525;
            uniform sampler2D _Tortuosity; uniform float4 _Tortuosity_ST;
            uniform sampler2D _Texture; uniform float4 _Texture_ST;
            uniform float _Intensity;
            uniform float _U_Seep;
            uniform float _V_Seep;
            uniform float4 _node_1344;
            uniform float _node_4034;
            uniform float _node_4894;
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
////// Lighting:
////// Emissive:
                float4 node_2168 = tex2D(_node_6702,TRANSFORM_TEX(i.uv0, _node_6702));
                float4 node_371 = tex2D(_node_9641,TRANSFORM_TEX(i.uv0, _node_9641));
                float node_1272_ang = ((_jiaodu*3.141592654)/180.0);
                float node_1272_spd = 1.0;
                float node_1272_cos = cos(node_1272_spd*node_1272_ang);
                float node_1272_sin = sin(node_1272_spd*node_1272_ang);
                float2 node_1272_piv = float2(0.5,0.5);
                float4 node_438 = _Time;
                float2 node_1272 = (mul((i.uv0+float2((_Uspeed_light*node_438.g),(node_438.g*_Vspeed_light)))-node_1272_piv,float2x2( node_1272_cos, -node_1272_sin, node_1272_sin, node_1272_cos))+node_1272_piv);
                float4 node_2381 = tex2D(_node_6702,TRANSFORM_TEX(node_1272, _node_6702));
                float4 _zhezhao_var = tex2D(_zhezhao,TRANSFORM_TEX(i.uv0, _zhezhao));
                float4 node_7464 = tex2D(_node_9641,TRANSFORM_TEX(i.uv0, _node_9641));
                float3 emissive = (((((1.0-max(0,dot(i.normalDir, viewDirection)))*node_2168.rgb)+(node_371.rgb*_node_4894))*(i.vertexColor.rgb*2.0))+(((_node_9781*node_2381.rgb)*_zhezhao_var.rgb)*_node_6366.rgb)+(node_7464.rgb*_node_8276.rgb*(1.0 - (_node_4562.rgb*pow(1.0-max(0,dot(normalDirection, viewDirection)),_node_6713)*_node_5525))*(i.vertexColor.rgb*_node_4034)));
                float4 node_5411 = _Time;
                float2 node_9490 = (i.uv0+float2((_U_Seep*node_5411.g),(node_5411.g*_V_Seep)));
                float4 _Tortuosity_var = tex2D(_Tortuosity,TRANSFORM_TEX(node_9490, _Tortuosity));
                float2 node_2383 = (i.uv0+(float2(_Tortuosity_var.r,_Tortuosity_var.r)*_Intensity));
                float4 _Texture_var = tex2D(_Texture,TRANSFORM_TEX(node_2383, _Texture));
                float3 finalColor = emissive + (_Texture_var.rgb*_node_1344.rgb);
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
