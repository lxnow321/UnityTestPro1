using UnityEngine;
using UnityEngine.Playables;
using UnityEngine.Animations;

[RequireComponent(typeof(Animator))]
public class PlayWithTimeControlSample : MonoBehaviour
{
    public AnimationClip clip;
    public float time;
    PlayableGraph playableGraph;
    AnimationClipPlayable playableClip;
    
    void Start()
    {
        playableGraph = PlayableGraph.Create();
        var playableOutput = AnimationPlayableOutput.Create(playableGraph, "Animation", GetComponent<Animator>());
        playableClip = AnimationClipPlayable.Create(playableGraph, clip);
        playableOutput.SetSourcePlayable(playableClip);
        playableGraph.Play();
        // playableClip.SetPlayState(PlayState.Paused);
        playableClip.Pause();
    }

    void Update()
    {
        playableClip.SetTime(time);
    }

    void OnDisable()
    {
        playableGraph.Destroy();
    }
}