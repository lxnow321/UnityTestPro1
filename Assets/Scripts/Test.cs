using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;
using UnityEditor;

public class Test : MonoBehaviour
{

    Button btn;
    Image img;
    Sprite sprite1;
    Sprite sprite2;


    public int a = 10;

    // Use this for initialization
    void Start()
    {
        InitUI();
		RegisterEvent();
    }

    // Update is called once per frame
    void Update()
    {
        // Debug.Log(Mathf.Clamp(this.a, 1, 3));
    }

    void InitUI()
    {
        btn = GameObject.Find("UIRoot/MyBtn").GetComponent<Button>();
        img = GameObject.Find("UIRoot/Image").GetComponent<Image>();

        // sprite1 = Resources.Load<Sprite>("img1");
        // sprite2 = Resources.Load<Sprite>("img1");

        sprite1 = AssetDatabase.LoadAssetAtPath("Assets/GameAssets/Atlas/img1.png", typeof(Sprite)) as Sprite;
        sprite2 = AssetDatabase.LoadAssetAtPath("Assets/GameAssets/Atlas/img2.png", typeof(Sprite)) as Sprite;



        img.sprite = sprite1;
    }

    void RegisterEvent()
    {
        btn.onClick.AddListener(OnClickBtn);
    }

    public static int num = 0;
    void OnClickBtn()
    {
        // Debug.Log(Mathf.Clamp(this.a, 1, 3));
        num ++;
        img.sprite = num % 2 == 0 ? null : sprite2;

        Debug.Log("OnClickBtn");
    }
}
