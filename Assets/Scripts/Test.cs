using System.Collections;
using System.Collections.Generic;
using UnityEngine;
using UnityEngine.UI;

public class Test : MonoBehaviour
{

    Button btn;


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
    }

    void RegisterEvent()
    {
        btn.onClick.AddListener(OnClickBtn);
    }

    void OnClickBtn()
    {
        Debug.Log(Mathf.Clamp(this.a, 1, 3));
        Debug.Log("OnClickBtn");
    }
}
