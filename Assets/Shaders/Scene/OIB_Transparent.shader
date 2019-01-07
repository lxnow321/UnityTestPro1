Shader "PJAQ/Scene/Order_Independent_Blending_Transparent" {

	Properties {
		_MainTex ("Main Tex", 2D) = "white" {}
		_Alpha("Alpha",Range(0,1)) = 1
	}

   SubShader {
      Tags { "Queue" = "Transparent+10" } 

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
		float _Alpha;

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
			col.a *= _Alpha;
			return col;
		}
         ENDCG  
      }
   }
}