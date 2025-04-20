#if UNITY_EDITOR
//#define FURALITY_SHADER_UI_DEBUG
using UnityEngine;
using UnityEditor;
using System.Collections.Generic;
using System;
using UnityEngine.Rendering;
using System.Linq;


public class SomnaShaderUI : ShaderGUI
{
    //Set variables
    private Texture2D logoImage;
    private bool showMainProperties;
    MaterialEditor editor;
    MaterialProperty[] properties;
    Material target;

    //Enums
    enum Zone
    {
        None = 0,
        Zone1 = 1,
        Zone2 = 2,
        Zone3 = 3,
        Zone4 = 4,
        Gradient1 = 5,
        Gradient2 = 6,
        Gradient3 = 7
    }

    enum BlendOP
    {
        AlphaBlend = 0,
        Additive = 1,
        SoftAdditive = 2,
        Multiplicative = 3
    }

    enum BlendMode
    {
        Opaque = 0,
        Cutout = 1,
        Transparent = 2
    }

    private GUIStyle selected;
    private GUIStyle label;
    Dictionary<string, MaterialProperty> props = new Dictionary<string, MaterialProperty>();
    Dictionary<string, bool> _foldoutState = new Dictionary<string, bool>();

    void InitializeFoldState(string name)
    {
        if (_foldoutState.ContainsKey(name))
        {
            #if FURALITY_SHADER_UI_DEBUG
            Debug.LogError("Furality Shader UI: FoldState already contains key");
            #endif
            return;
        }
        _foldoutState.Add(name, false);
    }

    bool GetFoldState(string name)
    {
        if (_foldoutState.ContainsKey(name))
        {
            #if FURALITY_SHADER_UI_DEBUG
            Debug.Log($"Furality Shader GUI foldState: {name} {_foldoutState[name]}");
            #endif
            return _foldoutState[name];
        }
        #if FURALITY_SHADER_UI_DEBUG
        Debug.LogError($"Furality Shader GUI: {name} not found on foldState");
        #endif
        return false;
    }

    bool SetFoldState(string name, bool state)
    {
        if (!_foldoutState.ContainsKey(name))
        {
            _foldoutState.Add(name, state);
            return state;
        }
        else if (_foldoutState.ContainsKey(name))
        {
            _foldoutState[name] = state;
            return _foldoutState[name];
        } 
        return false;
    }

    void SaveFoldStates(Material material)
    {
        var data = new FoldoutStates();
        foreach (var state in _foldoutState)
        {
            data.SetState(state.Key, state.Value);
        }
        string serializedStates = JsonUtility.ToJson(data);
        material.SetOverrideTag("_FoldoutStates", serializedStates);
    }

    void LoadFoldStates(Material material)
    {
        string serializedData = material.GetTag("_FoldoutStates", false);
        if (string.IsNullOrEmpty(serializedData))
        {
            SaveFoldStates(material);
            return;
        }
        else
        {
            try
            {
                FoldoutStates data = JsonUtility.FromJson<FoldoutStates>(serializedData);
                _foldoutState.Clear();
                for (int i = 0; i < data.foldoutNames.Count && i < data.foldoutValues.Count; i++)
                {
                    _foldoutState[data.foldoutNames[i]] = data.foldoutValues[i];
                }
            } catch (Exception e)
            {
                Debug.LogError($"Furality Shader UI: Exception {e.Message} while trying to deserialize foldout state data for material {material.name}");
                _foldoutState.Clear();
            }
        }
    }

    public SomnaShaderUI() : base()
    { 
        selected = new GUIStyle(EditorStyles.foldoutHeader);
        selected.normal.textColor = Color.green; // Change to desired color
        selected.onNormal.textColor = Color.green;
        selected.hover.textColor = Color.green;
        selected.onHover.textColor = Color.green;
        selected.focused.textColor = Color.blue;
        selected.onFocused.textColor = Color.blue;
        selected.active.textColor = Color.green;
        selected.onActive.textColor = Color.green;
        label = new GUIStyle(EditorStyles.miniLabel);
        label.alignment = TextAnchor.MiddleCenter;
        InitializeFoldState("showMain");
        InitializeFoldState("showMaskMaps");
        InitializeFoldState("showEffects");
        InitializeFoldState("showLighting");
        InitializeFoldState("showEmission");
        InitializeFoldState("showTileDiscard");
        InitializeFoldState("showRenderSettings");
    }

    GUIStyle styleCheck(bool enable)
    {
        if (enable)
            return selected;
        else
            return EditorStyles.foldoutHeader;
    }

    void Setup()
    {
        if (props.Count != properties.Length)
        {
            props.Clear();
            for (int i = 0; i < properties.Length; i++)
            {
                if (properties[i] == null || props.ContainsKey(properties[i].name))
                    continue;
                props.Add(properties[i].name, properties[i]);
            }
        }
        LoadFoldStates(target);
    }

    void UpdateProps(MaterialProperty[] propertiesLocal)
    {
        for (int i = 0; i < propertiesLocal.Length; i++)
        {
            if (props.ContainsKey(props[properties[i].name].name))
            {
                #if DEBUG
                Debug.Log($"Furality Shader GUI: {properties[i].name} {props[properties[i].name].name}");
                #endif
                props[propertiesLocal[i].name] = propertiesLocal[i];
            }
        }
    }


    //This is where the GUI is drawn
    public override void OnGUI(
        MaterialEditor editor, MaterialProperty[] properties
    )
    {
        this.editor = editor;
        this.properties = properties;
        this.target = editor.target as Material;
        Setup();
        string workflow = "_Workflow";

        if (!this.target.IsKeywordEnabled("_BLEND_OFF") &&
            !this.target.IsKeywordEnabled("_ALPHATEST_ON") &&
            !this.target.IsKeywordEnabled("_ALPHABLEND_ON"))
        {
            this.target.SetOverrideTag("RenderType", "Opaque");
            this.target.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Geometry;
            this.target.SetInt("_SourceBlendRGB", (int)UnityEngine.Rendering.BlendMode.One);
            this.target.SetInt("_DestinationBlendRGB", (int)UnityEngine.Rendering.BlendMode.Zero);
            this.target.SetInt("_ZWrite", 1);
            this.target.DisableKeyword("_ALPHATEST_ON");
            //this.target.SetInt("_ALPHATEST", 0);
            this.target.DisableKeyword("_ALHPABLEND_ON");
            //this.target.SetInt("_ALPHABLEND", 0);
            this.target.DisableKeyword("_ALPHAPREMULTIPLY_ON");
            //this.target.SetInt("_ALPHAPREMULTIPLY", 0);
            this.target.EnableKeyword("_BLEND_OFF");
        }

        //Setup UI
        SetLogoImage();

        //Blend OP Selector
        //EditorGUI.indentLevel += 2;
        GUILayout.Space(10);
        DoBlendMode();
        //editor.ShaderProperty(FindProperty("_BlendModeIndex"), "Rendering Mode");
        //SetupMaterialWithRenderingMode(material, target.GetInt("_BlendModeIndex"));
        GUILayout.Space(10);
        editor.ShaderProperty(FindProperty("_LightingStyle"), "Lighting Style");
        GUILayout.Space(10);
        editor.ShaderProperty(FindProperty(workflow), "Workflow");

        if ((BlendMode)target.GetFloat("_BlendModeIndex") == BlendMode.Transparent)
        {
            GUILayout.Space(10);
            DoBlendOPSelctor();
            //GUILayout.Space(10);
            //DoMaskClip();
        }

        if ((BlendMode)target.GetFloat("_BlendModeIndex") == BlendMode.Cutout)
        {
            GUILayout.Space(10);
            DoMaskClip();
        }

        //EditorGUI.indentLevel -= 2;

        //Main Properties
        DoMainProperties();

        DoTextureMaps();

        DoSpecialEffects();

        DoLightingProperties();

        DoGlobalEmission();

        DoTileDiscard();

        RenderSettings();
        #if FURALITY_SHADER_UI_DEBUG
        if (GUILayout.Button("Update Shader Properties"))
        {
            UpdateProps(properties);
        }
        #endif

        if (GUI.changed)
        {
            SaveFoldStates(target);
        }
        if (EditorGUI.EndChangeCheck())
        {
            SaveFoldStates(target);
        }
    }

    //Entirely functions below this point

    //Set logo
    void SetLogoImage()
    {
        //Load logo image
        logoImage = AssetDatabase.LoadAssetAtPath<Texture2D>("Packages/com.furality.somnashader/Runtime/UI/furality-somna-logo.png");

        // Center the image in a horizontal and vertical layout group
        GUILayout.BeginHorizontal();
        GUILayout.FlexibleSpace();
        GUILayout.BeginVertical();
        GUILayout.FlexibleSpace();
        GUILayout.Label(logoImage, GUILayout.MaxHeight(100));
        GUILayout.FlexibleSpace();
        GUILayout.EndVertical();
        GUILayout.FlexibleSpace();
        GUILayout.EndHorizontal();
    }

    //Modify FindProperty to only require a string
    MaterialProperty FindProperty(string name)
    {
        if (props.ContainsKey(name))
            return props[name];
        return null;
        // return FindProperty(name, properties);
    }

    //Function to create labels for properties
    static GUIContent staticLabel = new GUIContent();
    static GUIContent MakeLabel(string text, string tooltip = null)
    {
        staticLabel.text = text;
        staticLabel.tooltip = tooltip;
        return staticLabel;
    }

    private static bool showMain = false;
    void DoMainProperties()
    {
        EditorGUI.BeginChangeCheck();
        showMain = GetFoldState("showMain");
        SetFoldState("showMain", EditorGUILayout.Foldout(showMain, "Main", true, EditorStyles.foldoutHeader));
        if (showMain)
        {
            GUILayout.Space(10);
            DoMainTex();
            GUILayout.BeginVertical("box");
            DoNormals();
            GUILayout.EndVertical();
            MaterialProperty normTex = FindProperty("_DetailNormal");
            MaterialProperty normScale = FindProperty("_BumpScale1");
            editor.TexturePropertySingleLine(MakeLabel("Detail Normal", "Adds extra detail to normals"), normTex, normScale);
            editor.ShaderProperty(FindProperty("_DetailUV"), "UV Channel", 2);
            EditorGUI.indentLevel += 2;
            editor.TextureScaleOffsetProperty(normTex);
            EditorGUI.indentLevel -= 2;
            GUILayout.BeginVertical("box");
            DoEmission();
            GUILayout.EndVertical();

            DoMisc();
        }
        EditorGUI.EndChangeCheck(); 
    }

