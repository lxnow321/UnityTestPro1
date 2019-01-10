using UnityEngine;
using UnityEngine.Animations;
using UnityEngine.Audio;
using UnityEngine.Playables;

[RequireComponent(typeof(Animator))]
[RequireComponent(typeof(AudioSource))]
public class MultiOutputSample : MonoBehaviour
{
    public AnimationClip animationClip;
    public AudioClip audioClip;
    PlayableGraph playableGraph;

    void Start()
    {
        playableGraph = PlayableGraph.Create();
        var animationOutput = AnimationPlayableOutput.Create(playableGraph, "Animation", GetComponent<Animator>());
        var audioOutput = AudioPlayableOutput.Create(playableGraph, "Audio", GetComponent<AudioSource>());

        var animationClipPlayable = AnimationClipPlayable.Create(playableGraph, animationClip);
        var audioClipPlayable = AudioClipPlayable.Create(playableGraph, audioClip, true);

        animationOutput.SetSourcePlayable(animationClipPlayable);
        audioOutput.SetSourcePlayable(audioClipPlayable);

        playableGraph.Play();
    }

    void OnDisable()
    {
        playableGraph.Destroy();
    }
}
