using UnityEngine;
using UnityEngine.UI;

using System;

public class UIButtonController : MonoBehaviour
{
    private Button button;
    private Text btnText;
    private Action<UIButtonController> _clickCallback;

    public string btnName { get; set; }

    void Awake()
    {
        button = gameObject.GetComponent<Button>();
        btnText = transform.Find("Text").GetComponent<Text>();
        Debug.LogError("---"+btnText);
    }

    public void Init(string name, Action<UIButtonController> callback)
    {
        btnName = name;
        btnText.text = name;
        _clickCallback = callback;

        button.onClick.AddListener(OnBtnClick);
    }

    private void OnBtnClick()
    {
        if (_clickCallback != null)
        {
            _clickCallback(this);
        }
    }
}