    private static bool showRainbow = false;
    void Rainbow()
    {
        showRainbow = EditorGUILayout.Foldout(showRainbow, "Rainbow", true, styleCheck(target.GetFloat("_RainbowEnable") == 1));

        if (showRainbow)
        {
            EditorGUI.indentLevel += 1;

            MaterialProperty enable = FindProperty("_RainbowEnable");

            EditorGUI.BeginChangeCheck();
            editor.ShaderProperty(enable, "Enable");
            //Disable Rainbow Outline if Rainbow is disabled
            if (EditorGUI.EndChangeCheck())
            {
                if (target.GetFloat("_RainbowEnable") == 0)
                {
                    target.SetFloat("_RainbowOutline", 0);
                    target.SetFloat("_RainbowStardust", 0);
                }
            }

            if (target.GetFloat("_RainbowEnable") == 1)
            {
                //Turn on Outline when property is checked
                EditorGUI.BeginChangeCheck();
                editor.ShaderProperty(FindProperty("_RainbowOutline"), "Rainbow Outline");
                if (EditorGUI.EndChangeCheck())
                {
                    if (target.GetFloat("_RainbowOutline") == 1)
                    {
                        target.SetFloat("_Outline1Enable", 1);
                        target.EnableKeyword("_OUTLINE1_ON");
                    }
                }

                //Turn on Outline when property is checked
                EditorGUI.BeginChangeCheck();
                editor.ShaderProperty(FindProperty("_RainbowStardust"), "Rainbow Stardust");
                if (EditorGUI.EndChangeCheck())
                {
                    if (target.GetFloat("_RainbowStardust") == 1)
                    {
                        target.SetFloat("_StarshellEnable", 1);
                        target.EnableKeyword("_STARSHELL_ON");
                    }
                }

                editor.ShaderProperty(FindProperty("_RainbowUVMode"), "UV Mode");
                editor.ShaderProperty(FindProperty("_RainbowScale"), "Scale");
                editor.ShaderProperty(FindProperty("_RainbowHueRange"), "Hue Range");
                editor.ShaderProperty(FindProperty("_RainbowHue"), "Hue");
                editor.ShaderProperty(FindProperty("_RainbowSaturation"), "Saturation");
                editor.ShaderProperty(FindProperty("_RainbowValue"), "Value");
                editor.ShaderProperty(FindProperty("_RainbowEmission"), "Emission");
                editor.ShaderProperty(FindProperty("_RainbowRotation"), "Rotation");
                editor.ShaderProperty(FindProperty("_RainbowSpeed"), "Speed");

                if (target.GetFloat("_RainbowUVMode") > 0)
                {
                    if(target.GetFloat("_RainbowUVMode") < 3)
                    {
                        editor.ShaderProperty(FindProperty("_RainbowRadialCenter"), "Radial Center");
                        if(target.GetFloat("_RainbowUVMode") == 2)
                        {
                            editor.ShaderProperty(FindProperty("_RainbowSpiralCurve"), "Spiral Curve");
                        }
                    }
                }

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel -= 2;
                EditorGUI.indentLevel += 1;
                EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                EditorGUI.indentLevel -= 1;
                editor.ShaderProperty(FindProperty("_RainbowMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_RainbowChannel"), "Channel", 2);
                EditorGUI.indentLevel += 2;

                GUILayout.EndVertical();
            }
            EditorGUI.indentLevel -= 1;
        }
    }


    private static bool showDreamweave = false;
    void Dreamweave()
    {
        showDreamweave = EditorGUILayout.Foldout(showDreamweave, "Dreamweave", true, styleCheck(target.GetFloat("_DreamweaveEnable") == 1));

        if (showDreamweave)
        {
            EditorGUI.indentLevel += 1;

            MaterialProperty enable = FindProperty("_DreamweaveEnable");

            MaterialProperty color01 = FindProperty("_DreamweaveColor01");
            MaterialProperty color02 = FindProperty("_DreamweaveColor02");
            MaterialProperty angle = FindProperty("_DreamweaveAngle");
            MaterialProperty pos = FindProperty("_DreamweavePos");
            MaterialProperty posSpeed = FindProperty("_DreamweavePosSpeed");
            MaterialProperty normScale = FindProperty("_DreamweaveNormalScale");
            MaterialProperty disSpeed = FindProperty("_DreamweaveDistortionSpeed");
            MaterialProperty swapFreq = FindProperty("_DreamweaveSwapFrequency");
            MaterialProperty swapSpeed = FindProperty("_DreamweaveSwapSpeed");
            MaterialProperty softness = FindProperty("_DreamweaveSoftness");
            MaterialProperty offset = FindProperty("_DreamweaveColorOffset");
            MaterialProperty texOffset = FindProperty("_DreamWeaveOffset");
            MaterialProperty texScale = FindProperty("_DreamWeaveScale");
            MaterialProperty emission = FindProperty("_DreamweaveEmission");

            editor.ShaderProperty(enable, "Enable");

            if (target.GetFloat("_DreamweaveEnable") == 1)
            {

                //GUILayout.BeginHorizontal();
                MaterialProperty normTex = FindProperty("_DetailNormal");
                editor.TexturePropertySingleLine(MakeLabel("Detail Normal", "Adds extra detail to normals"), normTex, normScale);
                //editor.ShaderProperty(FindProperty("_DetailUV"), "UV Channel", 2);
                //EditorGUI.indentLevel += 2;
                //editor.TextureScaleOffsetProperty(normTex);
                //EditorGUI.indentLevel -= 2;
                editor.ShaderProperty(texScale, "Texture Scale");
                editor.ShaderProperty(texOffset, "Texture Offset");
                //GUILayout.EndHorizontal();

                editor.ShaderProperty(disSpeed, "Detail Animated Offset");
                editor.ShaderProperty(angle, "Angle");
                editor.ShaderProperty(color01, "Color 01");
                editor.ShaderProperty(color02, "Color 02");
                editor.ShaderProperty(offset, "Color Offset");
                editor.ShaderProperty(FindProperty("_DreamweaveGridThickness"), "Grid Thickness");
                editor.ShaderProperty(FindProperty("_DreamweaveGridTile"), "Grid Scale");
                editor.ShaderProperty(emission, "Emission Intensity");
                editor.ShaderProperty(softness, "Softness");
                editor.ShaderProperty(swapSpeed, "Color Swap Speed");
                editor.ShaderProperty(swapFreq, "Color Swap Frequency");
                editor.ShaderProperty(pos, "Position");
                editor.ShaderProperty(posSpeed, "Position Speed");

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel -= 2;
                EditorGUI.indentLevel += 1;
                EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                EditorGUI.indentLevel -= 1;
                editor.ShaderProperty(FindProperty("_DreamweaveMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_DreamweaveChannel"), "Channel", 2);
                EditorGUI.indentLevel += 2;

                GUILayout.EndVertical();
            }
            EditorGUI.indentLevel -= 1;
        }
    }

    private static bool showStarshine = false;
    void Starshine()
    {
        //Starshine Properties
        showStarshine = EditorGUILayout.Foldout(showStarshine, "Starshine", true, styleCheck(target.GetFloat("_StarShineEnable") == 1));

        if (showStarshine)
        {
            EditorGUI.indentLevel += 1;

            MaterialProperty enable = FindProperty("_StarShineEnable");
            MaterialProperty color = FindProperty("_StarshineColor");
            MaterialProperty intensity = FindProperty("_StarshineIntensity");
            MaterialProperty speed = FindProperty("_StarshineSpeed");
            MaterialProperty scale = FindProperty("_StarshineScale");
            MaterialProperty baseColor = FindProperty("_StarshineBaseColor");
            MaterialProperty metallic = FindProperty("_StarshineMetallic");

            editor.ShaderProperty(enable, "Enable");

            if (target.GetFloat("_StarShineEnable") == 1)
            {
                editor.ShaderProperty(baseColor, "Use Base Color");
                editor.ColorProperty(color, "Color");
                editor.ShaderProperty(FindProperty("_StarshineNormalIntensity"), "Normal Intensity");
                editor.ShaderProperty(FindProperty("_StarshineSmoothness"), "Smoothness");
                editor.ShaderProperty(metallic, "Metallic");
                editor.ShaderProperty(intensity, "Intensity");
                editor.FloatProperty(speed, "Speed");
                editor.ShaderProperty(scale, "Scale");

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel -= 2;
                EditorGUI.indentLevel += 1;
                EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                EditorGUI.indentLevel -= 1;
                editor.ShaderProperty(FindProperty("_StarshineMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_StarshineChannel"), "Channel", 2);
                EditorGUI.indentLevel += 2;

                GUILayout.EndVertical();
            }
            EditorGUI.indentLevel -= 1;
        }
    }

    private static bool showStarshell = false;
    private static bool showConstellation = false;
    private int sheetSize = 1;
    void Starshell()
    {
        showStarshell = EditorGUILayout.Foldout(showStarshell, "Stardust", true, styleCheck(target.GetFloat("_StarshellEnable") == 1));

        if (showStarshell)
        {
            EditorGUI.indentLevel += 1;

            MaterialProperty enable = FindProperty("_StarshellEnable");

            EditorGUI.BeginChangeCheck();
            editor.ShaderProperty(enable, "Enable");
            editor.ShaderProperty(FindProperty("_StardustZwrite"), "Zwrite");
            //Disable Rainbow Stardust if Stardust is disabled
            if (EditorGUI.EndChangeCheck())
            {
                if (target.GetFloat("_StarshellEnable") == 0)
                {
                    target.SetFloat("_RainbowStardust", 0);
                }
            }

            if (target.GetFloat("_StarshellEnable") == 1)
            {
                //Turn on Rainbow when property is checked
                EditorGUI.BeginChangeCheck();
                editor.ShaderProperty(FindProperty("_RainbowStardust"), "Rainbow Stardust");
                if (EditorGUI.EndChangeCheck())
                {
                    if (target.GetFloat("_RainbowStardust") == 1)
                    {
                        target.SetFloat("_RainbowEnable", 1);
                        target.EnableKeyword("_RAINBOW_ON");
                    }
                }

                editor.ShaderProperty(FindProperty("_StardustBaseColor"), "Use Base Color");
                //editor.ShaderProperty(FindProperty("_SizeClip"), "Screenspace Size Clip");
                editor.ShaderProperty(FindProperty("_StarshellColor"), "Color");
                editor.ShaderProperty(FindProperty("_ShellWidth"), "Size");
                editor.ShaderProperty(FindProperty("_StarshellDensity"), "Sparkle Amount");
                editor.ShaderProperty(FindProperty("_SparkleSize"), "Sparkle Size");
                editor.ShaderProperty(FindProperty("_StarShellSparkleScale"), "Sparkle Scale");
                editor.ShaderProperty(FindProperty("_StarShellSparkleSpeed"), "Sparkle Speed");
                editor.ShaderProperty(FindProperty("_EdgeFade"), "Edge Fade");
                editor.ShaderProperty(FindProperty("_StardustHeightScale"), "Height Scale");
                editor.ShaderProperty(FindProperty("_StarshellSpeed"), "Speed");
                editor.ShaderProperty(FindProperty("_StarshellUV"), "UV Channel");
                editor.ShaderProperty(FindProperty("_StardustHeightMap"), "Heightmap");
                editor.ShaderProperty(FindProperty("_StardustHeightCh"), "Heightmap Channel");

                showConstellation = EditorGUILayout.Foldout(showConstellation, "Constellation", true, styleCheck(target.GetFloat("_ConstellationEnable") == 1));

                if (showConstellation)
                {
                    EditorGUI.indentLevel += 1;

                    //GUILayout.BeginVertical("box");
                    MaterialProperty enable2 = FindProperty("_ConstellationEnable");
                    editor.ShaderProperty(enable2, "Enable");

                    if (target.GetFloat("_ConstellationEnable") == 1)
                    {

                        //Properties Here
                        editor.TexturePropertySingleLine(MakeLabel("SpriteSheet"), FindProperty("_Constellation"), FindProperty("_ConstellationColor"));
                        editor.TextureScaleOffsetProperty(FindProperty("_Constellation"));
                        //editor.ShaderProperty(FindProperty("_SheetSize"), "Sheet Size (square)");
                        if (sheetSize < 1)
                        {
                            sheetSize = 1;
                        }
                        sheetSize = EditorGUILayout.IntField("Sheet Size (square)", sheetSize);
                        target.SetInteger("_SheetSize", sheetSize);
                        editor.ShaderProperty(FindProperty("_ConstellationAmount"), "Amount");
                        editor.ShaderProperty(FindProperty("_ConstellationSpeed"), "Speed");
                        editor.ShaderProperty(FindProperty("_FadeFreqency"), "Fade Freqency");

                        //EditorGUI.indentLevel -= 2;
                        //EditorGUI.indentLevel += 1;
                        //EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                        //EditorGUI.indentLevel -= 1;
                        //editor.ShaderProperty(FindProperty("_ConstellationMask"), "Map", 2);
                        // editor.ShaderProperty(FindProperty("_ConstellationChannel"), "Channel", 2);
                        //EditorGUI.indentLevel += 2;

                    }
                    EditorGUI.indentLevel -= 1;
                    //GUILayout.EndVertical();
                }

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel -= 2;
                EditorGUI.indentLevel += 1;
                EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                EditorGUI.indentLevel -= 1;
                editor.ShaderProperty(FindProperty("_StarshellMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_StarshellChannel"), "Channel", 2);
                EditorGUI.indentLevel += 2;

                GUILayout.EndVertical();
            }
            EditorGUI.indentLevel -= 1;
        }
    }

