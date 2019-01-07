
using UnityEngine;
using UnityEditor;
using System.IO;

public class AnimatorTest
{
    //[MenuItem("LXTools/AnimatorTest/动画拆分")]
    [MenuItem("Assets/动画拆分")]
    public static void SplitAnimationClip()
    {
        var objs = Selection.GetFiltered(typeof(Object), SelectionMode.DeepAssets);
        foreach (var obj in objs)
        {
            if (obj != null)
            {
                Debug.LogError(string.Format("{0} {1}", obj.name, obj));

                var path = AssetDatabase.GetAssetPath(obj);

                var oldClip = AssetDatabase.LoadAssetAtPath(path, typeof(AnimationClip)) as AnimationClip;

                if (oldClip == null)
                    continue;

                AnimationClip newClip = new AnimationClip();
                // newClip = obj as AnimationClip;

                Debug.LogError(Path.GetDirectoryName(path));

                EditorUtility.CopySerialized(oldClip, newClip);

                var clipsetting = AnimationUtility.GetAnimationClipSettings(oldClip);
                AnimationUtility.SetAnimationClipSettings(newClip, clipsetting);

                // AssetDatabase.CreateAsset(newClip, "Assets/GameAssets/Models/aisi/Anim/" + obj.name + ".anim");

            }
        }

        // var guids = AssetDatabase.FindAssets("", new string[]{"Assets/GameAssets/Models/aisi/Anim",});

        // foreach (var guid in guids)
        // {
        //     var path = AssetDatabase.GUIDToAssetPath(guid);
        //     // AssetDatabase.GetAssetPath()
        // }
        AssetDatabase.Refresh();

        Debug.LogError("动画拆分");
    }
}
