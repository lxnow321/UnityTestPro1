using UnityEditor;
using UnityEngine;
using System;
using System.Collections.Generic;
using System.IO;

// using Newtonsoft.Json; 
// using Newtonsoft.json;
using Newtonsoft.Json;

[Serializable]
class TestList
{
    public List<Test> list = new List<Test>();
}
[Serializable]
class Test
{
    public Test(string name, string loadtype, string preloadAudioData, string frequency, 
    string loadState, string sampleRateSetting, string compressionFormat)
    {
        this.name = name;
        this.loadtype = loadtype;
        this.preloadAudioData = preloadAudioData;
        this.frequency = frequency;
        this.loadState = loadState;
        this.sampleRateSetting = sampleRateSetting;
        this.compressionFormat = compressionFormat;
    }
    // [SerializeField]
    public string name;
    // [SerializeField]
    public string loadtype;
    // [SerializeField]
    public string preloadAudioData;
    
    // [SerializeField]
    public string frequency;
    // [SerializeField]
    public string loadState;
    // [SerializeField]
    public string sampleRateSetting;
    // [SerializeField]
    // [NonSerialized]
    public string compressionFormat;
}


// List<T>
[Serializable]
public class Serialization<T>
{
    [SerializeField]
    List<T> data;
    public List<T> ToList() { return data; }
 
    public Serialization(List<T> data)
    {
        this.data = data;
    }
}


class LXTools
{
    [MenuItem("LXTools/测试")]
    public static void Test()
    {
        Debug.LogError("测试");
        var objs = Selection.GetFiltered(typeof(AudioClip), SelectionMode.DeepAssets);

        var list = new TestList();
        foreach(var obj in objs)
        {
            var audio = obj as AudioClip;
            if (audio == null)
                return;
            Debug.LogError(audio.name);
            var loadtype = audio.loadType;
            var preloadAudioData = audio.preloadAudioData;
            // var compressionFormat = audio.compressionFormat;
            var sampleRateSetting = audio.samples;

            var frequency = audio.frequency;

            var loadState = audio.loadState;
            
            Debug.LogError(string.Format("{0},{1},{2},{3},{4}", 
            loadtype.ToString(), preloadAudioData.ToString(), 
            sampleRateSetting.ToString(), frequency.ToString(), 
            loadState.ToString()));

        }

        var jsonlist = JsonUtility.ToJson(new Serialization<Test>(list.list), true);
        Debug.LogError(jsonlist);

        // System.IO.File.WriteAllLines(@"F:\\test.txt", lines, Encoding.UTF8);

        string str="你的字符串";
        string filePath = "F:/test.txt";//这里是你的已知文件
        // FileStream fs = new FileStream(filePath, FileMode.OpenOrCreate);

        FileStream fs = File.Open(filePath, FileMode.OpenOrCreate);

        StreamWriter sw = new StreamWriter(fs);
        fs.SetLength(0);//首先把文件清空了。
        sw.Write(jsonlist);//写你的字符串。
        sw.Close();

    }

     [MenuItem("测试/测试2")]
    public static void Test2()
    {
        Debug.LogError("测试");
        var objs = Selection.GetFiltered(typeof(AudioImporter), SelectionMode.DeepAssets);
        // Debug.LogError(Selection.assetGUIDs[0]);
        var list = new TestList();
        // var checkPath = "Assets\\GameAssets\\Audio";
        var checkPath = "Assets\\GameAssets\\Audio\\Combat\\Result\\DungeonResult";
        var guids = AssetDatabase.FindAssets("t:AudioClip", new string[]{checkPath,});
        foreach(var guid in guids)
        {
            var path = AssetDatabase.GUIDToAssetPath(guid);
            // var importer = AssetImporter.GetAtPath(path) as AudioImporter;
            // if (importer != null)
            //     Debug.LogError(string.Format("{0} {1} {2}", path, importer.name, importer.defaultSampleSettings.compressionFormat.ToString()));

            var audio = AssetDatabase.LoadAssetAtPath(path, typeof(AudioClip)) as AudioClip;
            var importer = AssetImporter.GetAtPath(path) as AudioImporter;

            if (audio != null && importer != null)
            {
                Debug.LogError(string.Format("{0} {1} {2}", path, importer.name, importer.defaultSampleSettings.compressionFormat.ToString()));

                var name = audio.name;
                var loadtype = audio.loadType;
                var preloadAudioData = audio.preloadAudioData;
                var frequency = audio.frequency;
                var loadState = audio.loadState;
                 var sampleRateSetting = importer.defaultSampleSettings.sampleRateSetting;
                var compressionFormat = importer.defaultSampleSettings.compressionFormat;
               

                var test = new Test(name.ToString(), loadtype.ToString(), preloadAudioData.ToString(), 
                 frequency.ToString(), loadState.ToString(), 
                 sampleRateSetting.ToString(), compressionFormat.ToString());

                 list.list.Add(test);
            }
        }

        //  var jsonlist = JsonUtility.ToJson(new Serialization<Test>(list.list), true);
        var jsonlist = JsonUtility.ToJson(list, true);
        // Debug.LogError(jsonlist);

        // System.IO.File.WriteAllLines(@"F:\\test.txt", lines, Encoding.UTF8);

        string filePath = "F:\\test.txt";//这里是你的已知文件

        File.WriteAllText(filePath, jsonlist);

        // FileStream fs = new FileStream(filePath, FileMode.Append | FileMode.OpenOrCreate, FileAccess.ReadWrite);
        // StreamWriter sw = new StreamWriter(fs);
        // fs.SetLength(0);//首先把文件清空了。
        // sw.Write(jsonlist);//写你的字符串。
        // sw.Close();


        // var testfile = "F:\\mytest.test";
        // // FileStream myfs = File.OpenWrite("F:\\mytest.test");

        // File.WriteAllText(testfile, "abcdef");

        // var reader = new StreamReader(fs);
        // reader.Read()

        // myfs.Close();




        // List<Test> a = JsonUtility.FromJson<Serialization<Test>>(jsonlist).ToList();
        // Debug.LogError(a[0].name);

    }
}

[Serializable()]
class A
{
    public int a;
}

[Serializable()]
class B
{
    public int b;
    public List<A> alist = new List<A>();
}

[Serializable()]
class C
{
    public List<B> blist = new List<B>();
    [SerializeField()]
    public Dictionary<int, string> dic = new Dictionary<int, string>();
}

class Test2
{
    [MenuItem("Test/测试")]
    public static void Test()
    {
        var a1 = new A();
        var a2 = new A();
        a1.a = 1;
        a2.a = 2;
        var b1 = new B();
        b1.alist.Add(a1);
        b1.alist.Add(a2);

        var a3 = new A();
        var a4 = new A();
        a3.a = 3;
        a4.a = 4;
        var b2 = new B();
        b2.alist.Add(a3);
        b2.alist.Add(a4);

        var c = new C();
        c.blist.Add(b1);
        c.blist.Add(b2);

        c.dic[100] = "abc";
        c.dic[200] = "efg"; 

        var json = JsonUtility.ToJson(c, true);

        Debug.LogError(json);
        File.WriteAllText("F:\\test.txt", json);

    }

}