    private static bool showOutline = false;
    void Outline()
    {
        showOutline = EditorGUILayout.Foldout(showOutline, "Outline", true, styleCheck(target.GetFloat("_Outline1Enable") == 1));

        if (showOutline)
        {
            EditorGUI.indentLevel += 1;

            MaterialProperty enable = FindProperty("_Outline1Enable");

            EditorGUI.BeginChangeCheck();
            editor.ShaderProperty(enable, "Enable");
            //Disable Rainbow Outline if Outline is disabled
            if (EditorGUI.EndChangeCheck())
            {
                if (target.GetFloat("_Outline1Enable") == 0)
                {
                    target.SetFloat("_RainbowOutline", 0);
                }
            }

            if (target.GetFloat("_Outline1Enable") == 1)
            {
                //Turn on Rainbow when property is checked
                EditorGUI.BeginChangeCheck();
                editor.ShaderProperty(FindProperty("_RainbowOutline"), "Rainbow Outline");
                if (EditorGUI.EndChangeCheck())
                {
                    if (target.GetFloat("_RainbowOutline") == 1)
                    {
                        target.SetFloat("_RainbowEnable", 1);
                        target.EnableKeyword("_RAINBOW_ON");
                    }
                }

                editor.ShaderProperty(FindProperty("_OutlineColor1"), "Outline Color");
                editor.ShaderProperty(FindProperty("_OutlineWidth1"), "Outline Width");
                editor.ShaderProperty(FindProperty("_MaxOutlineWidth1"), "Max Outline Width");
                editor.ShaderProperty(FindProperty("_StencilReference"), MakeLabel("Stencil Reference", "Set this to something unique"));

                GUILayout.BeginVertical("box");

                EditorGUI.indentLevel -= 2;
                EditorGUI.indentLevel += 1;
                EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
                EditorGUI.indentLevel -= 1;
                editor.ShaderProperty(FindProperty("_OutlineMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_OutlineChannel"), "Channel", 2);
                EditorGUI.indentLevel += 2;

                GUILayout.EndVertical();
            }
            EditorGUI.indentLevel -= 1;
        }
    }

    //Create foldout that contains main properties
    private static bool showEffects = false;
    void DoSpecialEffects()
    {
        showEffects = GetFoldState("showEffects");
        SetFoldState("showEffects", EditorGUILayout.Foldout(showEffects, "Special Effects", true, EditorStyles.foldoutHeader));
        if (showEffects)
        {
            EditorGUI.indentLevel += 1;

            Starshine();

            Dreamweave();

            Starshell();

            Outline();

            Rainbow();

            EditorGUI.indentLevel -= 1;
        }
    }

    //Create foldout that contains tile discard
    private static bool showTileDiscard = false;
    void DoTileDiscard()
    {
        EditorGUI.BeginChangeCheck();
        showTileDiscard = GetFoldState("showTileDiscard");
        //Create foldout
        SetFoldState("showTileDiscard", EditorGUILayout.Foldout(showTileDiscard, "UV Tile Discard", true, EditorStyles.foldoutHeader));
        if (showTileDiscard)
        {
            EditorGUI.indentLevel += 2;

            Rect position = EditorGUILayout.GetControlRect();
            EditorGUI.PrefixLabel(position, new GUIContent("v = 3"));
            position.x += EditorGUIUtility.labelWidth;
            position.width = EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow3_0"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow3_1"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow3_2"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow3_3"), "");

