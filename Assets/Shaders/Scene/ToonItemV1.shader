Shader "PJAQ/Scene/ToonItemV1" {
    Properties {
        //DIFFUSE
        _MainTex ("Main Texture (RGB)", 2D) = "white" {}
        [NoScaleOffset] _MaskTex ("Mask Texture Spec/Refl(R) Emission(G) UV(B)", 2D) = "white" {}

        //SHADOW
        _HColor ("Highlight Color", Color) = (1,1,1,1)
        _SColor ("Shadow Color", Color) = (0.5,0.5,0.5,1)

        //SHADOW RAMP
        [NoScaleOffset] _Ramp ("#RAMPT# Ramp (RGB)", 2D) = "gray" {}
        _RampThreshold ("#RAMPF# RampThreshold", Range(0, 1)) = 0.8
        _RampSmooth ("#RAMPF# RampSmooth", Range(0, 1)) = 0.1

        //RIM LIGHT
        _RimColor ("#RIM# RimColor", Color) = (0.8,0.8,0.8,0.6)
        _RimPower ("#RIM# RimPower", Range(0.6, 36)) = 8
        _RimIntensity ("#RIM# RimIntensity", Range(0, 100)) = 1

        //EMISSION
        _Emission ("#EMISSION# Emission", Color) = (0.5,0.5,0.5,1)

        //UV
        _LightMap ("#UV# LightMap", 2D) = "black" {}
        _XOffset ("#UV# XOffset", Range(0, 1)) = 0
        _YOffset ("#UV# YOffset", Range(0, 1)) = 0

        //OUTLINE
        _Outline ("#OUTLINE# Outline", Range(0, 1)) = 0.5
        _OutlineColor ("#OUTLINE# OutlineColor", Color) = (0,0,0,1)
    }
    SubShader {
        Tags {
            "RenderType"="Opaque"
        }

        LOD 600

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
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform float _Outline;
            uniform float4 _OutlineColor;
            struct VertexInput {
                float4 vertex : POSITION;
                float3 normal : NORMAL;
            };
            struct VertexOutput {
                float4 pos : SV_POSITION;
                UNITY_FOG_COORDS(0)
            };
            VertexOutput vert (VertexInput v) {
                VertexOutput o = (VertexOutput)0;
                o.pos = UnityObjectToClipPos( float4(v.vertex.xyz + v.normal * _Outline * 0.01,1) );
                UNITY_TRANSFER_FOG(o,o.pos);
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                return fixed4(_OutlineColor.rgb,1);
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
            #include "Lighting.cginc"
            #pragma multi_compile _ _RAMPTEXT_ON
            #pragma multi_compile _ _RIM_ON
            #pragma multi_compile _ _EMISSION_ON
            #pragma multi_compile _ _UV_ANIM_ON
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MaskTex;

            uniform float4 _HColor;
            uniform float4 _SColor;
#if _RAMPTEXT_ON
            uniform sampler2D _Ramp;
#else
            uniform float _RampThreshold;
            uniform float _RampSmooth;
#endif
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float _RimIntensity;
#if _EMISSION_ON
            uniform float4 _Emission;
#endif
#if _UV_ANIM_ON
            uniform sampler2D _LightMap; uniform float4 _LightMap_ST;
            uniform float _XOffset;
            uniform float _YOffset;
#endif
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
                //float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );

                UNITY_TRANSFER_FOG(o,o.pos);
//#if _LIGHT_ON
                TRANSFER_VERTEX_TO_FRAGMENT(o)
//#endif
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;

                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);

                float4 mask = tex2D(_MaskTex, i.uv0);
                //fixed ndl = max(0, dot(normalDirection,lightDirection));
                //light wrap
                fixed ndl = max(0, (dot(normalDirection,lightDirection)*0.5+0.5));

////// Lighting:
                float3 lightColor = float3(1,1,1);//_LightColor0.rgb;
                //float attenuation = LIGHT_ATTENUATION(i);
                //UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld)
                float attenuation = 1.0;
                float3 attenColor = attenuation * lightColor.rgb;
////// Emissive:
#if _EMISSION_ON
                //fixed3 emission = tex2D(_EmissionTex,TRANSFORM_TEX(i.uv0, _EmissionTex)) * _Emission.rgb * _Emission.a;
                fixed3 emission = _Emission.rgb * _Emission.a * mask.g;
#else
                fixed3 emission = fixed3(0,0,0);
#endif

#if _UV_ANIM_ON
                //fixed2 uv = (i.uv0+(_Time.g*_XOffset)*fixed2(1,0))+(_Time.g*_YOffset)*fixed2(0,1);
                fixed2 uv = i.uv0 + fixed2(_Time.g * _XOffset, _Time.g * _YOffset);
                float4 light = tex2D(_LightMap,TRANSFORM_TEX(uv, _LightMap));
                emission += light.rgb * light.a * mask.b;
#endif
#if _RIM_ON
                float rim = 1.0 - saturate(dot(viewDirection,normalDirection));
                emission += _RimColor.rgb * pow(rim, _RimPower) * _RimIntensity;
#endif
//////// Diffuse:
                fixed3 SColor = lerp(_HColor.rgb,_SColor.rgb,_SColor.a);
                fixed3 HColor = _HColor.rgb;

#if _RAMPTEXT_ON
                fixed3 ramp = tex2D(_Ramp, fixed2(ndl,ndl));
#else
                fixed3 ramp = smoothstep( (_RampThreshold-(_RampSmooth*0.5)), (_RampThreshold+(_RampSmooth*0.5)), ndl );
#endif
                ramp *= attenuation;
                ramp = lerp(SColor.rgb,HColor.rgb,ramp);

                fixed3 directDiffuse = lightColor * ramp;

                fixed3 indirectDiffuse = float3(0,0,0);

                // Ambient Light
                //indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb;

                float4 main = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = main.rgb;

                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;

                fixed3 directSpecular = fixed3(0,0,0);
                fixed3 indirectSpecular = fixed3(0,0,0);

                fixed gloss = mask.r;
                float3 specular = (directSpecular + indirectSpecular) * gloss;
/// Final Color:
                float3 finalColor = emission + diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }

    SubShader {
        Tags {
            "RenderType"="Opaque"
        }

        LOD 300

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
            #include "Lighting.cginc"
            #pragma multi_compile _ _RAMPTEXT_ON
            #pragma multi_compile _ _RIM_ON
            #pragma multi_compile _ _EMISSION_ON
            #pragma multi_compile _ _UV_ANIM_ON
            #pragma multi_compile_fwdbase_fullshadows
            #pragma multi_compile_fog
            #pragma only_renderers d3d9 d3d11 glcore gles gles3 
            #pragma target 3.0
            uniform sampler2D _MainTex; uniform float4 _MainTex_ST;
            uniform sampler2D _MaskTex;

            uniform float4 _HColor;
            uniform float4 _SColor;
#if _RAMPTEXT_ON
            uniform sampler2D _Ramp;
#else
            uniform float _RampThreshold;
            uniform float _RampSmooth;
#endif
            uniform float4 _RimColor;
            uniform float _RimPower;
            uniform float _RimIntensity;
#if _EMISSION_ON
            uniform float4 _Emission;
#endif
#if _UV_ANIM_ON
            uniform sampler2D _LightMap; uniform float4 _LightMap_ST;
            uniform float _XOffset;
            uniform float _YOffset;
#endif
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
                //float3 lightColor = _LightColor0.rgb;
                o.pos = UnityObjectToClipPos( v.vertex );

                UNITY_TRANSFER_FOG(o,o.pos);
//#if _LIGHT_ON
                TRANSFER_VERTEX_TO_FRAGMENT(o)
//#endif
                return o;
            }
            float4 frag(VertexOutput i) : COLOR {
                i.normalDir = normalize(i.normalDir);
                float3 viewDirection = normalize(_WorldSpaceCameraPos.xyz - i.posWorld.xyz);
                float3 normalDirection = i.normalDir;

                float3 lightDirection = normalize(_WorldSpaceLightPos0.xyz);
                float3 halfDirection = normalize(viewDirection+lightDirection);

                float4 mask = tex2D(_MaskTex, i.uv0);
                //fixed ndl = max(0, dot(normalDirection,lightDirection));
                //light wrap
                fixed ndl = max(0, (dot(normalDirection,lightDirection)*0.5+0.5));

////// Lighting:
                float3 lightColor = float3(1,1,1);//_LightColor0.rgb;
                //float attenuation = LIGHT_ATTENUATION(i);
                //UNITY_LIGHT_ATTENUATION(attenuation, i, i.posWorld)
                float attenuation = 1.0;
                float3 attenColor = attenuation * lightColor.rgb;
////// Emissive:
#if _EMISSION_ON
                //fixed3 emission = tex2D(_EmissionTex,TRANSFORM_TEX(i.uv0, _EmissionTex)) * _Emission.rgb * _Emission.a;
                fixed3 emission = _Emission.rgb * _Emission.a * mask.g;
#else
                fixed3 emission = fixed3(0,0,0);
#endif

#if _UV_ANIM_ON
                //fixed2 uv = (i.uv0+(_Time.g*_XOffset)*fixed2(1,0))+(_Time.g*_YOffset)*fixed2(0,1);
                fixed2 uv = i.uv0 + fixed2(_Time.g * _XOffset, _Time.g * _YOffset);
                float4 light = tex2D(_LightMap,TRANSFORM_TEX(uv, _LightMap));
                emission += light.rgb * light.a * mask.b;
#endif
#if _RIM_ON
                float rim = 1.0 - saturate(dot(viewDirection,normalDirection));
                emission += _RimColor.rgb * pow(rim, _RimPower) * _RimIntensity;
#endif
//////// Diffuse:
                fixed3 SColor = lerp(_HColor.rgb,_SColor.rgb,_SColor.a);
                fixed3 HColor = _HColor.rgb;

#if _RAMPTEXT_ON
                fixed3 ramp = tex2D(_Ramp, fixed2(ndl,ndl));
#else
                fixed3 ramp = smoothstep( (_RampThreshold-(_RampSmooth*0.5)), (_RampThreshold+(_RampSmooth*0.5)), ndl );
#endif
                ramp *= attenuation;
                ramp = lerp(SColor.rgb,HColor.rgb,ramp);

                fixed3 directDiffuse = lightColor * ramp;

                fixed3 indirectDiffuse = float3(0,0,0);

                // Ambient Light
                //indirectDiffuse += UNITY_LIGHTMODEL_AMBIENT.rgb;

                float4 main = tex2D(_MainTex,TRANSFORM_TEX(i.uv0, _MainTex));
                float3 diffuseColor = main.rgb;

                float3 diffuse = (directDiffuse + indirectDiffuse) * diffuseColor;

                fixed3 directSpecular = fixed3(0,0,0);
                fixed3 indirectSpecular = fixed3(0,0,0);

                fixed gloss = mask.r;
                float3 specular = (directSpecular + indirectSpecular) * gloss;
/// Final Color:
                float3 finalColor = emission + diffuse + specular;
                fixed4 finalRGBA = fixed4(finalColor,1);
                UNITY_APPLY_FOG(i.fogCoord, finalRGBA);
                return finalRGBA;
            }
            ENDCG
        }
    }

    FallBack "Diffuse"
    CustomEditor "AQ.ToonItemShaderGUI"
}
