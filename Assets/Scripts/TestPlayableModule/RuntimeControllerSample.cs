using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;

[RequireComponent(typeof(Animator))]
public class RuntimeControllerSample : MonoBehaviour
{
    public AnimationClip clip;
    public RuntimeAnimatorController controller;
    public float weight;
    PlayableGraph playableGraph;
    AnimationMixerPlayable mixerPlayable;

    void Start()
    {
        playableGraph = PlayableGraph.Create();
        var playableOutput = AnimationPlayableOutput.Create(playableGraph, "Animation", GetComponent<Animator>());
        mixerPlayable = AnimationMixerPlayable.Create(playableGraph, 2);
        playableOutput.SetSourcePlayable(mixerPlayable);

        var clipPlayable = AnimationClipPlayable.Create(playableGraph, clip);
        var ctrlPlayable = AnimatorControllerPlayable.Create(playableGraph, controller);
        playableGraph.Connect(clipPlayable, 0, mixerPlayable, 0);
        playableGraph.Connect(ctrlPlayable, 0, mixerPlayable, 1);

        playableGraph.Play();
    }

    void Update()
    {
        weight = Mathf.Clamp01(weight);
        mixerPlayable.SetInputWeight(0, 1.0f - weight);
        mixerPlayable.SetInputWeight(1, weight);
    }

    void OnDisable()
    {
        playableGraph.Destroy();
    }
}