            position = EditorGUILayout.GetControlRect();
            EditorGUI.PrefixLabel(position, new GUIContent("v = 2"));
            position.x += EditorGUIUtility.labelWidth;
            position.width = EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow2_0"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow2_1"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow2_2"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow2_3"), "");

            position = EditorGUILayout.GetControlRect();
            EditorGUI.PrefixLabel(position, new GUIContent("v = 1"));
            position.x += EditorGUIUtility.labelWidth;
            position.width = EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow1_0"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow1_1"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow1_2"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow1_3"), "");

            position = EditorGUILayout.GetControlRect();
            EditorGUI.PrefixLabel(position, new GUIContent("v = 0"));
            position.x += EditorGUIUtility.labelWidth;
            position.width = EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow0_0"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow0_1"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow0_2"), "");
            position.x += EditorGUIUtility.fieldWidth;
            editor.ShaderProperty(position, FindProperty("_UDIMDiscardRow0_3"), "");

            editor.ShaderProperty(FindProperty("_TileDiscardUV"), "UV Channel");

            GUILayout.BeginVertical("box");
            EditorGUI.indentLevel -= 1;
            EditorGUILayout.LabelField("Row 3", EditorStyles.miniBoldLabel);
            EditorGUI.indentLevel += 1;

            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row3_0"), "Row 3_0");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row3_1"), "Row 3_1");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row3_2"), "Row 3_2");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row3_3"), "Row 3_3");
            GUILayout.EndVertical();

            EditorGUI.indentLevel -= 1;
            EditorGUILayout.LabelField("Row 2", EditorStyles.miniBoldLabel);
            EditorGUI.indentLevel += 1;

            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row2_0"), "Row 2_0");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row2_1"), "Row 2_1");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row2_2"), "Row 2_2");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row2_3"), "Row 2_3");

            GUILayout.BeginVertical("box");
            EditorGUI.indentLevel -= 1;
            EditorGUILayout.LabelField("Row 1", EditorStyles.miniBoldLabel);
            EditorGUI.indentLevel += 1;

            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row1_0"), "Row 1_0");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row1_1"), "Row 1_1");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row1_2"), "Row 1_2");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row1_3"), "Row 1_3");
            GUILayout.EndVertical();

            EditorGUI.indentLevel -= 1;
            EditorGUILayout.LabelField("Row 0", EditorStyles.miniBoldLabel);
            EditorGUI.indentLevel += 1;

            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row0_0"), "Row 0_0");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row0_1"), "Row 0_1");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row0_2"), "Row 0_2");
            editor.ShaderProperty(FindProperty("_UVTileDissolveAlpha_Row0_3"), "Row 0_3");

            EditorGUI.indentLevel -= 2;
        }
        EditorGUI.EndChangeCheck();
    }

    //Create foldout that contains Emission properties
    private static bool showEmission = false;
    private static bool showEmission1 = false;
    private static bool showEmission2 = false;
    private static bool showEmission3 = false;
    private static bool showEmission4 = false;
    void DoGlobalEmission()
    {
        EditorGUI.BeginChangeCheck();
        showEmission = GetFoldState("showEmission");
        //Create foldout
        SetFoldState("showEmission", EditorGUILayout.Foldout(showEmission, "Emissions", true, EditorStyles.foldoutHeader));
        if (showEmission)
        {
            EditorGUI.indentLevel += 1;

            DoEmissionMain();
            DoEmissionGeneric(
                "Emission 01",
                "_UseFallback0",
                "_RedChGlowFallback",
                "_EnableRedChannel",
                "_GlowMask0",
                "_GlowMask0Channel",
                DoRedChGlow,
                DoRedChAL,
                ref showEmission1
            );
            DoEmissionGeneric(
                "Emission 02",
                "_UseFallback1",
                "_GreenChGlowFallback",
                "_EnableGreenChannel",
                "_GlowMask1",
                "_GlowMask1Channel",
                DoGreenChGlow,
                DoGreenChAL,
                ref showEmission2
            );
            DoEmissionGeneric(
                "Emission 03",
                "_UseFallback2",
                "_BlueChGlowFallback",
                "_EnableBlueChannel",
                "_GlowMask2",
                "_GlowMask2Channel",
                DoBlueChGlow,
                DoBlueChAL,
                ref showEmission3
            );
            DoEmissionGeneric(
                "Emission 04",
                "_UseFallback3",
                "_AlphaChGlowFallback",
                "_EnableAlphaChannel",
                "_GlowMask3",
                "_GlowMask3Channel",
                DoAlphaChGlow,
                DoAlphaChAL,
                ref showEmission4
            );

            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.EndChangeCheck();
    }

    void DoEmissionGeneric(
        string title,
        string fallbackProp,
        string colorFallbackProp,
        string enableChannelProp,
        string glowmaskProp,
        string glowmaskChannelProp,
        Action channelGlow,
        Action audioLink,
        ref bool foldoutState
    )
    {
        foldoutState = EditorGUILayout.Foldout(foldoutState, title, true, styleCheck(target.GetFloat(fallbackProp) == 1));
        if (foldoutState)
        {
            GUILayout.BeginVertical("box");
            editor.ShaderProperty(FindProperty(fallbackProp), "Enable", 2);
            editor.ShaderProperty(FindProperty(colorFallbackProp), "Color", 2);
            GUILayout.EndVertical();

            EditorGUILayout.LabelField("Luma Glow/AudioLink", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty(enableChannelProp), "Enable", 2);

            channelGlow?.Invoke();
            audioLink?.Invoke();

            GUILayout.BeginVertical("box");
            EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty(glowmaskProp), "Map", 2);
            editor.ShaderProperty(FindProperty(glowmaskChannelProp), "Channel", 2);
            GUILayout.EndVertical();
        }
    }

    private static bool showMainEmission = false;
    void DoEmissionMain()
    {
        //Convert material int to bool
        EditorGUI.BeginChangeCheck();
        showMainEmission = GetFoldState("showMainEmission");
        SetFoldState("showMainEmission", EditorGUILayout.Foldout(showMainEmission, "Main Emission", true, styleCheck(target.GetFloat("_EnableEmission") == 1)));
        if (showMainEmission)
        {
            GUILayout.BeginVertical("box");
            DoEmission();
            editor.ShaderProperty(FindProperty("_ReplaceBaseColor"), "Replace Base Color", 2);
            GUILayout.EndVertical();

            EditorGUILayout.LabelField("Luma Glow/AudioLink", EditorStyles.miniBoldLabel);
            DoEmissionGlow();
            DoEmissionAL();

            GUILayout.BeginVertical("box");
            EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty("_EmissionMaskMap"), "Map", 2);
            editor.ShaderProperty(FindProperty("_EmissionMaskChannel"), "Channel", 2);
            GUILayout.EndVertical();
            EditorGUI.EndChangeCheck();

        }
        EditorGUI.EndChangeCheck();
    }

    //Create foldout that contains mask maps
    private static bool showMaskMaps = false;
    void DoTextureMaps()
    {
        EditorGUI.BeginChangeCheck();
        showMaskMaps = GetFoldState("showMaskMaps");
        //Create foldout
        SetFoldState("showMaskMaps", EditorGUILayout.Foldout(showMaskMaps, "Masks/Maps", true, EditorStyles.foldoutHeader));
        if (showMaskMaps)
        {
            GUILayout.Space(10);

            GUILayout.BeginVertical("box");
            DoMaskMap1();
            GUILayout.EndVertical();

            DoMaskMap2();

            GUILayout.BeginVertical("box");
            DoMaskMapGeneric("_MaskMap03", "_MaskMap03UV", "_AnimatedOffsetMaskMap03", "Mask Map 03", "Texture, used for various masks and maps");
            GUILayout.EndVertical();

            DoMaskMapGeneric("_MaskMap04", "_MaskMap04UV", "_AnimatedOffsetMaskMap04", "Mask Map 04", "Texture, used for various masks and maps");

            GUILayout.BeginVertical("box");
            editor.TexturePropertySingleLine(MakeLabel("Directional Map", "Used to make animated effects follow a specific direction"), FindProperty("_DirectionalMap"));
            editor.ShaderProperty(FindProperty("_DirectionMapUV"), "UV Channel", 2);
            EditorGUI.indentLevel += 2;
            editor.TextureScaleOffsetProperty(FindProperty("_DirectionalMap"));
            EditorGUI.indentLevel -= 2;
            GUILayout.EndVertical();
            MaterialProperty offsetProp = FindProperty("_AnimatedOffsetDirectionalMap");
            AnimatedOffsetProp(offsetProp);
        }
        EditorGUI.EndChangeCheck();
    }

    //Create foldout that contains lighting properties
    private static bool showLighting = false;
    void DoLightingProperties()
    {
        //Create foldout
        EditorGUI.BeginChangeCheck();
        showLighting = GetFoldState("showLighting");
        SetFoldState("showLighting", EditorGUILayout.Foldout(showLighting, "Lighting", true, EditorStyles.foldoutHeader));
        if (showLighting)
        {
            //Metallics
            GUILayout.Space(10);
            GUILayout.BeginVertical("box");
            EditorGUILayout.LabelField("Metallic", EditorStyles.boldLabel);
            editor.ShaderProperty(FindProperty("_MetallicMult"), "Metallic Multipler", 2);
            if (target.GetFloat("_Workflow") == 1 || target.GetFloat("_Workflow") == 2)
            {
                editor.ShaderProperty(FindProperty("_MetallicMask"), "Map", 2);
                editor.ShaderProperty(FindProperty("_MetallicChannel"), "Channel", 2);
            }
            GUILayout.EndVertical();

            //Gloss
            EditorGUILayout.LabelField("Gloss", EditorStyles.boldLabel);
            editor.ShaderProperty(FindProperty("_GlossMult"), "Smoothness", 2);
            editor.ShaderProperty(FindProperty("_InvertGloss"), "Invert Smoothness", 2);
            if (target.GetFloat("_Workflow") == 2)
            {
                editor.ShaderProperty(FindProperty("_GlossMap"), "Map", 2);
                editor.ShaderProperty(FindProperty("_GlossChannel"), "Channel", 2);
            }


            //Oclusion
            GUILayout.BeginVertical("box");
            EditorGUILayout.LabelField("Occlusion", EditorStyles.boldLabel);
            editor.ShaderProperty(FindProperty("_OcclusionPower"), "Occlusion Power", 2);
            if (target.GetFloat("_Workflow") == 2)
            {
                editor.ShaderProperty(FindProperty("_OcclusionMap"), "Map", 2);
                editor.ShaderProperty(FindProperty("_OcclusionChannel"), "Channel", 2);
            }

            GUILayout.EndVertical();


            //Reflection Mask
            EditorGUILayout.LabelField("Reflection Mask", EditorStyles.boldLabel);
            editor.ShaderProperty(FindProperty("_ReflectionMask"), "Map", 2);
            editor.ShaderProperty(FindProperty("_ReflectionMaskChannel"), "Channel", 2);

            if ((BlendMode)target.GetFloat("_BlendModeIndex") == BlendMode.Transparent || (BlendMode)target.GetFloat("_BlendModeIndex") == BlendMode.Cutout)
            {
                //Opacity
                EditorGUILayout.LabelField("Opacity", EditorStyles.boldLabel);
                editor.ShaderProperty(FindProperty("_OpacityMap"), "Map", 2);
                if(target.GetFloat("_OpacityMap") < 5)
                {
                    editor.ShaderProperty(FindProperty("_OpacityChannel"), "Channel", 2);
                }
                
            }

            //Specular
            GUILayout.BeginVertical("box");
            EditorGUILayout.LabelField("Specular", EditorStyles.boldLabel);
            //Specular Color
            EditorGUI.indentLevel += 1;
            EditorGUILayout.LabelField("Color/Tint", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty("_SpecularTint"), "Specular Tint", 2);
            //if (target.GetFloat("_Workflow") == 2)
            //{
                editor.ShaderProperty(FindProperty("_SpecularTintMap"), "Tint Map", 2);
            //}

            //Specular Mask
            EditorGUILayout.LabelField("Mask", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty("_SpecularMask"), "Map", 2);
            editor.ShaderProperty(FindProperty("_SpecularMaskChannel"), "Channel", 2);
            EditorGUI.indentLevel -= 1;
            GUILayout.EndVertical();


            //Fabric Lighting

            EditorGUILayout.LabelField("Fabric Lighting", EditorStyles.boldLabel);
            EditorGUI.indentLevel += 2;
            //EditorGUILayout.LabelField("Enable", EditorStyles.miniBoldLabel);
            editor.ShaderProperty(FindProperty("_FabricLightEnable"), "Enable");

            editor.ShaderProperty(FindProperty("_FabricLightMap"), "Fabric Mask");
            editor.ShaderProperty(FindProperty("_FabricLightChannel"), "Fabric Channel");
            EditorGUI.indentLevel -= 2;

            //Specular Glint
            //EditorGUILayout.LabelField("Specular Glint", EditorStyles.boldLabel);
            //editor.ShaderProperty(FindProperty("_SpecularGlint"), "Enable Glint", 2);
        }
        EditorGUI.EndChangeCheck();
    }

    //Main Texture func
    void DoMainTex()
    {
        MaterialProperty mainTex = FindProperty("_MainTex");
        MaterialProperty mainColor = FindProperty("_Color");
        MaterialProperty offsetProp = FindProperty("_AnimatedOffsetMainTex");
        editor.TexturePropertySingleLine(MakeLabel("Main Tex", "Texture, main colors with alpha"), mainTex, mainColor);
        editor.ShaderProperty(FindProperty("_MainTexUV"), "UV Channel", 2);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(mainTex);
        EditorGUI.indentLevel -= 2;
        AnimatedOffsetProp(offsetProp);
    }

    void AnimatedOffsetProp(MaterialProperty offsetProp)
    {
        EditorGUI.indentLevel += 2;
        EditorGUI.BeginChangeCheck();
        Vector2 offset = new Vector2(offsetProp.vectorValue.x, offsetProp.vectorValue.y);

        EditorGUILayout.BeginHorizontal();

        EditorGUILayout.LabelField("Animated Offset", GUILayout.Width(EditorGUIUtility.labelWidth + 32));
        EditorGUILayout.LabelField("X", GUILayout.Width(EditorGUIUtility.labelWidth - 64));
        EditorGUILayout.LabelField("Y");

        EditorGUILayout.EndHorizontal();

        EditorGUILayout.BeginHorizontal();

        EditorGUILayout.LabelField("", GUILayout.Width(EditorGUIUtility.labelWidth - 18));

        Rect xFieldRect = EditorGUILayout.GetControlRect(false,20f);
        offset.x = EditorGUI.FloatField(xFieldRect, offset.y);

        Rect yFieldRect = EditorGUILayout.GetControlRect(false, 20f);
        offset.y = EditorGUI.FloatField(yFieldRect, offset.y);

        EditorGUILayout.EndHorizontal();

        if (EditorGUI.EndChangeCheck())
        {
            offsetProp.vectorValue = new Vector4(offset.x, offset.y, 0, 0);
        }
        EditorGUI.indentLevel -= 2;
    }

    //Mask Maps
    void DoMaskMap1()
    {
        string texTitle = "";

        if (target.GetFloat("_Workflow") == 0 || target.GetFloat("_Workflow") == 3)
        {
            texTitle = "Metallic (Mask Map 01)";
        }

        else if (target.GetFloat("_Workflow") == 1)
        {
            texTitle = "Specular (Mask Map01)";
        }

        else if (target.GetFloat("_Workflow") == 2)
        {
            texTitle = "Mask Map 01";
        }

        MaterialProperty mainTex = FindProperty("_MaskMap01");
        MaterialProperty uvChannel = FindProperty("_MaskMap01UV");
        MaterialProperty offsetProp = FindProperty("_AnimatedOffsetMaskMap01");
        editor.TexturePropertySingleLine(MakeLabel(texTitle, "Texture, used for various masks and maps"), mainTex);
        editor.ShaderProperty(uvChannel, "UV Channel", 2);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(mainTex);
        EditorGUI.indentLevel -= 2;
        AnimatedOffsetProp(offsetProp);
    }

    void DoMaskMap2()
    {
        string texTitle = "";

        if (target.GetFloat("_Workflow") == 0)
        {
            texTitle = "Occlusion (Mask Map 02)";
        }

        if (target.GetFloat("_Workflow") == 1)
        {
            texTitle = "Occlusion (Mask Map 02)";
        }

        if (target.GetFloat("_Workflow") == 2)
        {
            texTitle = "Mask Map 02";
        }

        if (target.GetFloat("_Workflow") == 3)
        {
            texTitle = "Furality Mask Map";
        }

        MaterialProperty mainTex = FindProperty("_MaskMap02");
        MaterialProperty uvChannel = FindProperty("_MaskMap02UV");
        MaterialProperty offsetProp = FindProperty("_AnimatedOffsetMaskMap02");
        editor.TexturePropertySingleLine(MakeLabel(texTitle, "Texture, used for various masks and maps"), mainTex);
        editor.ShaderProperty(uvChannel, "UV Channel", 2);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(mainTex);
        EditorGUI.indentLevel -= 2;
        AnimatedOffsetProp(offsetProp);
    }

    void DoMaskMapGeneric(string mainTexProp, string maskMapUV, string animatedOffsetProp, string textureLabel, string textureDescription)
    {
        MaterialProperty mainTex = FindProperty(mainTexProp);
        MaterialProperty uvChannel = FindProperty(maskMapUV);
        MaterialProperty offsetProp = FindProperty(animatedOffsetProp);
        editor.TexturePropertySingleLine(MakeLabel(textureLabel, textureDescription), mainTex);
        editor.ShaderProperty(uvChannel, "UV Channel", 2);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(mainTex);
        EditorGUI.indentLevel -= 2;
        AnimatedOffsetProp(offsetProp);
    }

    //Metallic texture and smoothness
    void DoMetallic()
    {
        MaterialProperty Tex = FindProperty("_MetallicGlossMap");
        MaterialProperty InlineProperty = FindProperty("_Metallic");
        MaterialProperty Smoothness = FindProperty("_Glossiness");
        MaterialProperty SmoothnessScale = FindProperty("_GlossMapScale");

        //editor.TexturePropertySingleLine(
        //    MakeLabel("Metallic", "uwu this is an easter egg I guess :3"), Tex,
        //    Tex.textureValue ? InlineProperty : null);

        editor.TexturePropertySingleLine(MakeLabel("Metallic", "Texture, R: Metallic, A: Smoothness"), Tex, InlineProperty);

        EditorGUI.indentLevel += 2;
        if (Tex.textureValue != null)
        {
            editor.ShaderProperty(SmoothnessScale, MakeLabel("Smoothness", "How reflective the material is"));
        }
        else
        {
            editor.ShaderProperty(Smoothness, MakeLabel("Smoothness", "How reflective the material is"));
        }
        EditorGUI.indentLevel -= 2;
    }

    //Specular map and rimlight
    void DoSpecular()
    {
        MaterialProperty color = FindProperty("_RimlightColor");
        MaterialProperty toggle = FindProperty("_EnableSpecularMap");
        MaterialProperty Tex = FindProperty("_SpecGlossMap");
        MaterialProperty SpecColor = FindProperty("_SpecColor");
        EditorGUI.indentLevel += 2;
        editor.ColorProperty(color, "Rimlight Color");
        editor.ShaderProperty(toggle, "Specular Map");
        EditorGUI.indentLevel -= 2;
        if (target.GetFloat("_EnableSpecularMap") == 1)
        {
            editor.TexturePropertySingleLine(MakeLabel("Specular Map", "Texture, tints the color of specular highlights"), Tex, SpecColor);
        }
    }

    //Normal map
    void DoNormals()
    {
        MaterialProperty tex = FindProperty("_BumpMap");
        MaterialProperty scale = FindProperty("_BumpScale");
        editor.TexturePropertySingleLine(MakeLabel("Normal Map", "Texture to simulate bumps"), tex, scale);
        editor.ShaderProperty(FindProperty("_NormalMapUV"), "UV Channel", 2);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(tex);
        EditorGUI.indentLevel -= 2;
    }

    //Occlusion
    void DoOcclusion()
    {
        MaterialProperty tex = FindProperty("_OcclusionMap");
        MaterialProperty scale = FindProperty("_OcclusionStrength");
        editor.TexturePropertySingleLine(MakeLabel("Occlusion Map", "Texture, adds shadow detail"), tex, scale);
    }

    //Effect Mask
    void DoEffectMask()
    {
        MaterialProperty tex = FindProperty("_EffectMask");
        editor.TexturePropertySingleLine(MakeLabel("Effect Mask", "Texture, masks effects using color channels (RGBA)"), tex);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(tex);
        EditorGUI.indentLevel -= 2;
    }

    //Emission
    void DoEmission()
    {
        MaterialProperty tog = FindProperty("_EnableEmission");

        EditorGUI.indentLevel += 2;
        editor.ShaderProperty(tog, MakeLabel("Enable Emission", "Texture/color, adds glow"));
        EditorGUI.indentLevel -= 2;

        if (tog.floatValue == 1)
        {
            EditorGUI.BeginChangeCheck();
            MaterialProperty tex = FindProperty("_EmissionMap");
            MaterialProperty color = FindProperty("_EmissionColor");
            MaterialProperty offsetProp = FindProperty("_AnimatedOffsetEmssion");
            editor.TexturePropertySingleLine(MakeLabel("Emission"), tex, color);
            EditorGUI.indentLevel += 2;
            editor.TextureScaleOffsetProperty(tex);
            EditorGUI.indentLevel -= 2;
            AnimatedOffsetProp(offsetProp);
            EditorGUI.EndChangeCheck();
        }
    }

    //Outlines
    private static bool showDoOutline = false;
    void DoOutlines()
    {
        EditorGUI.indentLevel += 2;
        showDoOutline = EditorGUILayout.Foldout(showDoOutline, "Outline Settings", true, EditorStyles.foldoutHeader);

        if (showDoOutline)
        {
            MaterialProperty maskCH = FindProperty("_OutlineMaskingChannel");
            MaterialProperty color = FindProperty("_OutlineColor");
            MaterialProperty width = FindProperty("_OutlineWidth");
            MaterialProperty maxWidth = FindProperty("_MaxOutlineWidth");
            MaterialProperty fudge = FindProperty("_ViewFudge");

            EditorGUI.indentLevel += 1;
            target.SetFloat("_ShowOutline", 1);

            editor.ShaderProperty(maskCH, MakeLabel("Masking Channel", "Hides outlines by an Effect Mask color channel"));
            editor.ShaderProperty(color, MakeLabel("Color"));
            editor.ShaderProperty(width, MakeLabel("Width"));
            editor.ShaderProperty(maxWidth, MakeLabel("Max Width", "Maximum distance scaling width"));
            editor.ShaderProperty(fudge, MakeLabel("Push Outline", "Helps fix ugly internal outlines"));
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Outlines
    private static bool showOutlines = false;
    void DoOutlines2()
    {
        EditorGUI.indentLevel += 2;
        showOutlines = EditorGUILayout.Foldout(showOutlines, "Outline Settings", true, EditorStyles.foldoutHeader);

        if (showOutlines)
        {
            MaterialProperty maskCH = FindProperty("_OutlineMaskingChannel");
            MaterialProperty color = FindProperty("_OutlineColor");
            MaterialProperty width = FindProperty("_OutlineWidth");
            MaterialProperty maxWidth = FindProperty("_MaxOutlineWidth");
            MaterialProperty fudge = FindProperty("_ViewFudge");

            EditorGUI.indentLevel += 1;
            target.SetFloat("_ShowOutline2", 1);

            editor.ShaderProperty(maskCH, MakeLabel("Masking Channel", "Hides outlines by an Effect Mask color channel"));
            editor.ShaderProperty(color, MakeLabel("Color"));
            editor.ShaderProperty(width, MakeLabel("Width"));
            editor.ShaderProperty(maxWidth, MakeLabel("Max Width", "Maximum distance scaling width"));
            editor.ShaderProperty(fudge, MakeLabel("Push Outline", "Helps fix ugly internal outlines"));
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Misc
    void DoMisc()
    {
        MaterialProperty clip = FindProperty("_Culling");
        //MaterialProperty cull = FindProperty("");
        EditorGUI.indentLevel += 2;
        editor.ShaderProperty(clip, MakeLabel("Culling"));
        editor.ShaderProperty(FindProperty("_FavoriteColor"), "Favorite Color");
        EditorGUI.indentLevel -= 2;
    }

    //Directional map and Glow Mask
    void DoGlowMask()
    {
        MaterialProperty map = FindProperty("_DirectionalMap");
        MaterialProperty mask = FindProperty("_GlowMask");
        MaterialProperty offsetProp = FindProperty("_AnimatedOffsetDirectionalMap");

        editor.TexturePropertySingleLine(MakeLabel("Direction Map", "Helps fix UV seams and add detail"), map);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(map);
        EditorGUI.indentLevel -= 2;
        editor.TexturePropertySingleLine(MakeLabel("Glow Mask", "Texture, hides glow effects using color channels (RGBA)"), mask);
        EditorGUI.indentLevel += 2;
        editor.TextureScaleOffsetProperty(mask);
        EditorGUI.indentLevel -= 2;
        AnimatedOffsetProp(offsetProp);
    }

    //Zone selector
    void DoEmissionZone()
    {
        Zone operation = (Zone)target.GetFloat("_EmissionGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by Emission"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Emission Glow Zone");
            target.SetFloat("_EmissionGlowZone", (float)operation);
        }
    }

    //Emission Glow Settings
    private static bool showEmissionGlow = false;
    void DoEmissionGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showEmissionGlow = EditorGUILayout.Foldout(showEmissionGlow, "Luma Glow", true, EditorStyles.foldoutHeader);
        if (showEmissionGlow)
        {
            MaterialProperty Mode = FindProperty("_EmissionGlowMode");
            MaterialProperty BlendMode = FindProperty("_EmissionGlowBlendMode");
            MaterialProperty Tint = FindProperty("_EmissionGlowTint");
            MaterialProperty MinBrightness = FindProperty("_EmissionGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_EmissionGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_EmissionGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_EmissionGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_EmissionGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_EmissionGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_EmissionGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_EmissionGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_EmissionGlowAnimationStrength");
            EditorGUI.indentLevel += 1;
            DoEmissionZone();

            if (target.GetFloat("_EmissionGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "How the effect combines"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_EmissionGlowZone") > 4 || target.GetFloat("_EmissionGlowMode") > 0)
                {
                    if (target.GetFloat("_EmissionGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_EmissionGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_EmissionGlowZone") > 4 || target.GetFloat("_EmissionGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation Speed/Chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation Strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Emission AL Settings
    private static bool showEmissionAL = false;
    void DoEmissionAL()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showEmissionAL = EditorGUILayout.Foldout(showEmissionAL, "AudioLink", true, EditorStyles.foldoutHeader);
        if (showEmissionAL)
        {
            MaterialProperty Mode = FindProperty("_EmissionReactiveMode");
            MaterialProperty BlendMode = FindProperty("_EmissionReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_EmissionReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_EmissionReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_EmissionReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_EmissionReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_EmissionReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_EmissionReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_EmissionReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_EmissionReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation Type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How the effect combines"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_EmissionReactiveBand") > 4 || target.GetFloat("_EmissionReactiveMode") > 0 && target.GetFloat("_EmissionReactiveMode") != 5)
                {
                    if (target.GetFloat("_EmissionReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "AudioLink: Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "AudioLink: Pulse mode animation offset"));
                }

                if (target.GetFloat("_EmissionReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "AudioLink: Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoOutlineZone()
    {
        Zone operation = (Zone)target.GetFloat("_OutlineGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by outline"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Outline Glow Zone");
            target.SetFloat("_OutlineGlowZone", (float)operation);
        }
    }

    //Outline Glow Settings
    private static bool showOutlineGlow = false;
    void DoOutlineGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showOutlineGlow = EditorGUILayout.Foldout(showOutlineGlow, "Outline Glow", true, EditorStyles.foldoutHeader);
        if (showOutlineGlow)
        {
            MaterialProperty Mode = FindProperty("_OutlineGlowMode");
            MaterialProperty BlendMode = FindProperty("_OutlineGlowBlendMode");
            MaterialProperty Tint = FindProperty("_OutlineGlowTint");
            MaterialProperty MinBrightness = FindProperty("_OutlineGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_OutlineGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_OutlineGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_OutlineGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_OutlineGlowRadialCenter");

            EditorGUI.indentLevel += 1;
            DoOutlineZone();

            if (target.GetFloat("_OutlineGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "How the effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_OutlineGlowZone") > 4 || target.GetFloat("_OutlineGlowMode") > 0)
                {
                    if (target.GetFloat("_OutlineGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_OutlineGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Outline AL Settings
    private static bool showOutlineAL = false;
    void DoOutlineAL()
    {
        EditorGUI.indentLevel += 2;
        showOutlineAL = EditorGUILayout.Foldout(showOutlineAL, "Outline AudioLink", true, EditorStyles.foldoutHeader);
        if (showOutlineAL)
        {
            MaterialProperty Mode = FindProperty("_OutlineReactiveMode");
            MaterialProperty BlendMode = FindProperty("_OutlineReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_OutlineReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_OutlineReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_OutlineReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_OutlineReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_OutlineReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_OutlineReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_OutlineReactiveBand");
            target.SetFloat("_ShowOutlineAL", 1);

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_OutlineReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How the effect combines"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_OutlineReactiveBand") > 4 || target.GetFloat("_OutlineReactiveMode") > 0 && target.GetFloat("_OutlineReactiveMode") != 5)
                {
                    if (target.GetFloat("_OutlineReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "AudioLink: Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "AudioLink: Pulse mode animation offset"));
                }

                if (target.GetFloat("_OutlineReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "AudioLink: Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoRedChZone()
    {
        Zone operation = (Zone)target.GetFloat("_RedChGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by Glow Mask(R)"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Red Channel Glow Zone");
            target.SetFloat("_RedChGlowZone", (float)operation);
        }
    }

    //RedCh Glow Settings
    private static bool showRedChGlow = false;
    void DoRedChGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showRedChGlow = EditorGUILayout.Foldout(showRedChGlow, "Luma Glow", true, EditorStyles.foldoutHeader);
        if (showRedChGlow)
        {
            MaterialProperty Mode = FindProperty("_RedChGlowMode");
            MaterialProperty Tint = FindProperty("_RedChGlowTint");
            MaterialProperty MinBrightness = FindProperty("_RedChGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_RedChGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_RedChGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_RedChGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_RedChGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_RedChGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_RedChGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_RedChGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_RedChGlowAnimationStrength");
            target.SetFloat("_ShowRedGlow", 1);

            EditorGUI.indentLevel += 1;

            DoRedChZone();

            if (target.GetFloat("_RedChGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_RedChGlowZone") > 4 || target.GetFloat("_RedChGlowMode") > 0)
                {
                    if (target.GetFloat("_RedChGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_RedChGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_RedChGlowZone") > 4 || target.GetFloat("_RedChGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/Chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //RedCh AL Settings
    private static bool showRedChAL = false;
    void DoRedChAL()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showRedChAL = EditorGUILayout.Foldout(showRedChAL, "AudioLink", true, EditorStyles.foldoutHeader);
        if (showRedChAL)
        {
            MaterialProperty Mode = FindProperty("_RedChReactiveMode");
            MaterialProperty BlendMode = FindProperty("_RedChReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_RedChReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_RedChReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_RedChReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_RedChReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_RedChReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_RedChReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_RedChReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_RedChReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_RedChReactiveBand") > 4 || target.GetFloat("_RedChReactiveMode") > 0 && target.GetFloat("_RedChReactiveMode") != 5)
                {
                    if (target.GetFloat("_RedChReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "AudioLink: Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "AudioLink: Pulse mode animation offset"));
                }

                if (target.GetFloat("_RedChReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "AudioLink: Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoGreenChZone()
    {
        Zone operation = (Zone)target.GetFloat("_GreenChGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by Glow Mask(G)"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Green Channel Glow Zone");
            target.SetFloat("_GreenChGlowZone", (float)operation);
        }
    }

    //GreenCh Glow Settings
    private static bool showGreenChGlow = false;
    void DoGreenChGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showGreenChGlow = EditorGUILayout.Foldout(showGreenChGlow, "Luma Glow", true, EditorStyles.foldoutHeader);
        if (showGreenChGlow)
        {
            MaterialProperty Mode = FindProperty("_GreenChGlowMode");
            MaterialProperty Tint = FindProperty("_GreenChGlowTint");
            MaterialProperty MinBrightness = FindProperty("_GreenChGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_GreenChGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_GreenChGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_GreenChGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_GreenChGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_GreenChGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_GreenChGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_GreenChGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_GreenChGlowAnimationStrength");

            EditorGUI.indentLevel += 1;
            DoGreenChZone();

            if (target.GetFloat("_GreenChGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_GreenChGlowZone") > 4 || target.GetFloat("_GreenChGlowMode") > 0)
                {
                    if (target.GetFloat("_GreenChGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_GreenChGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_GreenChGlowZone") > 4 || target.GetFloat("_GreenChGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //GreenCh AL Settings
    private static bool showGreenChAL = false;
    void DoGreenChAL()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showGreenChAL = EditorGUILayout.Foldout(showGreenChAL, "AudioLink", true, EditorStyles.foldoutHeader);
        if (showGreenChAL)
        {
            MaterialProperty Mode = FindProperty("_GreenChReactiveMode");
            MaterialProperty BlendMode = FindProperty("_GreenChReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_GreenChReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_GreenChReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_GreenChReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_GreenChReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_GreenChReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_GreenChReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_GreenChReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_GreenChReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_GreenChReactiveBand") > 4 || target.GetFloat("_GreenChReactiveMode") > 0 && target.GetFloat("_GreenChReactiveMode") != 5)
                {
                    if (target.GetFloat("_GreenChReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_GreenChReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoBlueChZone()
    {
        Zone operation = (Zone)target.GetFloat("_BlueChGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by Glow Mask(B)"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Blue Channel Glow Zone");
            target.SetFloat("_BlueChGlowZone", (float)operation);
        }
    }

    //BlueCh Glow Settings
    private static bool showBlueChGlow = false;
    void DoBlueChGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showBlueChGlow = EditorGUILayout.Foldout(showBlueChGlow, "Luma Glow", true, EditorStyles.foldoutHeader);
        if (showBlueChGlow)
        {
            MaterialProperty Mode = FindProperty("_BlueChGlowMode");
            MaterialProperty Tint = FindProperty("_BlueChGlowTint");
            MaterialProperty MinBrightness = FindProperty("_BlueChGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_BlueChGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_BlueChGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_BlueChGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_BlueChGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_BlueChGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_BlueChGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_BlueChGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_BlueChGlowAnimationStrength");

            EditorGUI.indentLevel += 1;
            DoBlueChZone();

            if (target.GetFloat("_BlueChGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_BlueChGlowZone") > 4 || target.GetFloat("_BlueChGlowMode") > 0)
                {
                    if (target.GetFloat("_BlueChGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_BlueChGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_BlueChGlowZone") > 4 || target.GetFloat("_BlueChGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //BlueCh AL Settings
    private static bool showBlueChAL = false;
    void DoBlueChAL()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showBlueChAL = EditorGUILayout.Foldout(showBlueChAL, "AudioLink", true, EditorStyles.foldoutHeader);
        if (showBlueChAL)
        {
            MaterialProperty Mode = FindProperty("_BlueChReactiveMode");
            MaterialProperty BlendMode = FindProperty("_BlueChReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_BlueChReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_BlueChReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_BlueChReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_BlueChReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_BlueChReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_BlueChReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_BlueChReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_BlueChReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_BlueChReactiveBand") > 4 || target.GetFloat("_BlueChReactiveMode") > 0 && target.GetFloat("_BlueChReactiveMode") != 5)
                {
                    if (target.GetFloat("_BlueChReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "AudioLink: Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "AudioLink: Pulse mode animation offset"));
                }

                if (target.GetFloat("_BlueChReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "AudioLink: Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoAlphaChZone()
    {
        Zone operation = (Zone)target.GetFloat("_AlphaChGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by Glow Mask(A)"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Alpha Channel Glow Zone");
            target.SetFloat("_AlphaChGlowZone", (float)operation);
        }
    }

    //AlphaCh Glow Settings
    private static bool showAlphaChGlow = false;
    void DoAlphaChGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showAlphaChGlow = EditorGUILayout.Foldout(showAlphaChGlow, "Luma Glow", true, EditorStyles.foldoutHeader);
        if (showAlphaChGlow)
        {
            MaterialProperty Mode = FindProperty("_AlphaChGlowMode");
            MaterialProperty Tint = FindProperty("_AlphaChGlowTint");
            MaterialProperty MinBrightness = FindProperty("_AlphaChGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_AlphaChGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_AlphaChGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_AlphaChGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_AlphaChGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_AlphaChGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_AlphaChGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_AlphaChGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_AlphaChGlowAnimationStrength");

            EditorGUI.indentLevel += 1;
            DoAlphaChZone();

            if (target.GetFloat("_AlphaChGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limts how dim effects become"));

                if (target.GetFloat("_AlphaChGlowZone") > 4 || target.GetFloat("_AlphaChGlowMode") > 0)
                {
                    if (target.GetFloat("_AlphaChGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_AlphaChGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_AlphaChGlowZone") > 4 || target.GetFloat("_AlphaChGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //AlphaCh AL Settings
    private static bool showAlphaChAL = false;
    void DoAlphaChAL()
    {

        //Create Foldout
        EditorGUI.indentLevel += 2;
        showAlphaChAL = EditorGUILayout.Foldout(showAlphaChAL, "AudioLink", true, EditorStyles.foldoutHeader);
        if (showAlphaChAL)
        {
            MaterialProperty Mode = FindProperty("_AlphaChReactiveMode");
            MaterialProperty BlendMode = FindProperty("_AlphaChReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_AlphaChReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_AlphaChReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_AlphaChReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_AlphaChReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_AlphaChReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_AlphaChReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_AlphaChReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_AlphaChReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_AlphaChReactiveBand") > 4 || target.GetFloat("_AlphaChReactiveMode") > 0 && target.GetFloat("_AlphaChReactiveMode") != 5)
                {
                    if (target.GetFloat("_AlphaChReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "AudioLink: Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "AudioLink: Pulse mode animation offset"));
                }

                if (target.GetFloat("_AlphaChReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "AudioLink: Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Zone selector
    void DoSparkleZone()
    {
        Zone operation = (Zone)target.GetFloat("_SparkleGlowZone");
        EditorGUI.BeginChangeCheck();
        operation = (Zone)EditorGUILayout.EnumPopup(MakeLabel("Zone", "Select a zone to enable Luma Glow, masked by sparkles"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Sparkle Channel Glow Zone");
            target.SetFloat("_SparkleGlowZone", (float)operation);
        }
    }

    //Sparkle Glow Settings
    private static bool showSparkleGlow = false;
    void DoSparkleGlow()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showSparkleGlow = EditorGUILayout.Foldout(showSparkleGlow, "Sparkle Glow", true, EditorStyles.foldoutHeader);
        if (showSparkleGlow)
        {
            MaterialProperty Mode = FindProperty("_SparkleGlowMode");
            MaterialProperty Tint = FindProperty("_SparkleGlowTint");
            MaterialProperty MinBrightness = FindProperty("_SparkleGlowMinBrightness");
            MaterialProperty PulseDir = FindProperty("_SparkleGlowPulseDir");
            MaterialProperty PulseScale = FindProperty("_SparkleGlowPulseScale");
            MaterialProperty PulseOffset = FindProperty("_SparkleGlowPulseOffset");
            MaterialProperty PulseCenter = FindProperty("_SparkleGlowRadialCenter");
            MaterialProperty AnimBand = FindProperty("_SparkleGlowAnimationBand");
            MaterialProperty AnimMode = FindProperty("_SparkleGlowAnimationMode");
            MaterialProperty AnimSpeed = FindProperty("_SparkleGlowAnimationSpeed");
            MaterialProperty AnimStr = FindProperty("_SparkleGlowAnimationStrength");

            EditorGUI.indentLevel += 1;
            DoSparkleZone();

            if (target.GetFloat("_SparkleGlowZone") > 0)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "Animation type"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "Limits how dim effects become"));

                if (target.GetFloat("_SparkleGlowZone") > 4 || target.GetFloat("_SparkleGlowMode") > 0)
                {
                    if (target.GetFloat("_SparkleGlowMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));

                }

                if (target.GetFloat("_SparkleGlowMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }

                if (target.GetFloat("_SparkleGlowZone") > 4 || target.GetFloat("_SparkleGlowMode") > 0)
                {
                    editor.ShaderProperty(AnimBand, MakeLabel("Animation Band", "AudioLink: Audio band to listen to"));
                    editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                    editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                    editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
                }

            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Sparkle AL Settings
    private static bool showSparkleAL = false;
    void DoSparkleAL()
    {
        //Create Foldout
        EditorGUI.indentLevel += 2;
        showSparkleAL = EditorGUILayout.Foldout(showSparkleAL, "Sparkle AudioLink", true, EditorStyles.foldoutHeader);
        if (showSparkleAL)
        {
            MaterialProperty Mode = FindProperty("_SparkleReactiveMode");
            MaterialProperty BlendMode = FindProperty("_SparkleReactiveBlendMode");
            MaterialProperty Tint = FindProperty("_SparkleReactiveTint");
            MaterialProperty MinBrightness = FindProperty("_SparkleReactiveMinBrightness");
            MaterialProperty PulseDir = FindProperty("_SparkleReactivePulseDir");
            MaterialProperty PulseScale = FindProperty("_SparkleReactivePulseScale");
            MaterialProperty PulseOffset = FindProperty("_SparkleReactivePulseOffset");
            MaterialProperty PulseCenter = FindProperty("_SparkleReactiveRadialCenter");
            MaterialProperty Band = FindProperty("_SparkleReactiveBand");

            EditorGUI.indentLevel += 1;
            editor.ShaderProperty(Band, MakeLabel("AudioLink Band"));

            if (target.GetFloat("_SparkleReactiveBand") < 10)
            {
                editor.ShaderProperty(Mode, MakeLabel("Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(BlendMode, MakeLabel("Blend Mode", "AudioLink: How effects combine"));
                editor.ColorProperty(Tint, "Tint");
                editor.ShaderProperty(MinBrightness, MakeLabel("Min Brightness", "AudioLink: Limits how dim effects become"));

                if (target.GetFloat("_SparkleReactiveBand") > 4 || target.GetFloat("_SparkleReactiveMode") > 0 && target.GetFloat("_SparkleReactiveMode") != 5)
                {
                    if (target.GetFloat("_SparkleReactiveMode") < 2)
                    {
                        editor.ShaderProperty(PulseDir, MakeLabel("Pulse Dir", "AudioLink: Pulse mode animation direction"));
                    }
                    editor.ShaderProperty(PulseScale, MakeLabel("Pulse Scale", "Pulse mode animation scale"));
                    editor.ShaderProperty(PulseOffset, MakeLabel("Pulse Offset", "Pulse mode animation offset"));
                }

                if (target.GetFloat("_SparkleReactiveMode") == 2)
                {
                    editor.ShaderProperty(PulseCenter, MakeLabel("Radial Center", "Radial mode animation center"));
                }
            }
            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Sparkles
    private static bool showSparkles = false;
    void DoSparkles()
    {
        EditorGUI.indentLevel += 2;
        showSparkles = EditorGUILayout.Foldout(showSparkles, "Sparkles", true, styleCheck(target.GetFloat("_EnableSparkles") == 1));
        if (showSparkles)
        {
            EditorGUI.indentLevel += 1;
            MaterialProperty tog = FindProperty("_EnableSparkles");
            float toglFl = target.GetFloat("_EnableSparkles");
            editor.ShaderProperty(tog, MakeLabel("Enable Sparkles"));

            if (toglFl == 1)
            {
                MaterialProperty mode = FindProperty("_SparkleMode");
                MaterialProperty shape = FindProperty("_SparkleShape");
                MaterialProperty maskCh = FindProperty("_SparkleMaskingChannel");
                MaterialProperty color = FindProperty("_SparkleColor");
                MaterialProperty size = FindProperty("_SparkleSize");
                MaterialProperty scale = FindProperty("_SparkleScale");
                MaterialProperty speed = FindProperty("_SparkleSpeed");
                MaterialProperty seed = FindProperty("_SparkleSeed");
                MaterialProperty blendMode = FindProperty("_SparkleBlendMode");

                editor.ShaderProperty(maskCh, MakeLabel("Masking Channel", "Effect Mask color channel to use"));
                editor.ShaderProperty(mode, MakeLabel("Mode", "How sparkles react to light"));

                if (target.GetFloat("_SparkleMode") > 0)
                {
                    editor.ShaderProperty(blendMode, MakeLabel("Blend Mode", "How the effect combines with lighting"));
                }

                editor.ShaderProperty(shape, MakeLabel("Shape", "Changes the shape of sparkles"));
                editor.ColorProperty(color, "Sparkle Color");
                editor.ShaderProperty(size, MakeLabel("Size", "Sparkle size"));
                editor.ShaderProperty(scale, MakeLabel("Scale", "Sparkle tiling"));
                editor.ShaderProperty(speed, MakeLabel("Speed", "Sparkle flicker rate"));
                editor.ShaderProperty(seed, MakeLabel("Seed", "Use a high number for best results"));

                EditorGUI.indentLevel -= 2;
                DoSparkleGlow();
                DoSparkleAL();
                EditorGUI.indentLevel += 2;
            }

            EditorGUI.indentLevel -= 1;
        }
        else
        {
            target.SetFloat("_ShowSparkles", 0);
        }
        EditorGUI.indentLevel -= 2;
    }

    //Scrolling Rainbow
    private static bool showDoRainbow = false;
    void DoRainbow()
    {
        EditorGUI.indentLevel += 2;
        showDoRainbow = EditorGUILayout.Foldout(showDoRainbow, "Scrolling Rainbow", true, styleCheck(target.GetFloat("_EnableScrollingRainbow") == 1));
        if (showDoRainbow)
        {
            EditorGUI.indentLevel += 1;
            MaterialProperty tog = FindProperty("_EnableScrollingRainbow");
            float toglFl = target.GetFloat("_EnableScrollingRainbow");
            editor.ShaderProperty(tog, MakeLabel("Enable Rainbow"));

            if (toglFl == 1)
            {
                MaterialProperty maskCh = FindProperty("_RainbowMaskingChannel");
                MaterialProperty mode = FindProperty("_RainbowUVMode");
                MaterialProperty hueRange = FindProperty("_RainbowHueRange");
                MaterialProperty hue = FindProperty("_RainbowHue");
                MaterialProperty sat = FindProperty("_RainbowSaturation");
                MaterialProperty val = FindProperty("_RainbowValue");
                MaterialProperty rot = FindProperty("_RainbowRotation");
                MaterialProperty scale = FindProperty("_RainbowScale");
                MaterialProperty curve = FindProperty("_RainbowSpiralCurve");
                MaterialProperty center = FindProperty("_RainbowRadialCenter");
                MaterialProperty AnimBand = FindProperty("_RainbowALAnimationBand");
                MaterialProperty AnimMode = FindProperty("_RainbowALAnimationMode");
                MaterialProperty AnimSpeed = FindProperty("_RainbowALAnimationSpeed");
                MaterialProperty AnimStr = FindProperty("_RainbowALAnimationStrength");

                editor.ShaderProperty(maskCh, MakeLabel("Masking Channel", "Effect mask color channel to use"));
                editor.ShaderProperty(mode, MakeLabel("Mode", "Animation type"));
                editor.ShaderProperty(hueRange, MakeLabel("Hue Range", "Range of colors to show"));
                editor.ShaderProperty(hue, MakeLabel("Hue"));
                editor.ShaderProperty(sat, MakeLabel("Saturation"));
                editor.ShaderProperty(val, MakeLabel("Value"));

                if (target.GetFloat("_RainbowUVMode") > 0 && target.GetFloat("_RainbowUVMode") < 3)
                {
                    editor.ShaderProperty(rot, MakeLabel("Rotation"));
                }

                editor.ShaderProperty(scale, MakeLabel("Scale"));

                if (target.GetFloat("_RainbowUVMode") == 2)
                {
                    editor.ShaderProperty(curve, MakeLabel("Spiral Curve", "Tightens the spiral effct"));
                }

                if (target.GetFloat("_RainbowUVMode") == 1 || target.GetFloat("_RainbowUVMode") == 2)
                {
                    editor.ShaderProperty(center, MakeLabel("Radial Center"));
                }

                editor.ShaderProperty(AnimBand, MakeLabel("AudioLink Band", "AudioLink: Audio band to listen to"));
                editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
            }

            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //Iridescence
    private static bool showIridescense = false;
    void DoIridescence()
    {
        EditorGUI.indentLevel += 2;
        showIridescense = EditorGUILayout.Foldout(showIridescense, "Iridescence", true, EditorStyles.foldoutHeader);

        if (showIridescense)
        {
            EditorGUI.indentLevel += 1;
            //target.SetFloat("_ShowIridescence", 1);
            MaterialProperty tog = FindProperty("_Enableiridescence");
            float toglFl = target.GetFloat("_Enableiridescence");
            editor.ShaderProperty(tog, MakeLabel("Enable Iridescence"));

            if (toglFl == 1)
            {
                MaterialProperty maskCh = FindProperty("_IridescentMaskingChannel");
                MaterialProperty mode = FindProperty("_IridescentEmissionMode");
                MaterialProperty mode2 = FindProperty("_IridescentMode2");
                MaterialProperty lightMode = FindProperty("_IridescenceLightMode");
                MaterialProperty intensity = FindProperty("_IridescentIntensity");
                MaterialProperty scale = FindProperty("_IridescentScale");
                MaterialProperty offset = FindProperty("_IridescentOffset");
                MaterialProperty color1 = FindProperty("_IridescentEmissionColor1");
                MaterialProperty color2 = FindProperty("_IridescentEmissionColor2");
                MaterialProperty color3 = FindProperty("_IridescentEmissionColor3");
                MaterialProperty AnimBand = FindProperty("_IridescentALAnimationBand");
                MaterialProperty AnimMode = FindProperty("_IridescentALAnimationMode");
                MaterialProperty AnimSpeed = FindProperty("_IridescentALAnimationSpeed");
                MaterialProperty AnimStr = FindProperty("_IridescentALAnimationStrength");

                editor.ShaderProperty(maskCh, MakeLabel("Masking Channel", "Effect Mask color channel to use"));
                editor.ShaderProperty(mode2, MakeLabel("Mode", "How the effect reacts to light"));
                editor.ShaderProperty(mode, MakeLabel("Color Mode", "How the effect displays colors"));
                editor.ShaderProperty(lightMode, MakeLabel("Light Mode", "Which lighting to react to"));
                editor.ShaderProperty(intensity, MakeLabel("Intensity"));
                editor.ShaderProperty(scale, MakeLabel("Scale"));
                editor.ShaderProperty(offset, MakeLabel("Offset"));
                if (target.GetFloat("_IridescentEmissionMode") != 2 && target.GetFloat("_IridescentEmissionMode") != 4)
                {
                    editor.ColorProperty(color1, "Color 1");
                    editor.ColorProperty(color2, "Color 2");
                    editor.ColorProperty(color3, "Color 3");
                }

                editor.ShaderProperty(AnimBand, MakeLabel("AudioLink Band", "AudioLink: Audio band to listen to"));
                editor.ShaderProperty(AnimMode, MakeLabel("Animation Mode", "AudioLink: Animation type"));
                editor.ShaderProperty(AnimSpeed, MakeLabel("Animation Speed", "AudioLink: Animation speed/chronotensity"));
                editor.ShaderProperty(AnimStr, MakeLabel("Animation Strength", "AudioLink: Animation strength"));
            }

            EditorGUI.indentLevel -= 1;
        }
        EditorGUI.indentLevel -= 2;
    }

    //BlendOP Selector
    void DoBlendOPSelctor()
    {
        MaterialProperty src = FindProperty("_SourceBlendRGB");
        MaterialProperty dst = FindProperty("_DestinationBlendRGB");

        BlendOP operation = (BlendOP)target.GetFloat("_BlendOPIndex");
        EditorGUI.BeginChangeCheck();

        operation = (BlendOP)EditorGUILayout.EnumPopup(new GUIContent("Blend Operation"), operation);

        if (EditorGUI.EndChangeCheck())
        {
            editor.RegisterPropertyChangeUndo("Blend Operation");
            target.SetFloat("_BlendOPIndex", (float)operation);

            if (target.GetFloat("_BlendOPIndex") == 0)
            {
                target.SetFloat("_SourceBlendRGB", 5);
                target.SetFloat("_DestinationBlendRGB", 10);
            }

            if (target.GetFloat("_BlendOPIndex") == 1)
            {
                target.SetFloat("_SourceBlendRGB", 1);
                target.SetFloat("_DestinationBlendRGB", 1);
            }

            if (target.GetFloat("_BlendOPIndex") == 2)
            {
                target.SetFloat("_SourceBlendRGB", 4);
                target.SetFloat("_DestinationBlendRGB", 1);
            }

            if (target.GetFloat("_BlendOPIndex") == 3)
            {
                target.SetFloat("_SourceBlendRGB", 2);
                target.SetFloat("_DestinationBlendRGB", 0);
            }

        }

    }

    void DoMaskClip()
    {
        MaterialProperty clip = FindProperty("_MaskClipValue");
        BlendMode mode = (BlendMode)target.GetFloat("_BlendModeIndex");
        if (mode == BlendMode.Opaque)
        {
            target.SetFloat("_MaskClipValue", 1f);
        }

        editor.ShaderProperty(clip, MakeLabel("Mask Clip"));
    }

    void DoBlendMode()
    {
        BlendMode mode = (BlendMode)target.GetFloat("_BlendModeIndex");

        EditorGUI.BeginChangeCheck();
        mode = (BlendMode)EditorGUILayout.EnumPopup(new GUIContent("Rendering Mode"), mode);

        if (EditorGUI.EndChangeCheck())
        {
            #if FURALITY_SHADER_UI_DEBUG
            Debug.Log($"Furality Shader GUI: {mode}");
            #endif
            editor.RegisterPropertyChangeUndo("Blend Mode");
            target.SetFloat("_BlendModeIndex", (float)mode);

            if (target.GetFloat("_BlendModeIndex") == 0)
            {
                this.target.SetOverrideTag("RenderType", "Opaque");
                this.target.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Geometry;
                this.target.SetInt("_SourceBlendRGB", (int)UnityEngine.Rendering.BlendMode.One);
                this.target.SetInt("_DestinationBlendRGB", (int)UnityEngine.Rendering.BlendMode.Zero);
                this.target.SetInt("_ZWrite", 1);
                this.target.DisableKeyword("_ALPHATEST_ON");
                //this.target.SetInt("_ALPHATEST", 0);
                this.target.DisableKeyword("_ALHPABLEND_ON");
                //this.target.SetInt("_ALPHABLEND", 0);
                this.target.DisableKeyword("_ALPHAPREMULTIPLY_ON");
                //this.target.SetInt("_ALPHAPREMULTIPLY", 0);
                this.target.EnableKeyword("_BLEND_OFF");
            }
            else if (target.GetFloat("_BlendModeIndex") == 1)
            {
                this.target.SetOverrideTag("RenderType", "TransparentCutout");
                this.target.renderQueue = (int)UnityEngine.Rendering.RenderQueue.AlphaTest;
                this.target.SetInt("_SourceBlendRGB", (int)UnityEngine.Rendering.BlendMode.One);
                this.target.SetInt("_DestinationBlendRGB", (int)UnityEngine.Rendering.BlendMode.Zero);
                this.target.SetInt("_ZWrite", 1);
                this.target.EnableKeyword("_ALPHATEST_ON");
                //this.target.SetInt("_ALPHATEST", 1);
                this.target.DisableKeyword("_ALPHABLEND_ON");
                //this.target.SetInt("_ALPHABLEND", 0);
                this.target.DisableKeyword("_ALPHAPREMULTIPLY_ON");
                //this.target.SetInt("_ALPHAPREMULTIPLY", 0);
                this.target.DisableKeyword("_BLEND_OFF");
            }
            else if (target.GetFloat("_BlendModeIndex") == 2)
            {
                this.target.SetOverrideTag("RenderType", "Transparent");
                this.target.renderQueue = (int)UnityEngine.Rendering.RenderQueue.Transparent;
                this.target.SetInt("_SourceBlendRGB", (int)UnityEngine.Rendering.BlendMode.SrcAlpha);
                this.target.SetInt("_DestinationBlendRGB", (int)UnityEngine.Rendering.BlendMode.OneMinusSrcAlpha);
                this.target.SetInt("_ZWrite", 1);
                this.target.DisableKeyword("_ALPHATEST_ON");
                //this.target.SetInt("_ALPHATEST", 0);
                this.target.EnableKeyword("_ALPHABLEND_ON");
                //this.target.SetInt("_ALPHABLEND", 0);
                this.target.DisableKeyword("_ALPHAPREMULTIPLY_ON");
                //this.target.SetInt("_ALPHAPREMULTIPLY", 0);
                this.target.DisableKeyword("_BLEND_OFF");
            }
        }
    }

    bool showRenderSettings = false;
    int renderQueueOffset = 0;
    float sliderValue = 0;
    void RenderSettings()
    {
        EditorGUI.BeginChangeCheck();

        showRenderSettings = GetFoldState("showRenderSettings");
        SetFoldState("showRenderSettings", EditorGUILayout.Foldout(showRenderSettings, "Render Settings", true, EditorStyles.foldoutHeader));
        if (showRenderSettings)
        {
            EditorGUI.indentLevel++;
            EditorGUILayout.BeginHorizontal();
            EditorGUILayout.LabelField("Render Queue Offset:");
            EditorGUILayout.BeginVertical();
            renderQueueOffset = EditorGUILayout.IntSlider(renderQueueOffset, -400, 400, GUILayout.ExpandWidth(true));
            EditorGUILayout.LabelField($"QUEUE: {target.renderQueue}", label, GUILayout.ExpandWidth(true));
            EditorGUILayout.EndVertical();
            EditorGUILayout.EndHorizontal();
            BlendMode mode = (BlendMode)target.GetFloat("_BlendModeIndex");
            if (mode == BlendMode.Opaque)
            {
                target.renderQueue = (int)RenderQueue.Geometry + renderQueueOffset;
            } else if (mode == BlendMode.Cutout)
            {
                target.renderQueue = (int)RenderQueue.AlphaTest + renderQueueOffset;
            } else {
                target.renderQueue = (int)RenderQueue.Transparent + renderQueueOffset;
            }
            EditorGUI.indentLevel--;
        }
        EditorGUI.EndChangeCheck();
    }
}

#endif