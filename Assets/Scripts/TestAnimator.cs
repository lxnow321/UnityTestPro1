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
    // Use this for initialization
    void Start()
    {
        InitRoot();
        InitUI();
        RegisterEvents();

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
		foreach(var clip in animationController.clips)
		{
			var subBtn = GameObject.Instantiate(btn);
			// var text = subBtn.GetComponentInChildren<Text>();
			// text.text = clip.originalClip.name;
			subBtn.transform.SetParent(BtnGrid.transform);
			var controller = subBtn.AddComponent<UIButtonController>();
			Debug.LogError("测试 "+clip.originalClip.name);
			controller.Init(clip.originalClip.name, OnSubBtnClick);
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
			Debug.LogError("按钮点击：" + animName + " " + animationController);
			if (animationController != null)
			{
				// if (animationController[animName] == null)
				{
					animationController[animName] = AssetsHelper.LoadAssetAtPath(string.Format(@"Assets\GameAssets\Models\aisi\Anim\aisi@aisi@{0}.anim", animName), typeof(AnimationClip)) as AnimationClip;
					Debug.LogError(string.Format("动作为空 {0}", animName));
				}
				playerAnimator.Play(animName, 0);
			}
		}
	}
}
