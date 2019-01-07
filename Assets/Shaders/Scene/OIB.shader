Shader "PJAQ/Scene/Order_Independent_Blending" {

	Properties {
		_MainTex ("Main Tex", 2D) = "white" {}
		_Color ("Main Color", Color) = (1,1,1,1)
		//_Alpha("Alpha",Range(0,1)) = 1
		_CutOff("Cut Off",Range(0,1)) = 0.5
	}

   SubShader {
      Tags { "Queue" = "Transparent" } 

      Pass { 
		Cull Back 
		ZWrite On 
		ZTest Less
		ColorMask 0

		CGPROGRAM 

		#pragma vertex vert 
		#pragma fragment frag

		sampler2D _MainTex;
		fixed4 _Color;
		//float _Alpha;
		float _CutOff;
 
		struct a2v {
			float4 vertex : POSITION;
			float4 texcoord : TEXCOORD0;
		};

		struct v2f {
			float4 pos : SV_POSITION;
			float2 uv : TEXCOORD0;
		};


		v2f vert(a2v v) {
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			o.uv = v.texcoord;			
			return o;
		}

		fixed4 frag(v2f i) : SV_Target {
			fixed4 col = tex2D(_MainTex, i.uv);
			clip(col.a - _CutOff);
			return col;
		}
 
         ENDCG  
      }

      Pass { 
		Cull Back // draw front and back faces
		ZWrite Off // don't write to depth buffer 
		// in order not to occlude other objects
		ZTest LEqual
		Blend SrcAlpha OneMinusSrcAlpha // additive blending to add colors

		CGPROGRAM 

		#pragma vertex vert 
		#pragma fragment frag

		sampler2D _MainTex;
		//float _Alpha;
		fixed4 _Color;

		struct a2v {
			float4 vertex : POSITION;
			float4 texcoord : TEXCOORD0;
		};

		struct v2f {
			float4 pos : SV_POSITION;
			float2 uv : TEXCOORD0;
		};

		v2f vert(a2v v) {
			v2f o;
			o.pos = UnityObjectToClipPos(v.vertex);
			o.uv = v.texcoord;			
			return o;
		}

		fixed4 frag(v2f i) : SV_Target {
			fixed4 col = tex2D(_MainTex, i.uv);
			//col.a *= _Alpha;
			col.a *= _Color.a;
			return col;
		}
         ENDCG  
      }
   }
}