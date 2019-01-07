using UnityEngine;
using UnityEditor;

public static class AssetsHelper
{
    public static Object LoadAssetAtPath(string assetPath, System.Type assetType)
    {
        return AssetDatabase.LoadAssetAtPath(assetPath, assetType);
    }

    public static void LoadAssetAsnyc()
    {
#if UNITY_EDITOR
        // AssetDatabase.LoadAssetAtPath();
        // AssetDatabase.GetAssetPathsFromAssetBundleAndAssetName()
#else

#endif
    }

    public static void LoadModel()
    {

    }

    
}
