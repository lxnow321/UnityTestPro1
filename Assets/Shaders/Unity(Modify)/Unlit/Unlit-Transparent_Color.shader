// Unlit shader. Simplest possible textured shader.
// - no lighting
// - no lightmap support
// - no per-material color

Shader "PJAQ/Unity(Modify)/Unlit/Transparent_Color" {
	Properties {
		_Color ("Main Color", Color) = (1,1,1,1)
		_MainTex ("Base (RGB)", 2D) = "white" {}
	}

	SubShader {
		Tags { "Queue"="Transparent" "IgnoreProjector"="True"  }
		LOD 100
		
		Blend SrcAlpha OneMinusSrcAlpha
		
		Pass {
			Lighting Off
			SetTexture [_MainTex] { 
				constantColor [_Color]
				combine texture  * constant
			} 
		}
	}
}