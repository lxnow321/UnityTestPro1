// using UnityEngine;
// using UnityEngine.Playables;
// using UnityEngine.Animations;

// [RequireComponent(typeof(Animator))]
// public class PlayAnimationSample : MonoBehaviour
// {
//     public AnimationClip clip;
//     PlayableGraph playableGraph;

//     void Start()
//     {
//         playableGraph = PlayableGraph.Create();
//         playableGraph.SetTimeUpdateMode(DirectorUpdateMode.GameTime);
//         var playableOutput = AnimationPlayableOutput.Create(playableGraph, "Animation", GetComponent<Animator>());
//         var clipPlayable = AnimationClipPlayable.Create(playableGraph, clip);
//         playableOutput.SetSourcePlayable(clipPlayable);

//         // AnimationPlayableUtilities.PlayClip(GetComponent<Animator>(), clip, out playableGraph);

//         playableGraph.Play();
//     }

//     void OnEnable()
//     {

//     }

//     void OnDisable()
//     {
//         playableGraph.Destroy();
//     }
// }


using UnityEngine;

using UnityEngine.Playables;

using UnityEngine.Animations;

[RequireComponent(typeof(Animator))]

public class PlayAnimationSample : MonoBehaviour

{

    public AnimationClip clip;

    PlayableGraph playableGraph;

    void Start()

    {

        playableGraph = PlayableGraph.Create();

        playableGraph.SetTimeUpdateMode(DirectorUpdateMode.GameTime);

        var playableOutput = AnimationPlayableOutput.Create(playableGraph, "Animation", GetComponent<Animator>());

        // Wrap the clip in a playable

        var clipPlayable = AnimationClipPlayable.Create(playableGraph, clip);

        // Connect the Playable to an output

        playableOutput.SetSourcePlayable(clipPlayable);

        // Plays the Graph.

        playableGraph.Play();

    }

    void OnDisable()

    {

        // Destroys all Playables and PlayableOutputs created by the graph.

        playableGraph.Destroy();

    }

}
