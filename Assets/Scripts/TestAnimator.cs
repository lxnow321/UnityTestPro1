using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class TestAnimator : MonoBehaviour
{
    public GameObject root;
    private GridLayoutGroup BtnGrid;
    private Button attackBtn;
    public GameObject player;
    private Animator playerAnimator;
    private AnimatorOverrideController animationController;
    // private List<string> animList = new List<string>();
    private HashSet<string> animSet = new HashSet<string>();
    // Use this for initialization
    void Start()
    {
        InitData();
        InitRoot();
        InitUI();
        RegisterEvents();
        InitData();
        InitPlayer();

    }

    // Update is called once per frame
    void Update()
    {

    }



    void InitRoot()
    {
        root = GameObject.Find("GameRoot");
    }

    void InitUI()
    {
        // attackBtn = GameObject.Find("UIRoot/AttackBtn").GetComponent<Button>();
        BtnGrid = GameObject.Find("UIRoot/ControllerPanel/BtnGrid").GetComponent<GridLayoutGroup>();
    }

    void RegisterEvents()
    {
        // attackBtn.onClick.AddListener(OnAttackBtnClick);
    }

    void InitData()
    {
        animSet.Clear();
        // animList.Add("idle");
    }

    void InitPlayer()
    {
        var asset = AssetsHelper.LoadAssetAtPath(@"Assets\GameAssets\Models\aisi\aisi@skin.FBX", typeof(GameObject)) as GameObject;
        player = GameObject.Instantiate(asset);
        player.transform.SetParent(root.transform);
        var animator = AssetsHelper.LoadAssetAtPath(@"Assets\GameAssets\Models\aisi\aisi.overrideController", typeof(AnimatorOverrideController)) as AnimatorOverrideController;
        animationController = GameObject.Instantiate(animator);
        playerAnimator = player.GetComponent<Animator>();
        playerAnimator.runtimeAnimatorController = animationController;

        var btn = AssetsHelper.LoadAssetAtPath(@"Assets\Prefabs\Btn1.prefab", typeof(GameObject)) as GameObject;
        // foreach (var clip in animationController.clips) //RuntimeAnimatorController.clips已废弃
        List<KeyValuePair<AnimationClip, AnimationClip>> overrides = new List<KeyValuePair<AnimationClip, AnimationClip>>();
        animationController.GetOverrides(overrides);
        foreach (var data in overrides)
        {
            var originClip = data.Key;
            var overrideClip = data.Value;
            var subBtn = GameObject.Instantiate(btn);
            subBtn.transform.SetParent(BtnGrid.transform);
            var controller = subBtn.AddComponent<UIButtonController>();
            var animName = originClip.name;
            controller.Init(animName, OnSubBtnClick);
            if (overrideClip != null)
            {
                animSet.Add(animName);
            }
        }

    }

    void OnAttackBtnClick()
    {
        Debug.LogError("攻击按钮");
        // foreach (var clip in animationController.clips)
        // {
        // 	// clip.overrideClip["Angry"] = 
        // 	Debug.LogError(string.Format("{0} {1} {2}", clip.originalClip.ToString(), clip.overrideClip.ToString()));
        // }
        animationController["Angry"] = AssetsHelper.LoadAssetAtPath(@"Assets\GameAssets\Models\aisi\Anim\aisi@aisi@skill01.anim", typeof(AnimationClip)) as AnimationClip;
        playerAnimator.Play("Angry", 0);
    }

    void OnSubBtnClick(UIButtonController controller)
    {
        if (controller != null)
        {
            var animName = controller.btnName;
            Debug.LogError("按钮点击：" + animName + " " + animationController[animName]);
            if (animationController != null)
            {
                if (!animSet.Contains(animName))
                {
                    animationController[animName] = AssetsHelper.LoadAssetAtPath(string.Format(@"Assets\GameAssets\Models\aisi\Anim\aisi@aisi@{0}.anim", animName), typeof(AnimationClip)) as AnimationClip;
                    Debug.LogError(string.Format("动作为空 {0}", animName));
                    animSet.Add(animName);
                }
                playerAnimator.Play(animName, 0);
            }
        }
    }
}
