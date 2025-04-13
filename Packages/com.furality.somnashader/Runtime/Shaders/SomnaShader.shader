// Made with Amplify Shader Editor v1.9.8.1
// Available at the Unity Asset Store - http://u3d.as/y3X 
Shader "Furality/Somna Shader"
{
	Properties
	{
		[Enum(Default,0,Radial,1,Spiral,2,Direction Map,3,Reverse Direction,4,Vertex Pos,5)]_RainbowUVMode("Rainbow UV Mode", Int) = 0
		_RainbowHue("Rainbow Hue", Range( 0 , 1)) = 1
		_RainbowSaturation("Rainbow Saturation", Range( 0 , 1)) = 1
		_RainbowValue("Rainbow Value", Range( 0 , 1)) = 1
		_RainbowHueRange("Rainbow Hue Range", Range( 0 , 1)) = 1
		_RainbowSpeed("Rainbow Speed", Float) = 1
		_RainbowRotation("Rainbow Rotation", Float) = 0
		_RainbowScale("Rainbow Scale", Float) = 1
		_RainbowSpiralCurve("Rainbow Spiral Curve", Float) = 1
		_RainbowRadialCenter("Rainbow Radial Center", Vector) = (0.5,0.5,0,0)
		_Float1("Float 1", Float) = 1
		[ToggleUI]_ShowRainbow("_ShowRainbow", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4,Base Color,5)]_SpecularTintMap("Specular Tint Map", Float) = 4
		_DreamweaveColor02("Dreamweave Color 02", Color) = (0.9390857,0.3070933,0.9716981)
		_DreamweaveColor01("Dreamweave Color 01", Color) = (0,0.9388051,1)
		_DreamweavePos("Dreamweave Pos", Float) = 75
		_DreamweavePosSpeed("Dreamweave Pos Speed", Float) = 0.2
		_DreamweaveSwapFrequency("Dreamweave Swap Frequency", Float) = 0.1
		_DreamweaveDistortionSpeed("Dreamweave Distortion Speed", Vector) = (0,0,0,0)
		_DreamWeaveOffset("DreamWeaveOffset", Vector) = (0,0,0,0)
		_DreamWeaveScale("DreamWeaveScale", Vector) = (1,1,0,0)
		_DreamweaveSwapSpeed("Dreamweave Swap Speed", Range( 0 , 1)) = 0.25
		_DreamweaveAngle("Dreamweave Angle", Vector) = (0,1,0,0)
		_DreamweaveNormalScale("Dreamweave Normal Scale", Range( 0 , 1)) = 1
		_DreamweaveSoftness("Dreamweave Softness", Range( 0 , 20)) = 17.5
		_DreamweaveColorOffset("Dreamweave Color Offset", Range( -1 , 1)) = 0
		_DreamweaveGridThickness("Dreamweave Grid Thickness", Range( 0 , 1)) = 0.85
		_DreamweaveGridTile("Dreamweave Grid Tile", Float) = 40
		_StarshineScale("Starshine Scale", Vector) = (1,3,1,0)
		_StarshineColor("Starshine Color", Color) = (0.8862746,0.627451,0.6235294)
		_StarshineSpeed("Starshine Speed", Float) = 0.1
		_StarshineIntensity("Starshine Intensity", Range( 0 , 5)) = 2
		[ToggleUI]_StarshineBaseColor("Use Base Color", Float) = 0
		_StarshineMetallic("Starshine Metallic", Range( 0 , 1)) = 1
		[Enum(Metallic,0,Specular,1,Packed,2)]_Workflow("Workflow", Float) = 0
		_MainTex("Main Texture", 2D) = "white" {}
		_Color("Color", Color) = (1,1,1,1)
		_AnimatedOffsetMainTex("AnimatedOffset MainTex", Vector) = (0,0,0,0)
		_AnimatedOffsetDirectionalMap("AnimatedOffset DirectionalMap", Vector) = (0,0,0,0)
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MainTexUV("MainTexUV", Float) = 0
		_EmissionMap("EmissionMap", 2D) = "white" {}
		[HDR]_EmissionColor("EmissionColor", Color) = (0,0,0)
		_AnimatedOffsetEmssion("AnimatedOffset Emssion", Vector) = (0,0,0,0)
		[Enum(UnityEngine.Rendering.CullMode)]_Culling("Culling", Float) = 2
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_EmissionUV("EmissionUV", Float) = 0
		[Normal]_BumpMap("Normal", 2D) = "bump" {}
		_BumpScale("BumpScale", Range( 0 , 1)) = 1
		_MaskClipValue("MaskClipValue", Float) = 0.5
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_NormalMapUV("NormalMapUV", Float) = 0
		[Header(Detail Normal)][Normal]_DetailNormal("DetailNormal", 2D) = "bump" {}
		_BumpScale1("Detail Normal Scale", Range( 0 , 1)) = 1
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DetailUV("DetailUV", Float) = 0
		_MaskMap01("Metallic", 2D) = "white" {}
		_MetallicMult("Metallic", Range( 0 , 1)) = 0
		_GlossMult("Smoothness", Range( 0 , 1)) = 0.5
		[HDR]_SpecularTint("Specular Tint", Color) = (1,1,1)
		[ToggleUI]_InvertGloss("Invert Gloss", Float) = 0
		_OcclusionPower("Occlusion Power", Range( 0 , 1)) = 1
		_AnimatedOffsetMaskMap01("AnimatedOffset MaskMap01", Vector) = (0,0,0,0)
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap01UV("MaskMap01UV", Float) = 0
		_MaskMap02("MaskMap02", 2D) = "white" {}
		_AnimatedOffsetMaskMap02("AnimatedOffset MaskMap02", Vector) = (0,0,0,0)
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap02UV("MaskMap02UV", Float) = 0
		_MaskMap03("MaskMap03", 2D) = "white" {}
		_AnimatedOffsetMaskMap03("AnimatedOffset MaskMap03", Vector) = (0,0,0,0)
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap03UV("MaskMap03UV", Float) = 0
		_MaskMap04("MaskMap04", 2D) = "white" {}
		_AnimatedOffsetMaskMap04("AnimatedOffset MaskMap04", Vector) = (0,0,0,0)
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_MaskMap04UV("MaskMap04UV", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_StarshellUV("StarshellUV", Float) = 0
		_OutlineColor1("Outline Color", Color) = (0,0,0,1)
		_OutlineWidth1("Outline Width", Range( 0 , 1000)) = 20
		_ShellWidth("Shell Width", Range( 0 , 256)) = 1
		_MaxOutlineWidth1("Max Outline Width", Range( 0 , 1000)) = 350
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_TileDiscardUV("TileDiscardUV", Float) = 0
		_UVTileDissolveAlpha_Row3_0("Row 3 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_1("Row 3 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_2("Row 3 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row3_3("Row 3 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_0("Row 2 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_1("Row 2 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_2("Row 2 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row2_3("Row 2 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_0("Row 1 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_1("Row 1 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_2("Row 1 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row1_3("Row 1 Column 3", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_0("Row 0 Column 0", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_1("Row 0 Column 1", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_2("Row 0 Column 2", Range( 0 , 1)) = 0
		_UVTileDissolveAlpha_Row0_3("Row 0 Column 3", Range( 0 , 1)) = 0
		[ToggleUI]_UDIMDiscardRow3_0("UDIMDiscardRow3_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_1("UDIMDiscardRow3_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_2("UDIMDiscardRow3_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow3_3("UDIMDiscardRow3_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_0("UDIMDiscardRow2_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_1("UDIMDiscardRow2_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_2("UDIMDiscardRow2_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow2_3("UDIMDiscardRow2_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_0("UDIMDiscardRow1_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_1("UDIMDiscardRow1_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_2("UDIMDiscardRow1_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow1_3("UDIMDiscardRow1_3", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_0("UDIMDiscardRow0_0", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_1("UDIMDiscardRow0_1", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_2("UDIMDiscardRow0_2", Float) = 0
		[ToggleUI]_UDIMDiscardRow0_3("UDIMDiscardRow0_3", Float) = 0
		[ToggleUI]_StardustZwrite("StardustZwrite", Float) = 1
		_SheetSize("Sheet Size (square)", Float) = 3
		_ConstellationAmount("Amount", Range( 0.25 , 2)) = 0.3
		_FadeFreqency("Fade Freqency", Float) = 0.035
		[HDR]_ConstellationColor("ConstellationColor", Color) = (1,1,1)
		_Constellation("Constellation", 2D) = "white" {}
		_EdgeFade("Edge Hide", Range( 0 , 1)) = 1
		[Toggle(_ALPHAPREMULTIPLY_ON)] _ALPHAPREMULTIPLY("_ALPHAPREMULTIPLY", Float) = 0
		_FavoriteColor("Favorite Color", Color) = (0.5,0.5,0.5)
		[ToggleUI]_SizeClip("Screenspace Size Clip", Float) = 1
		_SparkleSize("Sparkle Size", Range( 0 , 0.25)) = 0.03
		_StarShellSparkleScale("StarShell Sparkle Scale", Float) = 64
		_StencilReference("Stencil Reference", Range( 1 , 255)) = 1
		_StardustHeightScale("Stardust HeightScale", Float) = 0
		[ToggleUI]_StardustBaseColor("StardustBaseColor", Float) = 0
		[ToggleUI]_RainbowOutline("Rainbow Outline", Float) = 0
		[ToggleUI]_RainbowStardust("Rainbow Stardust", Float) = 0
		[Toggle(_FABRICLIGHT_ON)] _FabricLightEnable3("Fabric Lighting", Float) = 0
		_ZWrite("ZWrite", Float) = 1
		[Toggle(_FABRICLIGHT_ON)] _FabricLightEnable1("Fabric Lighting", Float) = 0
		[KeywordEnum(Standard,Toon)] _LightingStyle("Lighting Style", Float) = 0
		[Toggle(_FABRICLIGHT_ON)] _FabricLightEnable2("Fabric Lighting", Float) = 0
		_StarshellDensity("Starshell Density", Range( 0.2 , 2)) = 0.4
		_StarshellSpeed("Starshell Speed", Vector) = (0.0025,0.0025,0,0)
		_ConstellationSpeed("Constellation Speed", Vector) = (0.2,0.2,0,0)
		_StarShellSparkleSpeed("StarShell SparkleSpeed", Float) = 0.3
		[HDR]_StarshellColor("Starshell Color", Color) = (5.992157,5.992157,5.992157)
		[Toggle(_OUTLINE1_ON)] _Outline1Enable("_OutlineEnable", Float) = 0
		[Toggle(_STARSHELL_ON)] _StarshellEnable("_StarshellEnable", Float) = 0
		[Toggle(_CONSTELLATION_ON)] _ConstellationEnable("_ConstellationEnable", Float) = 0
		_DreamweaveEmission("Dreamweave Emission", Range( 0 , 1)) = 0
		_RainbowEmission("Rainbow Emission", Range( 0 , 1)) = 0
		[Toggle(_STARSHINE_ON)] _StarShineEnable("StarShine", Float) = 0
		[Toggle(_DREAMWEAVE_ON)] _DreamweaveEnable("Dreamweave", Float) = 0
		[Toggle(_FABRICLIGHT_ON)] _FabricLightEnable("Fabric Lighting", Float) = 0
		[Toggle(_RAINBOW_ON)] _RainbowEnable("Rainbow", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_MetallicMask("Metallic Map", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4,MainTexAlpha,5)]_OpacityMap("Opacity Map", Float) = 5
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_OcclusionMap("Occlusion Map", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_DetailNormalMask("Detail Normal Mask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_EmissionMaskMap("Emission Mask Map", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask3("Glow Mask 3", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_SpecularMask("Specular Mask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_StarshineMask("Starshine Mask", Float) = 2
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_OutlineMask("OutlineMask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_StardustHeightMap("StardustHeightMap", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4,Off,5)]_StarshellMask("StarshellMask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_DreamweaveMask("DreamweaveMask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4,Off,5)]_RainbowMask("RainbowMask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_FabricLightMap("_FabricLightMap", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ConstellationMask("_ConstellationMask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask1("Glow Mask 1", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask2("Glow Mask 2", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_GlowMask0("Glow Mask 0", Float) = 0
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4)]_ReflectionMask("Reflection Mask", Float) = 4
		[Enum(Map 01,0,Map 02,1,Map 03,2,Map 04,3,None,4,MainTexAlpha,5)]_GlossMap("Gloss Map", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask1Channel("Glow Mask 1 Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ReflectionMaskChannel("Reflection Mask Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask2Channel("Glow Mask 2 Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask3Channel("Glow Mask 3 Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlossChannel("Gloss Channel", Float) = 3
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_EmissionMaskChannel("Emission Mask Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_DetailNormalChannel("Detail Normal Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_MetallicChannel("Metallic Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OpacityChannel("OpacityChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OcclusionChannel("Occlusion Channel", Float) = 1
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_StarshineChannel("Starshine Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_OutlineChannel("OutlineChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_DreamweaveChannel("DreamweaveChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_RainbowChannel("RainbowChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_ConstellationChannel("ConstellationChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_FabricLightChannel("FabricLightChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_StardustHeightCh("StardustHeightCh", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_StarshellChannel("StarshellChannel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_SpecularMaskChannel("Specular Mask Channel", Float) = 0
		[Enum(Red,0,Green,1,Blue,2,Alpha,3)]_GlowMask0Channel("Glow Mask 0 Channel", Float) = 0
		[HDR]_EmissionGlowTint("EmissionGlowTint", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_EmissionGlowZone("EmissionGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_EmissionGlowMode("EmissionGlowMode", Int) = 0
		[Enum(Multiply,0,Additive,1)]_EmissionGlowBlendMode("EmissionGlowBlendMode", Int) = 0
		_EmissionGlowMinBrightness("EmissionGlowMinBrightness", Range( 0 , 1)) = 0
		_EmissionGlowPulseDir("EmissionGlowPulseDir", Float) = 0
		_EmissionGlowPulseScale("EmissionGlowPulseScale", Float) = 127
		_EmissionGlowPulseOffset("EmissionGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_EmissionGlowAnimationBand("EmissionGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_EmissionGlowAnimationMode("EmissionGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_EmissionGlowAnimationSpeed("EmissionGlowAnimationSpeed", Int) = 0
		_EmissionGlowAnimationStrength("EmissionGlowAnimationStrength", Float) = 1
		_EmissionGlowRadialCenter("EmissionGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_EmissionReactiveTint("EmissionReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_EmissionReactiveBand("EmissionReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_EmissionReactiveMode("EmissionReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_EmissionReactiveBlendMode("EmissionReactiveBlendMode", Int) = 0
		_EmissionReactiveMinBrightness("EmissionReactiveMinBrightness", Range( 0 , 1)) = 0
		_EmissionReactiveGlobalSmoothing("EmissionReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_EmissionReactivePulseDir("EmissionReactivePulseDir", Float) = 0
		_EmissionReactivePulseScale("EmissionReactivePulseScale", Float) = 127
		_EmissionReactivePulseOffset("EmissionReactivePulseOffset", Float) = 0
		_EmissionReactiveRadialCenter("EmissionReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowEmissGlow("_ShowEmissGlow", Float) = 0
		_ShowEmissAL("_ShowEmissAL", Float) = 0
		_DirectionalMap("DirectionalMap", 2D) = "white" {}
		[ToggleUI]_UseFallback0("Use Fallback 0", Float) = 0
		[HDR]_RedChGlowTint("RedChGlowTint", Color) = (1,1,1,0)
		[HDR]_RedChGlowFallback("RedChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_RedChGlowZone("RedChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_RedChGlowMode("RedChGlowMode", Int) = 0
		_RedChGlowMinBrightness("RedChGlowMinBrightness", Range( 0 , 1)) = 0
		_RedChGlowPulseDir("RedChGlowPulseDir", Float) = 0
		_RedChGlowPulseScale("RedChGlowPulseScale", Float) = 127
		_RedChGlowPulseOffset("RedChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_RedChGlowAnimationBand("RedChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_RedChGlowAnimationMode("RedChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_RedChGlowAnimationSpeed("RedChGlowAnimationSpeed", Int) = 0
		_RedChGlowAnimationStrength("RedChGlowAnimationStrength", Float) = 1
		_RedChGlowRadialCenter("RedChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_RedChReactiveTint("RedChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_RedChReactiveBand("RedChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_RedChReactiveMode("RedChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_RedChReactiveBlendMode("RedChReactiveBlendMode", Int) = 0
		_RedChReactiveMinBrightness("RedChReactiveMinBrightness", Range( 0 , 1)) = 0
		_RedChReactiveGlobalSmoothing("RedChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_RedChReactivePulseDir("RedChReactivePulseDir", Float) = 0
		_RedChReactivePulseScale("RedChReactivePulseScale", Float) = 127
		_RedChReactivePulseOffset("RedChReactivePulseOffset", Float) = 0
		_RedChReactiveRadialCenter("RedChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowRedGlow("_ShowRedGlow", Float) = 0
		_ShowRedAL("_ShowRedAL", Float) = 0
		[ToggleUI]_EnableRedChannel("_EnableRedChannel", Float) = 0
		[ToggleUI]_UseFallback1("Use Fallback 1", Float) = 0
		[HDR]_GreenChGlowTint("GreenChGlowTint", Color) = (1,1,1,0)
		[HDR]_GreenChGlowFallback("GreenChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_GreenChGlowZone("GreenChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_GreenChGlowMode("GreenChGlowMode", Int) = 0
		_GreenChReactiveMinBrightness("GreenChReactiveMinBrightness", Range( 0 , 1)) = 0
		_GreenChGlowPulseDir("GreenChGlowPulseDir", Float) = 0
		_GreenChGlowPulseScale("GreenChGlowPulseScale", Float) = 127
		_GreenChGlowPulseOffset("GreenChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_GreenChGlowAnimationBand("GreenChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_GreenChGlowAnimationMode("GreenChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_GreenChGlowAnimationSpeed("GreenChGlowAnimationSpeed", Int) = 0
		_GreenChGlowAnimationStrength("GreenChGlowAnimationStrength", Float) = 1
		_GreenChGlowRadialCenter("GreenChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_GreenChReactiveTint("GreenChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_GreenChReactiveBand("GreenChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_GreenChReactiveMode("GreenChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_GreenChReactiveBlendMode("GreenChReactiveBlendMode", Int) = 0
		_GreenChGlowMinBrightness("GreenChGlowMinBrightness", Range( 0 , 1)) = 0
		_GreenChReactiveGlobalSmoothing("GreenChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_GreenChReactivePulseDir("GreenChReactivePulseDir", Float) = 0
		_GreenChReactivePulseScale("GreenChReactivePulseScale", Float) = 127
		_GreenChReactivePulseOffset("GreenChReactivePulseOffset", Float) = 0
		_GreenChReactiveRadialCenter("GreenChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowGreenGlow("_ShowGreenGlow", Float) = 0
		_ShowGreenAL("_ShowGreenAL", Float) = 0
		[ToggleUI]_EnableGreenChannel("_EnableGreenChannel", Float) = 0
		[ToggleUI]_UseFallback2("Use Fallback 2", Float) = 0
		[HDR]_BlueChGlowTint("BlueChGlowTint", Color) = (1,1,1,0)
		[HDR]_BlueChGlowFallback("BlueChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_BlueChGlowZone("BlueChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_BlueChGlowMode("BlueChGlowMode", Int) = 0
		_BlueChGlowMinBrightness("BlueChGlowMinBrightness", Range( 0 , 1)) = 0
		_BlueChGlowPulseDir("BlueChGlowPulseDir", Float) = 0
		_BlueChGlowPulseScale("BlueChGlowPulseScale", Float) = 127
		_BlueChGlowPulseOffset("BlueChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_BlueChGlowAnimationBand("BlueChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_BlueChGlowAnimationMode("BlueChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_BlueChGlowAnimationSpeed("BlueChGlowAnimationSpeed", Int) = 0
		_BlueChGlowAnimationStrength("BlueChGlowAnimationStrength", Float) = 1
		_BlueChGlowRadialCenter("BlueChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_BlueChReactiveTint("BlueChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_BlueChReactiveBand("BlueChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_BlueChReactiveMode("BlueChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_BlueChReactiveBlendMode("BlueChReactiveBlendMode", Int) = 0
		_BlueChReactiveMinBrightness("BlueChReactiveMinBrightness", Range( 0 , 1)) = 0
		_BlueChReactiveGlobalSmoothing("BlueChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_BlueChReactivePulseDir("BlueChReactivePulseDir", Float) = 0
		_BlueChReactivePulseScale("BlueChReactivePulseScale", Float) = 127
		_BlueChReactivePulseOffset("BlueChReactivePulseOffset", Float) = 0
		_BlueChReactiveRadialCenter("BlueChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowBlueGlow("_ShowBlueGlow", Float) = 0
		_ShowBlueAL("_ShowBlueAL", Float) = 0
		[ToggleUI]_EnableBlueChannel("_EnableBlueChannel", Float) = 0
		[ToggleUI]_UseFallback3("Use Fallback 3", Float) = 0
		[HDR]_AlphaChGlowTint("AlphaChGlowTint", Color) = (1,1,1,0)
		[HDR]_AlphaChGlowFallback("AlphaChGlowFallback", Color) = (1,1,1,0)
		[Enum(None,0,Zone 1,1,Zone 2,2,Zone 3,3,Zone 4,4,Gradient 1,5,Gradient 2,6,Gradient 3,7)]_AlphaChGlowZone("AlphaChGlowZone", Int) = 0
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4)]_AlphaChGlowMode("AlphaChGlowMode", Int) = 0
		_AlphaChGlowMinBrightness("AlphaChGlowMinBrightness", Range( 0 , 1)) = 0
		_AlphaChGlowPulseDir("AlphaChGlowPulseDir", Float) = 0
		_AlphaChGlowPulseScale("AlphaChGlowPulseScale", Float) = 127
		_AlphaChGlowPulseOffset("AlphaChGlowPulseOffset", Float) = 0
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_AlphaChGlowAnimationBand("AlphaChGlowAnimationBand", Int) = 10
		[Enum(Default,0,Wobble,1,Smooth,2,Hard Stop,3,Constant,4)]_AlphaChGlowAnimationMode("AlphaChGlowAnimationMode", Int) = 0
		[Enum(Slow,0,Fast,1)]_AlphaChGlowAnimationSpeed("AlphaChGlowAnimationSpeed", Int) = 0
		_AlphaChGlowAnimationStrength("AlphaChGlowAnimationStrength", Float) = 1
		_AlphaChGlowRadialCenter("AlphaChGlowRadialCenter", Vector) = (0.5,0.5,0,0)
		[HDR]_AlphaChReactiveTint("AlphaChReactiveTint", Color) = (1,1,1,0)
		[Enum(None,10,Bass,0,Low Mid,1,High Mid,2,Treble,3)]_AlphaChReactiveBand("AlphaChReactiveBand", Int) = 10
		[Enum(Global,0,Pulse,1,Radial,2,Direction Map,3,Reversed Direction Map,4,Smooth Global,5)]_AlphaChReactiveMode("AlphaChReactiveMode", Int) = 0
		[Enum(Multiply,0,Additive,1,Reversed Multiply,2,Reversed Additve,3)]_AlphaChReactiveBlendMode("AlphaChReactiveBlendMode", Int) = 0
		_AlphaChReactiveMinBrightness("AlphaChReactiveMinBrightness", Range( 0 , 1)) = 0
		_AlphaChReactiveGlobalSmoothing("AlphaChReactiveGlobalSmoothing", Range( 0 , 2)) = 1
		_AlphaChReactivePulseDir("AlphaChReactivePulseDir", Float) = 0
		_AlphaChReactivePulseScale("AlphaChReactivePulseScale", Float) = 127
		_AlphaChReactivePulseOffset("AlphaChReactivePulseOffset", Float) = 0
		_AlphaChReactiveRadialCenter("AlphaChReactiveRadialCenter", Vector) = (0.5,0.5,0,0)
		_ShowAlphaGlow("_ShowAlphaGlow", Float) = 0
		_ShowAlphaAL("_ShowAlphaAL", Float) = 0
		[ToggleUI]_EnableAlphaChannel("_EnableAlphaChannel", Float) = 0
		[Enum(UV0,0,UV1,1,UV2,2,UV3,3,UV4,4)]_DirectionMapUV("DirectionMapUV", Float) = 0
		[ToggleUI]_ReplaceBaseColor("Replace Base Color", Float) = 0
		[Toggle(_EMISSION)] _EnableEmission("Emission", Float) = 0
		_ShowMaps("ShowMaps", Float) = 0
		_ShowLighting("ShowLighting", Float) = 0
		_ShowEmissionMain("ShowEmissionMain", Float) = 0
		_ShowEmission("ShowEmission", Float) = 0
		_ShowEffects("ShowEffects", Float) = 0
		_ShowStarshine("ShowStarshine", Float) = 0
		_ShowOutline("ShowOutline", Float) = 0
		_ShowStarshell("ShowStarshell", Float) = 0
		_ShowDreamweave("ShowDreamweave", Float) = 0
		_ShowTileDiscard("ShowTileDiscard", Float) = 0
		_ShowEmission04("ShowEmission04", Float) = 0
		_ShowEmission02("ShowEmission02", Float) = 0
		_ShowEmission03("ShowEmission03", Float) = 0
		_ShowEmission01("ShowEmission01", Float) = 0
		_ShowConstellation("ShowConstellation", Float) = 0
		_ShowMain("ShowMain", Float) = 0
		_BlendModeIndex("_BlendModeIndex", Float) = 0
		_BlendOPsrc("_BlendOPsrc", Float) = 5
		_BlendOPIndex("_BlendOPIndex", Float) = 0
		[Enum(UnityEngine.Rendering.BlendOp)]_BlendOpRGB("Blend Op RGB", Float) = 0
		_BlendOPdst("_BlendOPdst", Float) = 10
		[Enum(UnityEngine.Rendering.BlendMode)]_DestinationBlendRGB("Destination Blend RGB", Float) = 0
		[Enum(UnityEngine.Rendering.BlendMode)]_SourceBlendRGB("Source Blend RGB", Float) = 1

		
	}
	
	SubShader
	{
		
		
		Tags { "RenderType"="Opaque" "Queue"="Geometry" "DisableBatching"="False" }
	LOD 0

		Cull [_Culling]
		AlphaToMask Off
		ZWrite [_ZWrite]
		ZTest LEqual
		ColorMask RGBA

		Stencil
		{
			Ref [_StencilReference]
			Comp Always
			Pass Replace
		}
		Blend [_SourceBlendRGB] [_DestinationBlendRGB]
		

		CGINCLUDE
		
		#pragma target 5.0
		#pragma multi_compile _ALPHATEST_ON _ALPHABLEND_ON _BLEND_OFF

		ENDCG
	


		
		Pass
		{
			Name "FORWARD"
			Tags { "LightMode"="ForwardBase" }

	CGPROGRAM




			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_VERSION 19801
			#pragma multi_compile_fwdbase





			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_fwdbase
			#pragma multi_compile _ SHADOWS_SCREEN
			#pragma multi_compile _ VERTEXLIGHT_ON
			#ifndef UNITY_PASS_FORWARDBASE
				#define UNITY_PASS_FORWARDBASE
			#endif
			#include "HLSLSupport.cginc"
			#ifndef UNITY_INSTANCED_LOD_FADE
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#ifndef UNITY_INSTANCED_SH
				#define UNITY_INSTANCED_SH
			#endif
			#ifndef UNITY_INSTANCED_LIGHTMAPSTS
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			//#define UNITY_SHOULD_SAMPLE_SH (defined(LIGHTPROBE_SH) && !defined(UNITY_PASS_FORWARDADD) && !defined(UNITY_PASS_PREPASSBASE) && !defined(UNITY_PASS_SHADOWCASTER) && !defined(UNITY_PASS_META))
		
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			//#include "UnityLightingCommon.cginc"
			//#include "UnityStandardCore.cginc"
			#include "UnityStandardBRDF.cginc"

			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES1
			#define ASE_NEEDS_VERT_TEXTURE_COORDINATES2
			#define ASE_NEEDS_VERT_NORMAL
			#pragma shader_feature_local _LIGHTINGSTYLE_STANDARD _LIGHTINGSTYLE_TOON
			#pragma shader_feature _ALPHAPREMULTIPLY_ON
			#pragma shader_feature_local _STARSHINE_ON
			#pragma shader_feature_local _RAINBOW_ON
			#pragma shader_feature_local _DREAMWEAVE_ON
			#pragma shader_feature_local _EMISSION
			#pragma shader_feature_local _FABRICLIGHT_ON
			#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
		
				
				
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float4 ase_lmap : TEXCOORD13;
				float4 ase_sh : TEXCOORD14;
				sample float4 ase_texcoord15 : TEXCOORD15;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

		
			uniform float _OutlineChannel;
			uniform float _OutlineMask;
			uniform float _DreamweaveMask;
			uniform float _DreamweaveChannel;
			uniform float _StarshellChannel;
			uniform float _StarshellMask;
			uniform float _StardustHeightMap;
			uniform float _StardustHeightCh;
			uniform float _RainbowChannel;
			uniform float _RainbowMask;
			uniform float _FabricLightChannel;
			uniform float _FabricLightMap;
			uniform float _ConstellationChannel;
			uniform float _ConstellationMask;
			uniform float _BlendModeIndex;
			uniform float _Culling;
			uniform float _BlendOPsrc;
			uniform float _BlendOPdst;
			uniform float _BlendOPIndex;
			uniform float _ShowMaps;
			uniform float _ShowLighting;
			uniform float _ShowEmission;
			uniform float _ShowEmission01;
			uniform float _ShowEmissionMain;
			uniform float _ShowEmission02;
			uniform float _ShowEmission03;
			uniform float _ShowEmission04;
			uniform float _ShowTileDiscard;
			uniform float _ShowEffects;
			uniform float _ShowStarshine;
			uniform float _ShowDreamweave;
			uniform float _ShowOutline;
			uniform float _ShowStarshell;
			uniform float _ZWrite;
			uniform float _BlendOpRGB;
			uniform float _StencilReference;
			uniform float3 _FavoriteColor;
			uniform float _DestinationBlendRGB;
			uniform float _SourceBlendRGB;
			uniform float _ShowRainbow;
			uniform float _ShowRedGlow;
			uniform float _ShowRedAL;
			uniform float _ShowEmissGlow;
			uniform float _ShowEmissAL;
			uniform float _ShowGreenGlow;
			uniform float _ShowGreenAL;
			uniform float _ShowBlueGlow;
			uniform float _ShowBlueAL;
			uniform float _ShowAlphaGlow;
			uniform float _ShowAlphaAL;
			uniform float _ShowMain;
			uniform float _ShowConstellation;
			uniform float _StardustZwrite;
			uniform float _TileDiscardUV;
			uniform float _UVTileDissolveAlpha_Row0_0;
			uniform float _UDIMDiscardRow0_0;
			uniform float _UVTileDissolveAlpha_Row0_1;
			uniform float _UDIMDiscardRow0_1;
			uniform float _UVTileDissolveAlpha_Row0_2;
			uniform float _UDIMDiscardRow0_2;
			uniform float _UVTileDissolveAlpha_Row0_3;
			uniform float _UDIMDiscardRow0_3;
			uniform float _UVTileDissolveAlpha_Row1_0;
			uniform float _UDIMDiscardRow1_0;
			uniform float _UVTileDissolveAlpha_Row1_1;
			uniform float _UDIMDiscardRow1_1;
			uniform float _UVTileDissolveAlpha_Row1_2;
			uniform float _UDIMDiscardRow1_2;
			uniform float _UVTileDissolveAlpha_Row1_3;
			uniform float _UDIMDiscardRow1_3;
			uniform float _UVTileDissolveAlpha_Row2_0;
			uniform float _UDIMDiscardRow2_0;
			uniform float _UVTileDissolveAlpha_Row2_1;
			uniform float _UDIMDiscardRow2_1;
			uniform float _UVTileDissolveAlpha_Row2_2;
			uniform float _UDIMDiscardRow2_2;
			uniform float _UVTileDissolveAlpha_Row2_3;
			uniform float _UDIMDiscardRow2_3;
			uniform float _UVTileDissolveAlpha_Row3_0;
			uniform float _UDIMDiscardRow3_0;
			uniform float _UVTileDissolveAlpha_Row3_1;
			uniform float _UDIMDiscardRow3_1;
			uniform float _UVTileDissolveAlpha_Row3_2;
			uniform float _UDIMDiscardRow3_2;
			uniform float _UVTileDissolveAlpha_Row3_3;
			uniform float _UDIMDiscardRow3_3;
			uniform float _ReflectionMaskChannel;
			uniform float _ReflectionMask;
			uniform sampler2D _MaskMap04;
			uniform float _MaskMap04UV;
			uniform float4 _MaskMap04_ST;
			uniform float2 _AnimatedOffsetMaskMap04;
			uniform sampler2D _MaskMap03;
			uniform float _MaskMap03UV;
			uniform float4 _MaskMap03_ST;
			uniform float2 _AnimatedOffsetMaskMap03;
			uniform sampler2D _MaskMap02;
			uniform float _MaskMap02UV;
			uniform float4 _MaskMap02_ST;
			uniform float2 _AnimatedOffsetMaskMap02;
			uniform sampler2D _MaskMap01;
			uniform float _MaskMap01UV;
			uniform float4 _MaskMap01_ST;
			uniform float2 _AnimatedOffsetMaskMap01;
			uniform float4 _Color;
			uniform sampler2D _MainTex;
			uniform float _MainTexUV;
			uniform float4 _MainTex_ST;
			uniform float2 _AnimatedOffsetMainTex;
			uniform float3 _DreamweaveColor01;
			uniform float3 _DreamweaveColor02;
			uniform float _DreamweaveSoftness;
			uniform float3 _DreamweaveAngle;
			uniform float _DreamweavePos;
			uniform float _DreamweavePosSpeed;
			uniform sampler2D _BumpMap;
			uniform float _NormalMapUV;
			uniform float4 _BumpMap_ST;
			uniform float _BumpScale;
			uniform sampler2D _DetailNormal;
			uniform float2 _DreamWeaveScale;
			uniform float2 _DreamWeaveOffset;
			uniform float2 _DreamweaveDistortionSpeed;
			uniform float _DreamweaveNormalScale;
			uniform float _DreamweaveColorOffset;
			uniform float _DreamweaveSwapFrequency;
			uniform float _DreamweaveSwapSpeed;
			uniform float _DreamweaveGridTile;
			uniform float _DreamweaveGridThickness;
			uniform float _DetailUV;
			uniform float4 _DetailNormal_ST;
			uniform float _BumpScale1;
			uniform float _DetailNormalChannel;
			uniform float _DetailNormalMask;
			uniform float _Workflow;
			uniform float _OcclusionChannel;
			uniform float _OcclusionMap;
			uniform float _OcclusionPower;
			uniform float _Float1;
			uniform float _RainbowSpeed;
			uniform float _RainbowRotation;
			uniform float _RainbowSpiralCurve;
			uniform float2 _RainbowRadialCenter;
			uniform int _RainbowUVMode;
			uniform sampler2D _DirectionalMap;
			uniform float _DirectionMapUV;
			uniform float4 _DirectionalMap_ST;
			uniform float2 _AnimatedOffsetDirectionalMap;
			uniform float _RainbowScale;
			uniform float _RainbowHueRange;
			uniform float _RainbowHue;
			uniform float _RainbowSaturation;
			uniform float _RainbowValue;
			uniform float _EmissionMaskChannel;
			uniform float _EmissionMaskMap;
			uniform float3 _EmissionColor;
			uniform sampler2D _EmissionMap;
			uniform float _EmissionUV;
			uniform float4 _EmissionMap_ST;
			uniform float2 _AnimatedOffsetEmssion;
			uniform float _ReplaceBaseColor;
			uniform float _StarshineMetallic;
			uniform float3 _StarshineColor;
			uniform float _StarshineBaseColor;
			uniform float3 _SpecularTint;
			uniform float _SpecularTintMap;
			uniform float _StarshineChannel;
			uniform float _StarshineMask;
			uniform float _MetallicChannel;
			uniform float _MetallicMask;
			uniform float _MetallicMult;
			uniform float _GlossChannel;
			uniform float _GlossMap;
			uniform float _InvertGloss;
			uniform half _GlossMult;
			uniform float _SpecularMaskChannel;
			uniform float _SpecularMask;
			uniform float4 _RedChGlowFallback;
			uniform float _UseFallback0;
			uniform float _GlowMask0Channel;
			uniform float _GlowMask0;
			uniform float _GlowMask1Channel;
			uniform float _GlowMask1;
			uniform float _GlowMask2Channel;
			uniform float _GlowMask2;
			uniform float _GlowMask3Channel;
			uniform float _GlowMask3;
			uniform int _RedChGlowZone;
			uniform float _RedChGlowPulseDir;
			uniform float _RedChGlowPulseScale;
			uniform float _RedChGlowPulseOffset;
			uniform float _RedChGlowAnimationStrength;
			uniform int _RedChGlowAnimationBand;
			uniform int _RedChGlowAnimationMode;
			uniform int _RedChGlowAnimationSpeed;
			uniform float2 _RedChGlowRadialCenter;
			uniform int _RedChGlowMode;
			uniform float _RedChGlowMinBrightness;
			uniform float4 _RedChGlowTint;
			uniform int _RedChReactiveBand;
			uniform float _RedChReactivePulseDir;
			uniform float _RedChReactivePulseScale;
			uniform float _RedChReactivePulseOffset;
			uniform float2 _RedChReactiveRadialCenter;
			uniform int _RedChReactiveMode;
			uniform float _RedChReactiveGlobalSmoothing;
			uniform float _RedChReactiveMinBrightness;
			uniform float4 _RedChReactiveTint;
			uniform int _RedChReactiveBlendMode;
			uniform float _EnableRedChannel;
			uniform float4 _GreenChGlowFallback;
			uniform float _UseFallback1;
			uniform int _GreenChGlowZone;
			uniform float _GreenChGlowPulseDir;
			uniform float _GreenChGlowPulseScale;
			uniform float _GreenChGlowPulseOffset;
			uniform float _GreenChGlowAnimationStrength;
			uniform int _GreenChGlowAnimationBand;
			uniform int _GreenChGlowAnimationMode;
			uniform int _GreenChGlowAnimationSpeed;
			uniform float2 _GreenChGlowRadialCenter;
			uniform int _GreenChGlowMode;
			uniform float _GreenChGlowMinBrightness;
			uniform float4 _GreenChGlowTint;
			uniform int _GreenChReactiveBand;
			uniform float _GreenChReactivePulseDir;
			uniform float _GreenChReactivePulseScale;
			uniform float _GreenChReactivePulseOffset;
			uniform float2 _GreenChReactiveRadialCenter;
			uniform int _GreenChReactiveMode;
			uniform float _GreenChReactiveGlobalSmoothing;
			uniform float _GreenChReactiveMinBrightness;
			uniform float4 _GreenChReactiveTint;
			uniform int _GreenChReactiveBlendMode;
			uniform float _EnableGreenChannel;
			uniform float4 _BlueChGlowFallback;
			uniform float _UseFallback2;
			uniform int _BlueChGlowZone;
			uniform float _BlueChGlowPulseDir;
			uniform float _BlueChGlowPulseScale;
			uniform float _BlueChGlowPulseOffset;
			uniform float _BlueChGlowAnimationStrength;
			uniform int _BlueChGlowAnimationBand;
			uniform int _BlueChGlowAnimationMode;
			uniform int _BlueChGlowAnimationSpeed;
			uniform float2 _BlueChGlowRadialCenter;
			uniform int _BlueChGlowMode;
			uniform float _BlueChGlowMinBrightness;
			uniform float4 _BlueChGlowTint;
			uniform int _BlueChReactiveBand;
			uniform float _BlueChReactivePulseDir;
			uniform float _BlueChReactivePulseScale;
			uniform float _BlueChReactivePulseOffset;
			uniform float2 _BlueChReactiveRadialCenter;
			uniform int _BlueChReactiveMode;
			uniform float _BlueChReactiveGlobalSmoothing;
			uniform float _BlueChReactiveMinBrightness;
			uniform float4 _BlueChReactiveTint;
			uniform int _BlueChReactiveBlendMode;
			uniform float _EnableBlueChannel;
			uniform float4 _AlphaChGlowFallback;
			uniform float _UseFallback3;
			uniform int _AlphaChGlowZone;
			uniform float _AlphaChGlowPulseDir;
			uniform float _AlphaChGlowPulseScale;
			uniform float _AlphaChGlowPulseOffset;
			uniform float _AlphaChGlowAnimationStrength;
			uniform int _AlphaChGlowAnimationBand;
			uniform int _AlphaChGlowAnimationMode;
			uniform int _AlphaChGlowAnimationSpeed;
			uniform float2 _AlphaChGlowRadialCenter;
			uniform int _AlphaChGlowMode;
			uniform float _AlphaChGlowMinBrightness;
			uniform float4 _AlphaChGlowTint;
			uniform int _AlphaChReactiveBand;
			uniform float _AlphaChReactivePulseDir;
			uniform float _AlphaChReactivePulseScale;
			uniform float _AlphaChReactivePulseOffset;
			uniform float2 _AlphaChReactiveRadialCenter;
			uniform int _AlphaChReactiveMode;
			uniform float _AlphaChReactiveGlobalSmoothing;
			uniform float _AlphaChReactiveMinBrightness;
			uniform float4 _AlphaChReactiveTint;
			uniform int _AlphaChReactiveBlendMode;
			uniform float _EnableAlphaChannel;
			uniform int _EmissionGlowZone;
			uniform float _EmissionGlowPulseDir;
			uniform float _EmissionGlowPulseScale;
			uniform float _EmissionGlowPulseOffset;
			uniform float _EmissionGlowAnimationStrength;
			uniform int _EmissionGlowAnimationBand;
			uniform int _EmissionGlowAnimationMode;
			uniform int _EmissionGlowAnimationSpeed;
			uniform float2 _EmissionGlowRadialCenter;
			uniform int _EmissionGlowMode;
			uniform float _EmissionGlowMinBrightness;
			uniform float4 _EmissionGlowTint;
			uniform int _EmissionReactiveBand;
			uniform float _EmissionReactivePulseDir;
			uniform float _EmissionReactivePulseScale;
			uniform float _EmissionReactivePulseOffset;
			uniform float2 _EmissionReactiveRadialCenter;
			uniform int _EmissionReactiveMode;
			uniform float _EmissionReactiveGlobalSmoothing;
			uniform float _EmissionReactiveMinBrightness;
			uniform float4 _EmissionReactiveTint;
			uniform int _EmissionReactiveBlendMode;
			uniform int _EmissionGlowBlendMode;
			uniform float _StarshineSpeed;
			uniform float3 _StarshineScale;
			uniform float _StarshineIntensity;
			uniform float _DreamweaveEmission;
			uniform float _RainbowEmission;
			uniform float _OpacityMap;
			uniform float _OpacityChannel;
			uniform float _MaskClipValue;


			//This is a late directive
			
			float3 ProbeDir(  )
			{
				return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
			}
			
			float3 getThemeData( int Zone )
			{
				float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
				return result;
			}
			
			float3 CenterEye1_g12832(  )
			{
				#if defined(USING_STEREO_MATRICES)
				float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
				float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
				float3 centerEye = lerp(leftEye, rightEye, 0.5);
				#else
				float3 centerEye = _WorldSpaceCameraPos;
				#endif
				return centerEye;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 ASEComputeDiffuseAndFresnel0( float3 baseColor, float metallic, out float3 specularColor, out float oneMinusReflectivity )
			{
				#ifdef UNITY_COLORSPACE_GAMMA
					const float dielectricF0 = 0.220916301;
				#else
					const float dielectricF0 = 0.04;
				#endif
				specularColor = lerp( dielectricF0.xxx, baseColor, metallic );
				oneMinusReflectivity = 1.0 - metallic;
				return baseColor * oneMinusReflectivity;
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			
			inline float3 getProbes( float4 uvw )
			{
				return ShadeSH9(uvw);
			}
			
			int LightExists8_g12826(  )
			{
				int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
				if(lightEnv != 1){
					return 0;
					}
				return 1;
			}
			
			float3 sampleReflectionProbe1050( float3 uvw )
			{
				half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, uvw, 5); //('cubemap', 'sample coordinate', 'map-map level')
				         half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR);
				         return half4(skyColor, 1.0);
			}
			
			inline int IsLumaActive11_g12827( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g12828(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			float3 LightColorZero(  )
			{
				return unity_LightColor[0];
			}
			
			float3 LightPosZero(  )
			{
				return float3(unity_4LightPosX0.x, unity_4LightPosY0.x, unity_4LightPosZ0.x);
			}
			
			float LightAttenZero(  )
			{
				return unity_4LightAtten0.x;
			}
			
			float3 LightColorOne(  )
			{
				return unity_LightColor[1];
			}
			
			float3 LightPosOne(  )
			{
				return float3(unity_4LightPosX0.y, unity_4LightPosY0.y, unity_4LightPosZ0.y);
			}
			
			float LightAttenOne(  )
			{
				return unity_4LightAtten0.y;
			}
			
			float3 LightColorTwo(  )
			{
				return unity_LightColor[2];
			}
			
			float3 LightPosTwo(  )
			{
				return float3(unity_4LightPosX0.z, unity_4LightPosY0.z, unity_4LightPosZ0.z);
			}
			
			float LightAttenTwo(  )
			{
				return unity_4LightAtten0.z;
			}
			
			float3 LightColorThree(  )
			{
				return unity_LightColor[3];
			}
			
			float3 LightPosThree(  )
			{
				return float3(unity_4LightPosX0.w, unity_4LightPosY0.w, unity_4LightPosZ0.w);
			}
			
			float LightAttenThree(  )
			{
				return unity_4LightAtten0.w;
			}
			
			inline int IsLumaActive11_g12994( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float3 LumaGlowData2_g12993( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g12996( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline int AudioLinkDecodeDataAsUInt6_g12997( int Band, int Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float glslmod13_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod12_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod34_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float3 LumaGlowLerp11_g12995( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline float4 AudioLinkLerp1_g13003( float Position )
			{
				return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
			}
			
			inline float3 LumaGlowLerp11_g13001( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13002( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13000(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline float AudioLinkData3_g12988( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
			}
			
			inline float glslmod96_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod97_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod98_g12987( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float AudioLinkLerp3_g12990( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			inline float AudioLinkLerp3_g12992( int Band, float FilteredAmount )
			{
				return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g12999(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline int IsLumaActive11_g13027( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float3 LumaGlowData2_g13026( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13029( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline int AudioLinkDecodeDataAsUInt6_g13033( int Band, int Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float glslmod13_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod12_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod34_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float3 LumaGlowLerp11_g13028( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline float4 AudioLinkLerp1_g13032( float Position )
			{
				return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
			}
			
			inline float3 LumaGlowLerp11_g13030( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13031( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13036(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline float AudioLinkData3_g13021( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
			}
			
			inline float glslmod96_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod97_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod98_g13020( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float AudioLinkLerp3_g13023( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			inline float AudioLinkLerp3_g13025( int Band, float FilteredAmount )
			{
				return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13035(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline int IsLumaActive11_g13044( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float3 LumaGlowData2_g13043( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13046( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline int AudioLinkDecodeDataAsUInt6_g13050( int Band, int Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float glslmod13_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod12_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod34_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float3 LumaGlowLerp11_g13045( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline float4 AudioLinkLerp1_g13049( float Position )
			{
				return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
			}
			
			inline float3 LumaGlowLerp11_g13047( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13048( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13053(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline float AudioLinkData3_g13038( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
			}
			
			inline float glslmod96_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod97_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod98_g13037( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float AudioLinkLerp3_g13040( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			inline float AudioLinkLerp3_g13042( int Band, float FilteredAmount )
			{
				return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13052(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline int IsLumaActive11_g13061( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float3 LumaGlowData2_g13060( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13063( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline int AudioLinkDecodeDataAsUInt6_g13067( int Band, int Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float glslmod13_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod12_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod34_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float3 LumaGlowLerp11_g13062( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline float4 AudioLinkLerp1_g13066( float Position )
			{
				return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
			}
			
			inline float3 LumaGlowLerp11_g13064( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13065( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13070(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline float AudioLinkData3_g13055( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
			}
			
			inline float glslmod96_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod97_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod98_g13054( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float AudioLinkLerp3_g13057( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			inline float AudioLinkLerp3_g13059( int Band, float FilteredAmount )
			{
				return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
			}
			
			float IfAudioLinkv2Exists1_g13069(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			inline int IsLumaActive11_g13013( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float3 LumaGlowData2_g13012( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13015( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline int AudioLinkDecodeDataAsUInt6_g13010( int Band, int Mode )
			{
				return AudioLinkDecodeDataAsUInt( ALPASS_CHRONOTENSITY + int2(Mode, Band));
			}
			
			inline float glslmod13_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod12_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod34_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float3 LumaGlowLerp11_g13014( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline float4 AudioLinkLerp1_g13019( float Position )
			{
				return AudioLinkLerp( ALPASS_CCSTRIP + float2( Position * 128., 0 ) ).rgba;;
			}
			
			inline float3 LumaGlowLerp11_g13017( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) );
			}
			
			inline int IsLumaActive11_g13018( int Band )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( 0, Band ) ).r;
			}
			
			inline float AudioLinkData3_g13005( int Band, int Delay )
			{
				return AudioLinkData( ALPASS_AUDIOLINK + uint2( Delay, Band ) ).rrrr;
			}
			
			inline float glslmod96_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod97_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float glslmod98_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			inline float AudioLinkLerp3_g13007( int Band, float Delay )
			{
				return AudioLinkLerp( ALPASS_AUDIOLINK + float2( Delay, Band ) ).r;
			}
			
			inline float AudioLinkLerp3_g13009( int Band, float FilteredAmount )
			{
				return AudioLinkLerp( ALPASS_FILTEREDAUDIOLINK + float2( FilteredAmount, Band ) ).r;
			}
			
			inline float glslmod270_g13004( float x, float y )
			{
				return glsl_mod(x,y);
			}
			
			float IfAudioLinkv2Exists1_g13016(  )
			{
				int w = 0; 
				int h; 
				int res = 0;
				#ifndef SHADER_TARGET_SURFACE_ANALYSIS
				_AudioTexture.GetDimensions(w, h); 
				#endif
				if (w == 128) res = 1;
				return res;
			}
			
			float3 mod3D289( float3 x ) { return x - floor( x / 289.0 ) * 289.0; }
			float4 mod3D289( float4 x ) { return x - floor( x / 289.0 ) * 289.0; }
			float4 permute( float4 x ) { return mod3D289( ( x * 34.0 + 1.0 ) * x ); }
			float4 taylorInvSqrt( float4 r ) { return 1.79284291400159 - r * 0.85373472095314; }
			float snoise( float3 v )
			{
				const float2 C = float2( 1.0 / 6.0, 1.0 / 3.0 );
				float3 i = floor( v + dot( v, C.yyy ) );
				float3 x0 = v - i + dot( i, C.xxx );
				float3 g = step( x0.yzx, x0.xyz );
				float3 l = 1.0 - g;
				float3 i1 = min( g.xyz, l.zxy );
				float3 i2 = max( g.xyz, l.zxy );
				float3 x1 = x0 - i1 + C.xxx;
				float3 x2 = x0 - i2 + C.yyy;
				float3 x3 = x0 - 0.5;
				i = mod3D289( i);
				float4 p = permute( permute( permute( i.z + float4( 0.0, i1.z, i2.z, 1.0 ) ) + i.y + float4( 0.0, i1.y, i2.y, 1.0 ) ) + i.x + float4( 0.0, i1.x, i2.x, 1.0 ) );
				float4 j = p - 49.0 * floor( p / 49.0 );  // mod(p,7*7)
				float4 x_ = floor( j / 7.0 );
				float4 y_ = floor( j - 7.0 * x_ );  // mod(j,N)
				float4 x = ( x_ * 2.0 + 0.5 ) / 7.0 - 1.0;
				float4 y = ( y_ * 2.0 + 0.5 ) / 7.0 - 1.0;
				float4 h = 1.0 - abs( x ) - abs( y );
				float4 b0 = float4( x.xy, y.xy );
				float4 b1 = float4( x.zw, y.zw );
				float4 s0 = floor( b0 ) * 2.0 + 1.0;
				float4 s1 = floor( b1 ) * 2.0 + 1.0;
				float4 sh = -step( h, 0.0 );
				float4 a0 = b0.xzyw + s0.xzyw * sh.xxyy;
				float4 a1 = b1.xzyw + s1.xzyw * sh.zzww;
				float3 g0 = float3( a0.xy, h.x );
				float3 g1 = float3( a0.zw, h.y );
				float3 g2 = float3( a1.xy, h.z );
				float3 g3 = float3( a1.zw, h.w );
				float4 norm = taylorInvSqrt( float4( dot( g0, g0 ), dot( g1, g1 ), dot( g2, g2 ), dot( g3, g3 ) ) );
				g0 *= norm.x;
				g1 *= norm.y;
				g2 *= norm.z;
				g3 *= norm.w;
				float4 m = max( 0.6 - float4( dot( x0, x0 ), dot( x1, x1 ), dot( x2, x2 ), dot( x3, x3 ) ), 0.0 );
				m = m* m;
				m = m* m;
				float4 px = float4( dot( x0, g0 ), dot( x1, g1 ), dot( x2, g2 ), dot( x3, g3 ) );
				return 42.0 * dot( m, px);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 _Vector4 = float2(0,0);
				float Index58_g12818 = _TileDiscardUV;
				float2 temp_output_53_0_g12818 = ( ( 4.0 == Index58_g12818 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12818 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12818 ? v.texcoord2.xyzw.xy : ( 1.0 == Index58_g12818 ? v.texcoord1.xyzw.xy : v.ase_texcoord.xy ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12818 = temp_output_53_0_g12818;
				float2 TileDiscardUVs18_g12819 = ( vertexToFrag51_g12818 + -1.0 );
				float2 break10_g12819 = TileDiscardUVs18_g12819;
				float Row0Col071_g12819 = saturate( ( max( max( step( _Vector4.x , break10_g12819.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g12819.x ) ) , max( step( _Vector4.y , break10_g12819.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
				float2 _Vector5 = float2(1,0);
				float2 break82_g12819 = TileDiscardUVs18_g12819;
				float Row0Col189_g12819 = saturate( ( max( max( step( _Vector5.x , break82_g12819.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g12819.x ) ) , max( step( _Vector5.y , break82_g12819.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
				float2 _Vector6 = float2(2,0);
				float2 break100_g12819 = TileDiscardUVs18_g12819;
				float Row0Col2106_g12819 = saturate( ( max( max( step( _Vector6.x , break100_g12819.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g12819.x ) ) , max( step( _Vector6.y , break100_g12819.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
				float2 _Vector7 = float2(3,0);
				float2 break118_g12819 = TileDiscardUVs18_g12819;
				float Row0Col3124_g12819 = saturate( ( max( max( step( _Vector7.x , break118_g12819.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g12819.x ) ) , max( step( _Vector7.y , break118_g12819.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
				float2 _Vector8 = float2(0,1);
				float2 break141_g12819 = TileDiscardUVs18_g12819;
				float Row1Col0148_g12819 = saturate( ( max( max( step( _Vector8.x , break141_g12819.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g12819.x ) ) , max( step( _Vector8.y , break141_g12819.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
				float2 _Vector9 = float2(1,1);
				float2 break159_g12819 = TileDiscardUVs18_g12819;
				float Row1Col1165_g12819 = saturate( ( max( max( step( _Vector9.x , break159_g12819.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g12819.x ) ) , max( step( _Vector9.y , break159_g12819.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
				float2 _Vector10 = float2(2,1);
				float2 break177_g12819 = TileDiscardUVs18_g12819;
				float Row1Col2183_g12819 = saturate( ( max( max( step( _Vector10.x , break177_g12819.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g12819.x ) ) , max( step( _Vector10.y , break177_g12819.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
				float2 _Vector11 = float2(3,1);
				float2 break195_g12819 = TileDiscardUVs18_g12819;
				float Row1Col3201_g12819 = saturate( ( max( max( step( _Vector11.x , break195_g12819.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g12819.x ) ) , max( step( _Vector11.y , break195_g12819.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
				float2 _Vector12 = float2(0,2);
				float2 break222_g12819 = TileDiscardUVs18_g12819;
				float Row2Col0229_g12819 = saturate( ( max( max( step( _Vector12.x , break222_g12819.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g12819.x ) ) , max( step( _Vector12.y , break222_g12819.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
				float2 _Vector13 = float2(1,2);
				float2 break239_g12819 = TileDiscardUVs18_g12819;
				float Row2Col1245_g12819 = saturate( ( max( max( step( _Vector13.x , break239_g12819.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g12819.x ) ) , max( step( _Vector13.y , break239_g12819.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
				float2 _Vector14 = float2(2,2);
				float2 break256_g12819 = TileDiscardUVs18_g12819;
				float Row2Col2262_g12819 = saturate( ( max( max( step( _Vector14.x , break256_g12819.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g12819.x ) ) , max( step( _Vector14.y , break256_g12819.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
				float2 _Vector15 = float2(3,2);
				float2 break273_g12819 = TileDiscardUVs18_g12819;
				float Row2Col3279_g12819 = saturate( ( max( max( step( _Vector15.x , break273_g12819.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g12819.x ) ) , max( step( _Vector15.y , break273_g12819.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
				float2 _Vector19 = float2(0,3);
				float2 break294_g12819 = TileDiscardUVs18_g12819;
				float Row3Col0352_g12819 = saturate( ( max( max( step( _Vector19.x , break294_g12819.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g12819.x ) ) , max( step( _Vector19.y , break294_g12819.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
				float2 _Vector16 = float2(1,3);
				float2 break309_g12819 = TileDiscardUVs18_g12819;
				float Row3Col1351_g12819 = saturate( ( max( max( step( _Vector16.x , break309_g12819.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g12819.x ) ) , max( step( _Vector16.y , break309_g12819.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
				float2 _Vector17 = float2(2,3);
				float2 break325_g12819 = TileDiscardUVs18_g12819;
				float Row3Col2350_g12819 = saturate( ( max( max( step( _Vector17.x , break325_g12819.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g12819.x ) ) , max( step( _Vector17.y , break325_g12819.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
				float2 _Vector18 = float2(3,3);
				float2 break341_g12819 = TileDiscardUVs18_g12819;
				float Row3Col3349_g12819 = saturate( ( max( max( step( _Vector18.x , break341_g12819.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g12819.x ) ) , max( step( _Vector18.y , break341_g12819.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
				float VertexDiscardOutput1202 = ( ( ( Row0Col071_g12819 * Row0Col189_g12819 * Row0Col2106_g12819 * Row0Col3124_g12819 ) * ( Row1Col0148_g12819 * Row1Col1165_g12819 * Row1Col2183_g12819 * Row1Col3201_g12819 ) ) * ( ( Row2Col0229_g12819 * Row2Col1245_g12819 * Row2Col2262_g12819 * Row2Col3279_g12819 ) * ( Row3Col0352_g12819 * Row3Col1351_g12819 * Row3Col2350_g12819 * Row3Col3349_g12819 ) ) );
				float3 temp_cast_0 = (( 0.0 / 0.0 )).xxx;
				float3 VertexDiscard1197 = ( VertexDiscardOutput1202 < 0.001 ? temp_cast_0 : v.vertex.xyz );
				
				float Index58_g12817 = _MaskMap04UV;
				float2 Tiling60_g12817 = _MaskMap04_ST.xy;
				float2 Offset61_g12817 = _MaskMap04_ST.zw;
				float2 temp_output_2_0_g12813 = _AnimatedOffsetMaskMap04;
				float mulTime7_g12813 = _Time.y * (temp_output_2_0_g12813).x;
				float mulTime10_g12813 = _Time.y * (temp_output_2_0_g12813).y;
				float2 appendResult11_g12813 = (float2(mulTime7_g12813 , mulTime10_g12813));
				float2 temp_output_53_0_g12817 = ( ( 4.0 == Index58_g12817 ? (v.ase_texcoord4.xy*Tiling60_g12817 + Offset61_g12817) : ( 3.0 == Index58_g12817 ? (v.ase_texcoord3.xy*Tiling60_g12817 + Offset61_g12817) : ( 2.0 == Index58_g12817 ? (v.texcoord2.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : ( 1.0 == Index58_g12817 ? (v.texcoord1.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : (v.ase_texcoord.xy*Tiling60_g12817 + Offset61_g12817) ) ) ) ) + frac( appendResult11_g12813 ) );
				float2 vertexToFrag51_g12817 = temp_output_53_0_g12817;
				o.ase_texcoord8.xy = vertexToFrag51_g12817;
				float Index58_g12816 = _MaskMap03UV;
				float2 Tiling60_g12816 = _MaskMap03_ST.xy;
				float2 Offset61_g12816 = _MaskMap03_ST.zw;
				float2 temp_output_2_0_g12812 = _AnimatedOffsetMaskMap03;
				float mulTime7_g12812 = _Time.y * (temp_output_2_0_g12812).x;
				float mulTime10_g12812 = _Time.y * (temp_output_2_0_g12812).y;
				float2 appendResult11_g12812 = (float2(mulTime7_g12812 , mulTime10_g12812));
				float2 temp_output_53_0_g12816 = ( ( 4.0 == Index58_g12816 ? (v.ase_texcoord4.xy*Tiling60_g12816 + Offset61_g12816) : ( 3.0 == Index58_g12816 ? (v.ase_texcoord3.xy*Tiling60_g12816 + Offset61_g12816) : ( 2.0 == Index58_g12816 ? (v.texcoord2.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : ( 1.0 == Index58_g12816 ? (v.texcoord1.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : (v.ase_texcoord.xy*Tiling60_g12816 + Offset61_g12816) ) ) ) ) + frac( appendResult11_g12812 ) );
				float2 vertexToFrag51_g12816 = temp_output_53_0_g12816;
				o.ase_texcoord8.zw = vertexToFrag51_g12816;
				float Index58_g12815 = _MaskMap02UV;
				float2 Tiling60_g12815 = _MaskMap02_ST.xy;
				float2 Offset61_g12815 = _MaskMap02_ST.zw;
				float2 temp_output_2_0_g12811 = _AnimatedOffsetMaskMap02;
				float mulTime7_g12811 = _Time.y * (temp_output_2_0_g12811).x;
				float mulTime10_g12811 = _Time.y * (temp_output_2_0_g12811).y;
				float2 appendResult11_g12811 = (float2(mulTime7_g12811 , mulTime10_g12811));
				float2 temp_output_53_0_g12815 = ( ( 4.0 == Index58_g12815 ? (v.ase_texcoord4.xy*Tiling60_g12815 + Offset61_g12815) : ( 3.0 == Index58_g12815 ? (v.ase_texcoord3.xy*Tiling60_g12815 + Offset61_g12815) : ( 2.0 == Index58_g12815 ? (v.texcoord2.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : ( 1.0 == Index58_g12815 ? (v.texcoord1.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : (v.ase_texcoord.xy*Tiling60_g12815 + Offset61_g12815) ) ) ) ) + frac( appendResult11_g12811 ) );
				float2 vertexToFrag51_g12815 = temp_output_53_0_g12815;
				o.ase_texcoord9.xy = vertexToFrag51_g12815;
				float Index58_g12814 = _MaskMap01UV;
				float2 Tiling60_g12814 = _MaskMap01_ST.xy;
				float2 Offset61_g12814 = _MaskMap01_ST.zw;
				float2 temp_output_2_0_g12810 = _AnimatedOffsetMaskMap01;
				float mulTime7_g12810 = _Time.y * (temp_output_2_0_g12810).x;
				float mulTime10_g12810 = _Time.y * (temp_output_2_0_g12810).y;
				float2 appendResult11_g12810 = (float2(mulTime7_g12810 , mulTime10_g12810));
				float2 temp_output_53_0_g12814 = ( ( 4.0 == Index58_g12814 ? (v.ase_texcoord4.xy*Tiling60_g12814 + Offset61_g12814) : ( 3.0 == Index58_g12814 ? (v.ase_texcoord3.xy*Tiling60_g12814 + Offset61_g12814) : ( 2.0 == Index58_g12814 ? (v.texcoord2.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : ( 1.0 == Index58_g12814 ? (v.texcoord1.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : (v.ase_texcoord.xy*Tiling60_g12814 + Offset61_g12814) ) ) ) ) + frac( appendResult11_g12810 ) );
				float2 vertexToFrag51_g12814 = temp_output_53_0_g12814;
				o.ase_texcoord9.zw = vertexToFrag51_g12814;
				float Index58_g12809 = _MainTexUV;
				float2 Tiling60_g12809 = _MainTex_ST.xy;
				float2 Offset61_g12809 = _MainTex_ST.zw;
				float2 temp_output_2_0_g12808 = _AnimatedOffsetMainTex;
				float mulTime7_g12808 = _Time.y * (temp_output_2_0_g12808).x;
				float mulTime10_g12808 = _Time.y * (temp_output_2_0_g12808).y;
				float2 appendResult11_g12808 = (float2(mulTime7_g12808 , mulTime10_g12808));
				float2 temp_output_53_0_g12809 = ( ( 4.0 == Index58_g12809 ? (v.ase_texcoord4.xy*Tiling60_g12809 + Offset61_g12809) : ( 3.0 == Index58_g12809 ? (v.ase_texcoord3.xy*Tiling60_g12809 + Offset61_g12809) : ( 2.0 == Index58_g12809 ? (v.texcoord2.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : ( 1.0 == Index58_g12809 ? (v.texcoord1.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : (v.ase_texcoord.xy*Tiling60_g12809 + Offset61_g12809) ) ) ) ) + frac( appendResult11_g12808 ) );
				float2 vertexToFrag51_g12809 = temp_output_53_0_g12809;
				o.ase_texcoord10.xy = vertexToFrag51_g12809;
				float Index58_g12831 = _NormalMapUV;
				float2 Tiling60_g12831 = _BumpMap_ST.xy;
				float2 Offset61_g12831 = _BumpMap_ST.zw;
				float2 temp_output_53_0_g12831 = ( ( 4.0 == Index58_g12831 ? (v.ase_texcoord4.xy*Tiling60_g12831 + Offset61_g12831) : ( 3.0 == Index58_g12831 ? (v.ase_texcoord3.xy*Tiling60_g12831 + Offset61_g12831) : ( 2.0 == Index58_g12831 ? (v.texcoord2.xyzw.xy*Tiling60_g12831 + Offset61_g12831) : ( 1.0 == Index58_g12831 ? (v.texcoord1.xyzw.xy*Tiling60_g12831 + Offset61_g12831) : (v.ase_texcoord.xy*Tiling60_g12831 + Offset61_g12831) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12831 = temp_output_53_0_g12831;
				o.ase_texcoord10.zw = vertexToFrag51_g12831;
				float Index58_g12829 = _DetailUV;
				float2 Tiling60_g12829 = _DetailNormal_ST.xy;
				float2 Offset61_g12829 = _DetailNormal_ST.zw;
				float2 temp_output_53_0_g12829 = ( ( 4.0 == Index58_g12829 ? (v.ase_texcoord4.xy*Tiling60_g12829 + Offset61_g12829) : ( 3.0 == Index58_g12829 ? (v.ase_texcoord3.xy*Tiling60_g12829 + Offset61_g12829) : ( 2.0 == Index58_g12829 ? (v.texcoord2.xyzw.xy*Tiling60_g12829 + Offset61_g12829) : ( 1.0 == Index58_g12829 ? (v.texcoord1.xyzw.xy*Tiling60_g12829 + Offset61_g12829) : (v.ase_texcoord.xy*Tiling60_g12829 + Offset61_g12829) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12829 = temp_output_53_0_g12829;
				o.ase_texcoord11.zw = vertexToFrag51_g12829;
				float Index58_g12986 = _DirectionMapUV;
				float2 Tiling60_g12986 = _DirectionalMap_ST.xy;
				float2 Offset61_g12986 = _DirectionalMap_ST.zw;
				float2 temp_output_2_0_g12983 = _AnimatedOffsetDirectionalMap;
				float mulTime7_g12983 = _Time.y * (temp_output_2_0_g12983).x;
				float mulTime10_g12983 = _Time.y * (temp_output_2_0_g12983).y;
				float2 appendResult11_g12983 = (float2(mulTime7_g12983 , mulTime10_g12983));
				float2 temp_output_53_0_g12986 = ( ( 4.0 == Index58_g12986 ? (v.ase_texcoord4.xy*Tiling60_g12986 + Offset61_g12986) : ( 3.0 == Index58_g12986 ? (v.ase_texcoord3.xy*Tiling60_g12986 + Offset61_g12986) : ( 2.0 == Index58_g12986 ? (v.texcoord2.xyzw.xy*Tiling60_g12986 + Offset61_g12986) : ( 1.0 == Index58_g12986 ? (v.texcoord1.xyzw.xy*Tiling60_g12986 + Offset61_g12986) : (v.ase_texcoord.xy*Tiling60_g12986 + Offset61_g12986) ) ) ) ) + frac( appendResult11_g12983 ) );
				float2 vertexToFrag51_g12986 = temp_output_53_0_g12986;
				o.ase_texcoord12.xy = vertexToFrag51_g12986;
				float Index58_g12830 = _EmissionUV;
				float2 Tiling60_g12830 = _EmissionMap_ST.xy;
				float2 Offset61_g12830 = _EmissionMap_ST.zw;
				float2 temp_output_2_0_g12952 = _AnimatedOffsetEmssion;
				float mulTime7_g12952 = _Time.y * (temp_output_2_0_g12952).x;
				float mulTime10_g12952 = _Time.y * (temp_output_2_0_g12952).y;
				float2 appendResult11_g12952 = (float2(mulTime7_g12952 , mulTime10_g12952));
				float2 temp_output_53_0_g12830 = ( ( 4.0 == Index58_g12830 ? (v.ase_texcoord4.xy*Tiling60_g12830 + Offset61_g12830) : ( 3.0 == Index58_g12830 ? (v.ase_texcoord3.xy*Tiling60_g12830 + Offset61_g12830) : ( 2.0 == Index58_g12830 ? (v.texcoord2.xyzw.xy*Tiling60_g12830 + Offset61_g12830) : ( 1.0 == Index58_g12830 ? (v.texcoord1.xyzw.xy*Tiling60_g12830 + Offset61_g12830) : (v.ase_texcoord.xy*Tiling60_g12830 + Offset61_g12830) ) ) ) ) + frac( appendResult11_g12952 ) );
				float2 vertexToFrag51_g12830 = temp_output_53_0_g12830;
				o.ase_texcoord12.zw = vertexToFrag51_g12830;
				#ifdef DYNAMICLIGHTMAP_ON //dynlm
				o.ase_lmap.zw = v.texcoord2.xyzw.xy * unity_DynamicLightmapST.xy + unity_DynamicLightmapST.zw;
				#endif //dynlm
				#ifdef LIGHTMAP_ON //stalm
				o.ase_lmap.xy = v.texcoord1.xyzw.xy * unity_LightmapST.xy + unity_LightmapST.zw;
				#endif //stalm
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.normal );
				#ifndef LIGHTMAP_ON //nstalm
				#if UNITY_SHOULD_SAMPLE_SH //sh
				o.ase_sh.xyz = 0;
				#ifdef VERTEXLIGHT_ON //vl
				o.ase_sh.xyz += Shade4PointLights (
				unity_4LightPosX0, unity_4LightPosY0, unity_4LightPosZ0,
				unity_LightColor[0].rgb, unity_LightColor[1].rgb, unity_LightColor[2].rgb, unity_LightColor[3].rgb,
				unity_4LightAtten0, ase_positionWS, ase_normalWS);
				#endif //vl
				o.ase_sh.xyz = ShadeSHPerVertex (ase_normalWS, o.ase_sh.xyz);
				#endif //sh
				#endif //nstalm
				float3 localLightColorZero532 = LightColorZero();
				float3 localLightPosZero877 = LightPosZero();
				float3 VertexPos928 = v.vertex.xyz;
				float3 temp_output_920_0 = ( localLightPosZero877 - VertexPos928 );
				float dotResult916 = dot( temp_output_920_0 , temp_output_920_0 );
				float localLightAttenZero885 = LightAttenZero();
				float temp_output_922_0 = ( 1.0 / ( 1.0 + ( 16.0 * dotResult916 * localLightAttenZero885 ) ) );
				float smoothstepResult1089 = smoothstep( 0.01 , 0.0101 , temp_output_922_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2028 = temp_output_922_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2028 = smoothstepResult1089;
				#else
				float staticSwitch2028 = temp_output_922_0;
				#endif
				float3 normalizeResult932 = ASESafeNormalize( ( localLightPosZero877 - VertexPos928 ) );
				float3 ObjectNorm1081 = v.normal;
				float dotResult935 = dot( normalizeResult932 , ObjectNorm1081 );
				float temp_output_936_0 = max( dotResult935 , 0.0 );
				float smoothstepResult1088 = smoothstep( 0.0 , 0.05 , temp_output_936_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2027 = temp_output_936_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2027 = smoothstepResult1088;
				#else
				float staticSwitch2027 = temp_output_936_0;
				#endif
				float3 localLightColorOne968 = LightColorOne();
				float3 localLightPosOne958 = LightPosOne();
				float3 temp_output_952_0 = ( localLightPosOne958 - VertexPos928 );
				float dotResult953 = dot( temp_output_952_0 , temp_output_952_0 );
				float localLightAttenOne971 = LightAttenOne();
				float temp_output_967_0 = ( 1.0 / ( 1.0 + ( 16.0 * dotResult953 * localLightAttenOne971 ) ) );
				float smoothstepResult1106 = smoothstep( 0.01 , 0.0101 , temp_output_967_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2029 = temp_output_967_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2029 = smoothstepResult1106;
				#else
				float staticSwitch2029 = temp_output_967_0;
				#endif
				float3 normalizeResult960 = ASESafeNormalize( ( localLightPosOne958 - VertexPos928 ) );
				float dotResult957 = dot( normalizeResult960 , ObjectNorm1081 );
				float temp_output_963_0 = max( dotResult957 , 0.0 );
				float smoothstepResult1090 = smoothstep( 0.0 , 0.05 , temp_output_963_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2030 = temp_output_963_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2030 = smoothstepResult1090;
				#else
				float staticSwitch2030 = temp_output_963_0;
				#endif
				float3 localLightColorTwo992 = LightColorTwo();
				float3 localLightPosTwo994 = LightPosTwo();
				float3 temp_output_974_0 = ( localLightPosTwo994 - VertexPos928 );
				float dotResult975 = dot( temp_output_974_0 , temp_output_974_0 );
				float localLightAttenTwo993 = LightAttenTwo();
				float temp_output_988_0 = ( 1.0 / ( 1.0 + ( 16.0 * dotResult975 * localLightAttenTwo993 ) ) );
				float smoothstepResult1107 = smoothstep( 0.01 , 0.0101 , temp_output_988_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2031 = temp_output_988_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2031 = smoothstepResult1107;
				#else
				float staticSwitch2031 = temp_output_988_0;
				#endif
				float3 normalizeResult981 = ASESafeNormalize( ( localLightPosTwo994 - VertexPos928 ) );
				float dotResult979 = dot( normalizeResult981 , ObjectNorm1081 );
				float temp_output_984_0 = max( dotResult979 , 0.0 );
				float smoothstepResult1092 = smoothstep( 0.0 , 0.05 , temp_output_984_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2032 = temp_output_984_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2032 = smoothstepResult1092;
				#else
				float staticSwitch2032 = temp_output_984_0;
				#endif
				float3 localLightColorThree1013 = LightColorThree();
				float3 localLightPosThree1015 = LightPosThree();
				float3 temp_output_995_0 = ( localLightPosThree1015 - VertexPos928 );
				float dotResult996 = dot( temp_output_995_0 , temp_output_995_0 );
				float localLightAttenThree1014 = LightAttenThree();
				float temp_output_1009_0 = ( 1.0 / ( 1.0 + ( 16.0 * dotResult996 * localLightAttenThree1014 ) ) );
				float smoothstepResult1108 = smoothstep( 0.01 , 0.0101 , temp_output_1009_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2033 = temp_output_1009_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2033 = smoothstepResult1108;
				#else
				float staticSwitch2033 = temp_output_1009_0;
				#endif
				float3 normalizeResult1002 = ASESafeNormalize( ( localLightPosThree1015 - VertexPos928 ) );
				float dotResult1000 = dot( normalizeResult1002 , ObjectNorm1081 );
				float temp_output_1005_0 = max( dotResult1000 , 0.0 );
				float smoothstepResult1094 = smoothstep( 0.0 , 0.05 , temp_output_1005_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2034 = temp_output_1005_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2034 = smoothstepResult1094;
				#else
				float staticSwitch2034 = temp_output_1005_0;
				#endif
				float3 vertexToFrag945 = ( ( localLightColorZero532 * staticSwitch2028 * staticSwitch2027 ) + ( localLightColorOne968 * staticSwitch2029 * staticSwitch2030 ) + ( localLightColorTwo992 * staticSwitch2031 * staticSwitch2032 ) + ( localLightColorThree1013 * staticSwitch2033 * staticSwitch2034 ) );
				o.ase_texcoord15.xyz = vertexToFrag945;
				
				o.ase_texcoord11.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_sh.w = 0;
				o.ase_texcoord15.w = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexDiscard1197;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;
				

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				return o;
			}

			
		
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			

			fixed4 frag (v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
			
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif

				float ReflectionMaskChannel333_g12820 = _ReflectionMaskChannel;
				float ReflectionMaskMap334_g12820 = _ReflectionMask;
				float4 temp_cast_0 = (1.0).xxxx;
				float2 vertexToFrag51_g12817 = IN.ase_texcoord8.xy;
				float4 MaskMap041244 = tex2D( _MaskMap04, vertexToFrag51_g12817 );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float2 vertexToFrag51_g12816 = IN.ase_texcoord8.zw;
				float4 MaskMap031239 = tex2D( _MaskMap03, vertexToFrag51_g12816 );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float2 vertexToFrag51_g12815 = IN.ase_texcoord9.xy;
				float4 MaskMap021234 = tex2D( _MaskMap02, vertexToFrag51_g12815 );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float2 vertexToFrag51_g12814 = IN.ase_texcoord9.zw;
				float4 MaskMap011220 = tex2D( _MaskMap01, vertexToFrag51_g12814 );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 ReflectionMaskRGBA318_g12820 = ( 4.0 == ReflectionMaskMap334_g12820 ? temp_cast_0 : ( 3.0 == ReflectionMaskMap334_g12820 ? MM04RGBA8_g12820 : ( 2.0 == ReflectionMaskMap334_g12820 ? MM03RGBA7_g12820 : ( 1.0 == ReflectionMaskMap334_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float ReflectionMask1402 = ( 3.0 == ReflectionMaskChannel333_g12820 ? (ReflectionMaskRGBA318_g12820).a : ( 2.0 == ReflectionMaskChannel333_g12820 ? (ReflectionMaskRGBA318_g12820).b : ( 1.0 == ReflectionMaskChannel333_g12820 ? (ReflectionMaskRGBA318_g12820).g : (ReflectionMaskRGBA318_g12820).r ) ) );
				float3 temp_cast_1 = (0.04).xxx;
				float2 vertexToFrag51_g12809 = IN.ase_texcoord10.xy;
				float4 temp_output_835_0 = ( _Color * tex2D( _MainTex, vertexToFrag51_g12809 ) );
				float3 temp_output_845_0 = (temp_output_835_0).rgb;
				float3 temp_cast_2 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_4_0_g12960 = mul( pow( mul( _DreamweaveColor01, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_2 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 temp_cast_3 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_5_0_g12960 = mul( pow( mul( _DreamweaveColor02, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_3 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 localCenterEye1_g12832 = CenterEye1_g12832();
				float3 normalizeResult5_g12832 = normalize( ( localCenterEye1_g12832 - worldPos ) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2210 = worldViewDir;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2210 = normalizeResult5_g12832;
				#else
				float3 staticSwitch2210 = worldViewDir;
				#endif
				float3 WorldView639 = staticSwitch2210;
				float3 normalizeResult59_g12960 = normalize( _DreamweaveAngle );
				float mulTime6_g12965 = _Time.y * _DreamweavePosSpeed;
				float DreamweaveSpeed80_g12960 = fmod( mulTime6_g12965 , 7200.0 );
				float2 vertexToFrag51_g12831 = IN.ase_texcoord10.zw;
				float3 NormalMap1174 = UnpackScaleNormal( tex2D( _BumpMap, vertexToFrag51_g12831 ), _BumpScale );
				float2 temp_output_2_0_g12963 = _DreamweaveDistortionSpeed;
				float mulTime7_g12963 = _Time.y * (temp_output_2_0_g12963).x;
				float mulTime10_g12963 = _Time.y * (temp_output_2_0_g12963).y;
				float2 appendResult11_g12963 = (float2(mulTime7_g12963 , mulTime10_g12963));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal56_g12960 = BlendNormals( NormalMap1174 , UnpackScaleNormal( tex2D( _DetailNormal, ( (IN.ase_texcoord11.xy*_DreamWeaveScale + _DreamWeaveOffset) + frac( appendResult11_g12963 ) ) ), _DreamweaveNormalScale ) );
				float3 worldNormal56_g12960 = float3( dot( tanToWorld0, tanNormal56_g12960 ), dot( tanToWorld1, tanNormal56_g12960 ), dot( tanToWorld2, tanNormal56_g12960 ) );
				float3 rotatedValue57_g12960 = RotateAroundAxis( float3( 0,0,0 ), worldNormal56_g12960, normalizeResult59_g12960, ( radians( _DreamweavePos ) + DreamweaveSpeed80_g12960 ) );
				float dotResult61_g12960 = dot( WorldView639 , rotatedValue57_g12960 );
				float temp_output_2_0_g12967 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - ( 21.0 - _DreamweaveSoftness ) ) * saturate( ( dotResult61_g12960 + _DreamweaveColorOffset ) ) ) , 2.0 ) );
				float temp_output_97_0_g12960 = temp_output_2_0_g12967;
				float3 lerpResult17_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , temp_output_97_0_g12960);
				float3 lerpResult85_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , ( 1.0 - temp_output_97_0_g12960 ));
				float temp_output_117_0_g12960 = saturate( _DreamweaveSwapSpeed );
				float mulTime6_g12966 = _Time.y * _DreamweaveSwapFrequency;
				float smoothstepResult84_g12960 = smoothstep( (0.0 + (temp_output_117_0_g12960 - 0.0) * (0.5 - 0.0) / (1.0 - 0.0)) , (0.5 + (( 1.0 - temp_output_117_0_g12960 ) - 0.0) * (1.0 - 0.5) / (1.0 - 0.0)) , saturate( (0.0 + (sin( fmod( mulTime6_g12966 , 7200.0 ) ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) ));
				float3 lerpResult87_g12960 = lerp( lerpResult17_g12960 , lerpResult85_g12960 , ( step( 0.0001 , _DreamweaveSwapFrequency ) * smoothstepResult84_g12960 ));
				float3 temp_output_2_0_g12964 = mul( lerpResult87_g12960, float3x3(1,1,1,0.3963378,-0.1055613,-0.08948418,0.2158038,-0.06385417,-1.291486) );
				float3 temp_output_18_0_g12960 = mul( ( temp_output_2_0_g12964 * temp_output_2_0_g12964 * temp_output_2_0_g12964 ), float3x3(4.076742,-1.268438,-0.004196086,-3.307712,2.609757,-0.7034186,0.2309699,-0.3413194,1.707615) );
				float3 temp_output_123_0_g12960 = frac( (worldPos*_DreamweaveGridTile + 0.0) );
				float2 appendResult10_g12968 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12968 = ( abs( ((temp_output_123_0_g12960).yz*2.0 + -1.0) ) - appendResult10_g12968 );
				float2 break16_g12968 = ( 1.0 - ( temp_output_11_0_g12968 / max( fwidth( temp_output_11_0_g12968 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult155_g12960 = dot( WorldNormal , float3( 1,0,0 ) );
				float temp_output_2_0_g12973 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult155_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12969 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12969 = ( abs( ((temp_output_123_0_g12960).xy*2.0 + -1.0) ) - appendResult10_g12969 );
				float2 break16_g12969 = ( 1.0 - ( temp_output_11_0_g12969 / max( fwidth( temp_output_11_0_g12969 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult170_g12960 = dot( WorldNormal , float3( 0,0,1 ) );
				float temp_output_2_0_g12971 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult170_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12970 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12970 = ( abs( ((temp_output_123_0_g12960).xz*2.0 + -1.0) ) - appendResult10_g12970 );
				float2 break16_g12970 = ( 1.0 - ( temp_output_11_0_g12970 / max( fwidth( temp_output_11_0_g12970 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult184_g12960 = dot( WorldNormal , float3( 0,1,0 ) );
				float temp_output_2_0_g12972 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult184_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float temp_output_175_0_g12960 = saturate( ( ( ( saturate( min( break16_g12968.x , break16_g12968.y ) ) * ( 1.0 - temp_output_2_0_g12973 ) ) + ( saturate( min( break16_g12969.x , break16_g12969.y ) ) * ( 1.0 - temp_output_2_0_g12971 ) ) + ( saturate( min( break16_g12970.x , break16_g12970.y ) ) * ( 1.0 - temp_output_2_0_g12972 ) ) ) * 3.0 ) );
				float3 lerpResult120_g12960 = lerp( saturate( ( temp_output_18_0_g12960 + 0.25 ) ) , temp_output_18_0_g12960 , temp_output_175_0_g12960);
				float2 vertexToFrag51_g12829 = IN.ase_texcoord11.zw;
				float2 temp_output_2110_0 = vertexToFrag51_g12829;
				float4 DetailNormalPacked1228 = tex2D( _DetailNormal, temp_output_2110_0 );
				float DetailNormalScale1838 = _BumpScale1;
				float DetailNormalChannel361_g12820 = _DetailNormalChannel;
				float DetailNormalMap360_g12820 = _DetailNormalMask;
				float4 temp_cast_5 = (1.0).xxxx;
				float4 DetailNormalRGBA363_g12820 = ( 4.0 == DetailNormalMap360_g12820 ? temp_cast_5 : ( 3.0 == DetailNormalMap360_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DetailNormalMap360_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DetailNormalMap360_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DetailNormalMask1426 = ( 3.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).a : ( 2.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).b : ( 1.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).g : (DetailNormalRGBA363_g12820).r ) ) );
				float3 lerpResult1472 = lerp( NormalMap1174 , BlendNormals( NormalMap1174 , UnpackScaleNormal( DetailNormalPacked1228, DetailNormalScale1838 ) ) , DetailNormalMask1426);
				float3 TangentNormal1479 = lerpResult1472;
				float2 temp_output_2069_0 = (TangentNormal1479).xy;
				float temp_output_2070_0 = (TangentNormal1479).z;
				float3 appendResult2073 = (float3(temp_output_2069_0 , temp_output_2070_0));
				float3 appendResult2074 = (float3(temp_output_2069_0 , -temp_output_2070_0));
				float3 switchResult2071 = (((ase_vface>0)?(appendResult2073):(appendResult2074)));
				float3 tanNormal600 = switchResult2071;
				float3 worldNormal600 = normalize( float3( dot( tanToWorld0, tanNormal600 ), dot( tanToWorld1, tanNormal600 ), dot( tanToWorld2, tanNormal600 ) ) );
				float3 WorldNorm601 = worldNormal600;
				float Workflow1249 = _Workflow;
				float OcclusionChannel1295_g12820 = _OcclusionChannel;
				float OcclusionMap1292_g12820 = _OcclusionMap;
				float4 temp_cast_6 = (1.0).xxxx;
				float4 Occlusion1RGBA301_g12820 = ( 4.0 == OcclusionMap1292_g12820 ? temp_cast_6 : ( 3.0 == OcclusionMap1292_g12820 ? MM04RGBA8_g12820 : ( 2.0 == OcclusionMap1292_g12820 ? MM03RGBA7_g12820 : ( 1.0 == OcclusionMap1292_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float OcclusionMapUnpacked1312 = ( 3.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).a : ( 2.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).b : ( 1.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).g : (Occlusion1RGBA301_g12820).r ) ) );
				float lerpResult1311 = lerp( 1.0 , ( 1.0 <= Workflow1249 ? OcclusionMapUnpacked1312 : (MaskMap011220).g ) , _OcclusionPower);
				float Occlusion1309 = lerpResult1311;
				UnityGIInput data;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data );
				data.worldPos = worldPos;
				data.worldViewDir = worldViewDir;
				data.probeHDR[0] = unity_SpecCube0_HDR;
				data.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION //specdataif0
				data.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif //specdataif0
				#if UNITY_SPECCUBE_BOX_PROJECTION //specdataif1
				data.boxMax[0] = unity_SpecCube0_BoxMax;
				data.probePosition[0] = unity_SpecCube0_ProbePosition;
				data.boxMax[1] = unity_SpecCube1_BoxMax;
				data.boxMin[1] = unity_SpecCube1_BoxMin;
				data.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif //specdataif1
				Unity_GlossyEnvironmentData g2463 = UnityGlossyEnvironmentSetup( 0.4, worldViewDir, WorldNorm601, float3(0,0,0));
				float3 indirectSpecular2463 = UnityGI_IndirectSpecular( data, Occlusion1309, WorldNorm601, g2463 );
				float3 lerpResult2500 = lerp( float3( 0.5,0.5,0.5 ) , indirectSpecular2463 , 0.5);
				float dotResult2389 = dot( WorldNorm601 , WorldView639 );
				float temp_output_2_0_g12833 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( dotResult2389 - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float smoothstepResult2413 = smoothstep( 0.65 , 0.655 , dotResult2389);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2412 = smoothstepResult2413;
				#else
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#endif
				float3 lerpResult2498 = lerp( lerpResult2500 , float3( 1.1,1.1,1.1 ) , staticSwitch2412);
				float3 Dreamweave1920 = ( lerpResult120_g12960 * lerpResult2498 );
				float DreamweaveChannel573_g12820 = _DreamweaveChannel;
				float DreamweaveMap572_g12820 = _DreamweaveMask;
				float4 temp_cast_7 = (1.0).xxxx;
				float4 DreamweaveRGBA574_g12820 = ( 4.0 == DreamweaveMap572_g12820 ? temp_cast_7 : ( 3.0 == DreamweaveMap572_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DreamweaveMap572_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DreamweaveMap572_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DreamweaveMask1790 = ( 3.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).a : ( 2.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).b : ( 1.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).g : (DreamweaveRGBA574_g12820).r ) ) );
				float3 lerpResult1918 = lerp( temp_output_845_0 , Dreamweave1920 , DreamweaveMask1790);
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch1780 = lerpResult1918;
				#else
				float3 staticSwitch1780 = temp_output_845_0;
				#endif
				float mulTime6_g12980 = _Time.y * _RainbowSpeed;
				float temp_output_100_0_g12974 = fmod( mulTime6_g12980 , 7200.0 );
				float EmissionGlowAnimation67_g12974 = ( _Float1 * temp_output_100_0_g12974 );
				float2 texCoord1_g12974 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_53_0_g12974 = radians( _RainbowRotation );
				float cos45_g12974 = cos( temp_output_53_0_g12974 );
				float sin45_g12974 = sin( temp_output_53_0_g12974 );
				float2 rotator45_g12974 = mul( texCoord1_g12974 - float2( 0.5,0.5 ) , float2x2( cos45_g12974 , -sin45_g12974 , sin45_g12974 , cos45_g12974 )) + float2( 0.5,0.5 );
				float2 temp_output_34_0_g12975 = ( texCoord1_g12974 - _RainbowRadialCenter );
				float2 break39_g12975 = temp_output_34_0_g12975;
				float2 appendResult50_g12975 = (float2(( _RainbowSpiralCurve * ( length( temp_output_34_0_g12975 ) * 2.0 ) ) , ( ( atan2( break39_g12975.x , break39_g12975.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float2 break50_g12974 = appendResult50_g12975;
				float lerpResult49_g12974 = lerp( rotator45_g12974.x , break50_g12974.x , (float)saturate( _RainbowUVMode ));
				int temp_output_60_0_g12974 = ( _RainbowUVMode - 1 );
				float lerpResult63_g12974 = lerp( lerpResult49_g12974 , ( break50_g12974.x + ( break50_g12974.y * ( 2.0 * UNITY_PI ) ) ) , (float)saturate( temp_output_60_0_g12974 ));
				float2 vertexToFrag51_g12986 = IN.ase_texcoord12.xy;
				float Direction27_g12985 = tex2D( _DirectionalMap, vertexToFrag51_g12986 ).r;
				float temp_output_85_0_g12974 = Direction27_g12985;
				int temp_output_81_0_g12974 = ( temp_output_60_0_g12974 - 1 );
				float lerpResult79_g12974 = lerp( lerpResult63_g12974 , temp_output_85_0_g12974 , (float)saturate( temp_output_81_0_g12974 ));
				int temp_output_83_0_g12974 = ( temp_output_81_0_g12974 - 1 );
				float lerpResult80_g12974 = lerp( lerpResult79_g12974 , ( 1.0 - temp_output_85_0_g12974 ) , (float)saturate( temp_output_83_0_g12974 ));
				float3 rotatedValue134_g12974 = RotateAroundAxis( float3( 0,0,0 ), worldPos, float3( 0,0,1 ), temp_output_53_0_g12974 );
				float lerpResult131_g12974 = lerp( lerpResult80_g12974 , (rotatedValue134_g12974).y , (float)saturate( ( temp_output_83_0_g12974 - 1 ) ));
				float temp_output_24_0_g12974 = ( ( 1.0 - _RainbowHueRange ) * 0.5 );
				float3 hsvTorgb3_g12974 = HSVToRGB( float3(( (temp_output_24_0_g12974 + (sin( ( EmissionGlowAnimation67_g12974 + ( lerpResult131_g12974 * _RainbowScale ) ) ) - -1.0) * (( 1.0 - temp_output_24_0_g12974 ) - temp_output_24_0_g12974) / (1.0 - -1.0)) + _RainbowHue ),_RainbowSaturation,_RainbowValue) );
				float3 Rainbow2089 = hsvTorgb3_g12974;
				float RainbowChannel704_g12820 = _RainbowChannel;
				float RainbowMap703_g12820 = _RainbowMask;
				float4 temp_cast_13 = (0.0).xxxx;
				float4 temp_cast_14 = (1.0).xxxx;
				float4 RainbowRGBA705_g12820 = ( 5.0 == RainbowMap703_g12820 ? temp_cast_13 : ( 4.0 == RainbowMap703_g12820 ? temp_cast_14 : ( 3.0 == RainbowMap703_g12820 ? MM04RGBA8_g12820 : ( 2.0 == RainbowMap703_g12820 ? MM03RGBA7_g12820 : ( 1.0 == RainbowMap703_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) ) );
				float RainbowMask2094 = ( 3.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).a : ( 2.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).b : ( 1.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).g : (RainbowRGBA705_g12820).r ) ) );
				float3 lerpResult2095 = lerp( staticSwitch1780 , Rainbow2089 , RainbowMask2094);
				#ifdef _RAINBOW_ON
				float3 staticSwitch2098 = lerpResult2095;
				#else
				float3 staticSwitch2098 = staticSwitch1780;
				#endif
				float EmissionMaskChannel395_g12820 = _EmissionMaskChannel;
				float EmissionMaskMap394_g12820 = _EmissionMaskMap;
				float4 temp_cast_15 = (1.0).xxxx;
				float4 EmissionMaskRGBA396_g12820 = ( 4.0 == EmissionMaskMap394_g12820 ? temp_cast_15 : ( 3.0 == EmissionMaskMap394_g12820 ? MM04RGBA8_g12820 : ( 2.0 == EmissionMaskMap394_g12820 ? MM03RGBA7_g12820 : ( 1.0 == EmissionMaskMap394_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float EmissionMask1427 = ( 3.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).a : ( 2.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).b : ( 1.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).g : (EmissionMaskRGBA396_g12820).r ) ) );
				float2 vertexToFrag51_g12830 = IN.ase_texcoord12.zw;
				float3 EmissionColor849 = ( _EmissionColor * tex2D( _EmissionMap, vertexToFrag51_g12830 ).rgb );
				float3 temp_output_1514_0 = ( EmissionMask1427 * EmissionColor849 );
				float3 lerpResult1512 = lerp( staticSwitch2098 , ( ( staticSwitch2098 - temp_output_1514_0 ) + temp_output_1514_0 ) , ( _ReplaceBaseColor * EmissionMask1427 ));
				float3 MainTexMultiplied1688 = temp_output_845_0;
				float3 lerpResult54_g13099 = lerp( _StarshineColor , MainTexMultiplied1688 , _StarshineBaseColor);
				float SpecularTintMap2236 = _SpecularTintMap;
				float3 BaseColorB4Starshine2227 = lerpResult1512;
				float3 temp_cast_16 = (1.0).xxx;
				float3 SpecularTintUnpacked1444 = ( 5.0 == SpecularTintMap2236 ? BaseColorB4Starshine2227 : ( 4.0 == SpecularTintMap2236 ? temp_cast_16 : ( 3.0 == SpecularTintMap2236 ? (MaskMap041244).rgb : ( 2.0 == SpecularTintMap2236 ? (MaskMap031239).rgb : ( 1.0 == SpecularTintMap2236 ? (MaskMap021234).rgb : (MaskMap011220).rgb ) ) ) ) );
				float3 temp_cast_17 = (1.0).xxx;
				float3 SpecularTint1463 = ( _SpecularTint * ( 2.0 == Workflow1249 ? SpecularTintUnpacked1444 : ( 1.0 == Workflow1249 ? temp_cast_17 : (MaskMap011220).rgb ) ) );
				float3 temp_output_69_0_g13099 = ( lerpResult54_g13099 * SpecularTint1463 );
				float3 temp_output_28_0_g13099 = ( (1.0 + (_StarshineMetallic - 0.0) * (0.1 - 1.0) / (1.0 - 0.0)) * temp_output_69_0_g13099 );
				float3 StartColor64_g13099 = temp_output_28_0_g13099;
				float3 StarshineAlbedo1655 = StartColor64_g13099;
				float StarshineChannel541_g12820 = _StarshineChannel;
				float StarshineMap540_g12820 = _StarshineMask;
				float4 temp_cast_18 = (1.0).xxxx;
				float4 StarshineRGBA544_g12820 = ( 4.0 == StarshineMap540_g12820 ? temp_cast_18 : ( 3.0 == StarshineMap540_g12820 ? MM04RGBA8_g12820 : ( 2.0 == StarshineMap540_g12820 ? MM03RGBA7_g12820 : ( 1.0 == StarshineMap540_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float StarshineMask1660 = ( 3.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).a : ( 2.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).b : ( 1.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).g : (StarshineRGBA544_g12820).r ) ) );
				float3 lerpResult1663 = lerp( lerpResult1512 , StarshineAlbedo1655 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float3 staticSwitch1765 = lerpResult1663;
				#else
				float3 staticSwitch1765 = lerpResult1512;
				#endif
				float3 BaseColor579 = staticSwitch1765;
				float MetallicChannel54_g12820 = _MetallicChannel;
				float MetallicMap46_g12820 = _MetallicMask;
				float4 temp_cast_19 = (1.0).xxxx;
				float4 MetallicRGBA62_g12820 = ( 4.0 == MetallicMap46_g12820 ? temp_cast_19 : ( 3.0 == MetallicMap46_g12820 ? MM04RGBA8_g12820 : ( 2.0 == MetallicMap46_g12820 ? MM03RGBA7_g12820 : ( 1.0 == MetallicMap46_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float MetallicMapUnpacked1265 = ( 3.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).a : ( 2.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).b : ( 1.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).g : (MetallicRGBA62_g12820).r ) ) );
				float temp_output_840_0 = ( ( 2.0 == Workflow1249 ? MetallicMapUnpacked1265 : ( 1.0 == Workflow1249 ? 0.0 : (MaskMap011220).r ) ) * _MetallicMult );
				float StarshineMetallic1691 = _StarshineMetallic;
				float lerpResult1676 = lerp( temp_output_840_0 , StarshineMetallic1691 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float staticSwitch1768 = lerpResult1676;
				#else
				float staticSwitch1768 = temp_output_840_0;
				#endif
				float lerpResult2404 = lerp( staticSwitch1768 , 0.65 , DreamweaveMask1790);
				#ifdef _DREAMWEAVE_ON
				float staticSwitch2406 = lerpResult2404;
				#else
				float staticSwitch2406 = staticSwitch1768;
				#endif
				float Metallic839 = staticSwitch2406;
				float temp_output_2872_0 = saturate( (0.0 + (Metallic839 - 0.0) * (1.0 - 0.0) / (0.85 - 0.0)) );
				float3 lerpResult2846 = lerp( temp_cast_1 , BaseColor579 , temp_output_2872_0);
				float3 temp_output_1446_0 = ( lerpResult2846 * SpecularTint1463 );
				float3 SpecColor140_g12937 = temp_output_1446_0;
				float GlossChannel135_g12820 = _GlossChannel;
				float GlossMap136_g12820 = _GlossMap;
				float4 temp_cast_20 = (1.0).xxxx;
				float4 GlossRGBA119_g12820 = ( 4.0 == GlossMap136_g12820 ? temp_cast_20 : ( 3.0 == GlossMap136_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlossMap136_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlossMap136_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_127_0_g12820 = ( 3.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).a : ( 2.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).b : ( 1.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).g : (GlossRGBA119_g12820).r ) ) );
				float GlossMapUnpacked1274 = temp_output_127_0_g12820;
				float temp_output_1285_0 = ( 2.0 == Workflow1249 ? GlossMapUnpacked1274 : (MaskMap011220).a );
				float lerpResult1282 = lerp( temp_output_1285_0 , ( 1.0 - temp_output_1285_0 ) , _InvertGloss);
				float temp_output_647_0 = ( lerpResult1282 * _GlossMult );
				float lerpResult1673 = lerp( temp_output_647_0 , 1.0 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float staticSwitch1778 = lerpResult1673;
				#else
				float staticSwitch1778 = temp_output_647_0;
				#endif
				float Smoothness_650 = staticSwitch1778;
				float temp_output_147_0_g12937 = Smoothness_650;
				float smoothness169_g12937 = temp_output_147_0_g12937;
				float temp_output_358_0_g12937 = Metallic839;
				float3 specularColor336_g12937 = (0).xxx;
				float oneMinusReflectivity336_g12937 = 0;
				float3 diffuseColor336_g12937 = ASEComputeDiffuseAndFresnel0( float3( 0,0,0 ), temp_output_358_0_g12937, specularColor336_g12937, oneMinusReflectivity336_g12937 );
				half GrazingTerm163_g12937 = saturate( ( smoothness169_g12937 + ( 1.0 - oneMinusReflectivity336_g12937 ) ) );
				float3 temp_cast_21 = (GrazingTerm163_g12937).xxx;
				float3 normalizedWorldNormal = normalize( WorldNormal );
				float dotResult151_g12939 = dot( normalizedWorldNormal , worldViewDir );
				float temp_output_6_0_g12938 = saturate( ( 1.0 - max( dotResult151_g12939 , 0.0 ) ) );
				float3 lerpResult1_g12938 = lerp( SpecColor140_g12937 , temp_cast_21 , ( temp_output_6_0_g12938 * temp_output_6_0_g12938 * temp_output_6_0_g12938 * temp_output_6_0_g12938 * temp_output_6_0_g12938 ));
				half3 FresnelLerp165_g12937 = lerpResult1_g12938;
				float3 temp_output_317_0_g12937 = WorldNorm601;
				float3 WorldNormal360_g12937 = temp_output_317_0_g12937;
				float occlusion306_g12937 = Occlusion1309;
				Unity_GlossyEnvironmentData g319_g12937 = UnityGlossyEnvironmentSetup( smoothness169_g12937, worldViewDir, WorldNormal360_g12937, float3(0,0,0));
				float3 indirectSpecular319_g12937 = UnityGI_IndirectSpecular( data, occlusion306_g12937, WorldNormal360_g12937, g319_g12937 );
				float3 temp_output_177_0_g12937 = ( FresnelLerp165_g12937 * indirectSpecular319_g12937 );
				float3 SpecColor140_g12944 = temp_output_1446_0;
				float temp_output_147_0_g12944 = Smoothness_650;
				float smoothness169_g12944 = temp_output_147_0_g12944;
				float temp_output_358_0_g12944 = Metallic839;
				float3 specularColor336_g12944 = (0).xxx;
				float oneMinusReflectivity336_g12944 = 0;
				float3 diffuseColor336_g12944 = ASEComputeDiffuseAndFresnel0( float3( 0,0,0 ), temp_output_358_0_g12944, specularColor336_g12944, oneMinusReflectivity336_g12944 );
				half GrazingTerm163_g12944 = saturate( ( smoothness169_g12944 + ( 1.0 - oneMinusReflectivity336_g12944 ) ) );
				float3 temp_cast_22 = (GrazingTerm163_g12944).xxx;
				float dotResult151_g12946 = dot( normalizedWorldNormal , worldViewDir );
				float temp_output_6_0_g12945 = saturate( ( 1.0 - max( dotResult151_g12946 , 0.0 ) ) );
				float3 lerpResult1_g12945 = lerp( SpecColor140_g12944 , temp_cast_22 , ( temp_output_6_0_g12945 * temp_output_6_0_g12945 * temp_output_6_0_g12945 * temp_output_6_0_g12945 * temp_output_6_0_g12945 ));
				half3 FresnelLerp165_g12944 = lerpResult1_g12945;
				float3 temp_output_317_0_g12944 = WorldNorm601;
				float3 WorldNormal360_g12944 = temp_output_317_0_g12944;
				float occlusion306_g12944 = Occlusion1309;
				Unity_GlossyEnvironmentData g319_g12944 = UnityGlossyEnvironmentSetup( smoothness169_g12944, worldViewDir, WorldNormal360_g12944, float3(0,0,0));
				float3 indirectSpecular319_g12944 = UnityGI_IndirectSpecular( data, occlusion306_g12944, WorldNormal360_g12944, g319_g12944 );
				float3 temp_output_177_0_g12944 = ( FresnelLerp165_g12944 * indirectSpecular319_g12944 );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2043 = temp_output_177_0_g12937;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2043 = temp_output_177_0_g12944;
				#else
				float3 staticSwitch2043 = temp_output_177_0_g12937;
				#endif
				float3 IndSpec815 = ( ReflectionMask1402 * staticSwitch2043 );
				UnityGIInput data516;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data516 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm516
				data516.lightmapUV = IN.ase_lmap;
				#endif //dylm516
				#if UNITY_SHOULD_SAMPLE_SH //fsh516
				data516.ambient = IN.ase_sh;
				#endif //fsh516
				UnityGI gi516 = UnityGI_Base(data516, 1, WorldNorm601);
				float3 normalizeResult1136 = ASESafeNormalize( float3(-1.5,1,0) );
				float4 appendResult1120 = (float4(normalizeResult1136 , 1.0));
				float4 uvw1109 = appendResult1120;
				float3 localgetProbes1109 = getProbes( uvw1109 );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2035 = gi516.indirect.diffuse;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2035 = localgetProbes1109;
				#else
				float3 staticSwitch2035 = gi516.indirect.diffuse;
				#endif
				float3 temp_cast_24 = (0.01).xxx;
				float3 IndDiffuse577 = ( max( staticSwitch2035 , temp_cast_24 ) * Occlusion1309 );
				int localLightExists8_g12826 = LightExists8_g12826();
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 break1_g12826 = ase_lightColor.rgb;
				float smoothstepResult14_g12826 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g12826.x , break1_g12826.y ) , break1_g12826.z ) ));
				#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g12826 = smoothstepResult14_g12826;
				#else
				float staticSwitch7_g12826 = 1.0;
				#endif
				float DetectLight1057 = ( localLightExists8_g12826 * staticSwitch7_g12826 );
				float3 _Vector222 = float3(1.5,1,0.2);
				float3 ProbeDir1060 = _Vector222;
				UnityGIInput data1037;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data1037 );
				#if defined(LIGHTMAP_ON) || defined(DYNAMICLIGHTMAP_ON) //dylm1037
				data1037.lightmapUV = IN.ase_lmap;
				#endif //dylm1037
				#if UNITY_SHOULD_SAMPLE_SH //fsh1037
				data1037.ambient = IN.ase_sh;
				#endif //fsh1037
				UnityGI gi1037 = UnityGI_Base(data1037, 1, ProbeDir1060);
				float3 temp_output_1038_0 = max( gi1037.indirect.diffuse , float3( 0,0,0 ) );
				float3 normalizeResult2038 = ASESafeNormalize( float3(-1.5,1,0) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2036 = WorldNorm601;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2036 = normalizeResult2038;
				#else
				float3 staticSwitch2036 = WorldNorm601;
				#endif
				float3 uvw1050 = staticSwitch2036;
				float3 localsampleReflectionProbe1050 = sampleReflectionProbe1050( uvw1050 );
				float3 lerpResult1055 = lerp( temp_output_1038_0 , localsampleReflectionProbe1050 , 0.5);
				int Band11_g12827 = 56;
				int localIsLumaActive11_g12827 = IsLumaActive11_g12827( Band11_g12827 );
				float localIfAudioLinkv2Exists1_g12828 = IfAudioLinkv2Exists1_g12828();
				float3 lerpResult1041 = lerp( temp_output_1038_0 , lerpResult1055 , min( (float)localIsLumaActive11_g12827 , localIfAudioLinkv2Exists1_g12828 ));
				float3 LightColBase1046 = ( DetectLight1057 < 0.9 ? lerpResult1041 : ase_lightColor.rgb );
				float temp_output_514_0 = (float4(atten,0,0,0)).x;
				float smoothstepResult1087 = smoothstep( 0.15 , 0.151 , temp_output_514_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2026 = temp_output_514_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2026 = smoothstepResult1087;
				#else
				float staticSwitch2026 = temp_output_514_0;
				#endif
				float3 PixelLightsBase571 = ( LightColBase1046 * staticSwitch2026 );
				float3 normalizeResult1170 = normalize( float3(-0.05,1,0) );
				float3 rotatedValue1169 = RotateAroundAxis( float3( 0,0,0 ), worldNormal600, normalizeResult1170, radians( 65.0 ) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2068 = worldNormal600;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2068 = ( DetectLight1057 < 0.9 ? rotatedValue1169 : worldNormal600 );
				#else
				float3 staticSwitch2068 = worldNormal600;
				#endif
				float3 WorldNormToon2194 = staticSwitch2068;
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2039 = _Vector222;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2039 = WorldView639;
				#else
				float3 staticSwitch2039 = _Vector222;
				#endif
				float3 worldSpaceLightDir = Unity_SafeNormalize( UnityWorldSpaceLightDir( worldPos ) );
				float3 LightDirBase610 = ( DetectLight1057 < 0.9 ? staticSwitch2039 : worldSpaceLightDir );
				float dotResult664 = dot( WorldNormToon2194 , LightDirBase610 );
				float temp_output_665_0 = max( dotResult664 , 0.0 );
				float smoothstepResult1085 = smoothstep( 0.0 , 0.01 , temp_output_665_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2040 = temp_output_665_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2040 = smoothstepResult1085;
				#else
				float staticSwitch2040 = temp_output_665_0;
				#endif
				float NdotLBase608 = staticSwitch2040;
				float3 vertexToFrag945 = IN.ase_texcoord15.xyz;
				#ifdef VERTEXLIGHT_ON
				float3 staticSwitch537 = vertexToFrag945;
				#else
				float3 staticSwitch537 = float3( 0,0,0 );
				#endif
				float3 VertexLights876 = staticSwitch537;
				float3 MainPassLight615 = ( ( IndDiffuse577 + ( PixelLightsBase571 * NdotLBase608 ) + VertexLights876 ) * 0.9 );
				float3 specularColor706 = (0).xxx;
				float oneMinusReflectivity706 = 0;
				float3 diffuseColor706 = ASEComputeDiffuseAndFresnel0( BaseColor579, Metallic839, specularColor706, oneMinusReflectivity706 );
				float3 temp_output_2855_0 = ( diffuseColor706 * ( 1.0 - Metallic839 ) );
				float3 lerpResult1113 = lerp( temp_output_2855_0 , BaseColor579 , ( Metallic839 * 0.025 ));
				float3 lerpResult2450 = lerp( temp_output_2855_0 , BaseColor579 , 0.8);
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch2410 = lerpResult2450;
				#else
				float3 staticSwitch2410 = lerpResult1113;
				#endif
				float3 DiffuseColor824 = staticSwitch2410;
				float3 normalDir363_g12937 = WorldNormal360_g12937;
				float3 WorldViewStereo2211 = worldViewDir;
				float3 viewDir15_g12937 = WorldViewStereo2211;
				float dotResult56_g12937 = dot( normalDir363_g12937 , viewDir15_g12937 );
				float NdotV55_g12937 = max( dotResult56_g12937 , 0.0 );
				float temp_output_149_0_g12937 = ( 1.0 - smoothness169_g12937 );
				float perceprualRoughness188_g12937 = ( temp_output_149_0_g12937 * temp_output_149_0_g12937 );
				half Roughness64_g12937 = max( perceprualRoughness188_g12937 , 0.0001 );
				float NdotL20_g12937 = NdotLBase608;
				half SmithJointGGXVisibilityTerm42_g12937 = ( 0.5 / ( ( ( ( NdotV55_g12937 * ( 1.0 - Roughness64_g12937 ) ) + Roughness64_g12937 ) * NdotL20_g12937 ) + 1E-05 + ( NdotV55_g12937 * ( Roughness64_g12937 + ( ( 1.0 - Roughness64_g12937 ) * NdotL20_g12937 ) ) ) ) );
				#if ( SHADER_TARGET >= 50 )
				float recip707_g12940 = rcp( UNITY_PI );
				#else
				float recip707_g12940 = 1.0 / UNITY_PI;
				#endif
				float temp_output_705_0_g12940 = perceprualRoughness188_g12937;
				float3 normalDirToon28_g12937 = temp_output_317_0_g12937;
				float3 lightDir14_g12937 = LightDirBase610;
				float3 normalizeResult87_g12937 = ASESafeNormalize( ( lightDir14_g12937 + viewDir15_g12937 ) );
				float dotResult88_g12937 = dot( normalDirToon28_g12937 , normalizeResult87_g12937 );
				float NdotH90_g12937 = max( dotResult88_g12937 , 0.0 );
				float temp_output_670_0_g12940 = ( NdotH90_g12937 * NdotH90_g12937 );
				float temp_output_666_0_g12940 = ( max( temp_output_705_0_g12940 , 0.002 ) / ( temp_output_670_0_g12940 * ( ( ( 1.0 - temp_output_670_0_g12940 ) / temp_output_670_0_g12940 ) + ( temp_output_705_0_g12940 * temp_output_705_0_g12940 ) ) ) );
				half GGXTerm43_g12937 = ( recip707_g12940 * ( temp_output_666_0_g12940 * temp_output_666_0_g12940 ) );
				float temp_output_36_0_g12937 = ( SmithJointGGXVisibilityTerm42_g12937 * GGXTerm43_g12937 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g12937 = sqrt( max( 0.0001 , temp_output_36_0_g12937 ) );
				#else
				float staticSwitch5_g12937 = temp_output_36_0_g12937;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g12937 = 0.0;
				#else
				float staticSwitch119_g12937 = max( 0.0 , ( staticSwitch5_g12937 * NdotL20_g12937 ) );
				#endif
				float SpecularTerm34_g12937 = min( ( staticSwitch119_g12937 * ( SpecColor140_g12937.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) ) , 32.0 );
				float3 normalizeResult136_g12937 = ASESafeNormalize( ( lightDir14_g12937 + viewDir15_g12937 ) );
				float dotResult137_g12937 = dot( lightDir14_g12937 , normalizeResult136_g12937 );
				float LdotH139_g12937 = saturate( dotResult137_g12937 );
				half3 FresnelTerm130_g12937 = ( ( pow( ( 1.0 - LdotH139_g12937 ) , 5.0 ) * ( 1.0 - SpecColor140_g12937 ) ) + SpecColor140_g12937 );
				float3 temp_output_144_0_g12937 = ( SpecularTerm34_g12937 * FresnelTerm130_g12937 );
				float3 normalDir363_g12944 = WorldNormal360_g12944;
				float3 viewDir15_g12944 = WorldViewStereo2211;
				float dotResult56_g12944 = dot( normalDir363_g12944 , viewDir15_g12944 );
				float NdotV55_g12944 = max( dotResult56_g12944 , 0.0 );
				float temp_output_149_0_g12944 = ( 1.0 - smoothness169_g12944 );
				float perceprualRoughness188_g12944 = ( temp_output_149_0_g12944 * temp_output_149_0_g12944 );
				half Roughness64_g12944 = max( perceprualRoughness188_g12944 , 0.0001 );
				float NdotL20_g12944 = NdotLBase608;
				half SmithJointGGXVisibilityTerm42_g12944 = ( 0.5 / ( ( ( ( NdotV55_g12944 * ( 1.0 - Roughness64_g12944 ) ) + Roughness64_g12944 ) * NdotL20_g12944 ) + 1E-05 + ( NdotV55_g12944 * ( Roughness64_g12944 + ( ( 1.0 - Roughness64_g12944 ) * NdotL20_g12944 ) ) ) ) );
				float3 normalDirToon28_g12944 = WorldNormToon2194;
				float3 lightDir14_g12944 = LightDirBase610;
				float3 normalizeResult87_g12944 = ASESafeNormalize( ( lightDir14_g12944 + WorldView639 ) );
				float dotResult88_g12944 = dot( normalDirToon28_g12944 , normalizeResult87_g12944 );
				float NdotH90_g12944 = max( dotResult88_g12944 , 0.0 );
				float saferPower337_g12944 = abs( NdotH90_g12944 );
				float temp_output_349_0_g12944 = ( smoothness169_g12944 * smoothness169_g12944 * smoothness169_g12944 * smoothness169_g12944 * smoothness169_g12944 * smoothness169_g12944 );
				float smoothstepResult345_g12944 = smoothstep( 0.001 , 0.002 , pow( saferPower337_g12944 , (1.0 + (temp_output_349_0_g12944 - 0.0) * (2048.0 - 1.0) / (1.0 - 0.0)) ));
				half GGXTerm43_g12944 = ( smoothstepResult345_g12944 * (0.0 + (temp_output_349_0_g12944 - 0.0) * (32.0 - 0.0) / (1.0 - 0.0)) * 2.0 );
				float temp_output_36_0_g12944 = ( SmithJointGGXVisibilityTerm42_g12944 * GGXTerm43_g12944 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g12944 = sqrt( max( 0.0001 , temp_output_36_0_g12944 ) );
				#else
				float staticSwitch5_g12944 = temp_output_36_0_g12944;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g12944 = 0.0;
				#else
				float staticSwitch119_g12944 = max( 0.0 , ( staticSwitch5_g12944 * NdotL20_g12944 ) );
				#endif
				float SpecularTerm34_g12944 = min( ( staticSwitch119_g12944 * ( SpecColor140_g12944.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) ) , 32.0 );
				float3 normalizeResult136_g12944 = ASESafeNormalize( ( lightDir14_g12944 + viewDir15_g12944 ) );
				float dotResult137_g12944 = dot( lightDir14_g12944 , normalizeResult136_g12944 );
				float LdotH139_g12944 = saturate( dotResult137_g12944 );
				half3 FresnelTerm130_g12944 = ( ( pow( ( 1.0 - LdotH139_g12944 ) , 5.0 ) * ( 1.0 - SpecColor140_g12944 ) ) + SpecColor140_g12944 );
				float3 temp_output_144_0_g12944 = ( SpecularTerm34_g12944 * FresnelTerm130_g12944 );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2044 = temp_output_144_0_g12937;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2044 = temp_output_144_0_g12944;
				#else
				float3 staticSwitch2044 = temp_output_144_0_g12937;
				#endif
				float SpecularMaskChannel473_g12820 = _SpecularMaskChannel;
				float SpecularMaskMap472_g12820 = _SpecularMask;
				float4 temp_cast_29 = (1.0).xxxx;
				float4 SpecularMaskRGBA474_g12820 = ( 4.0 == SpecularMaskMap472_g12820 ? temp_cast_29 : ( 3.0 == SpecularMaskMap472_g12820 ? MM04RGBA8_g12820 : ( 2.0 == SpecularMaskMap472_g12820 ? MM03RGBA7_g12820 : ( 1.0 == SpecularMaskMap472_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float SpecularMask1441 = ( 3.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).a : ( 2.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).b : ( 1.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).g : (SpecularMaskRGBA474_g12820).r ) ) );
				float3 SpecularBase645 = ( staticSwitch2044 * SpecularMask1441 );
				float3 FallbackColor289_g12987 = _RedChGlowFallback.rgb;
				float GlowMask0Channel160_g12820 = _GlowMask0Channel;
				float GlowMask0Map157_g12820 = _GlowMask0;
				float4 temp_cast_31 = (1.0).xxxx;
				float4 GlowMask0RGBA166_g12820 = ( 4.0 == GlowMask0Map157_g12820 ? temp_cast_31 : ( 3.0 == GlowMask0Map157_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlowMask0Map157_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlowMask0Map157_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float GlowMask0169_g12820 = ( 3.0 == GlowMask0Channel160_g12820 ? (GlowMask0RGBA166_g12820).a : ( 2.0 == GlowMask0Channel160_g12820 ? (GlowMask0RGBA166_g12820).b : ( 1.0 == GlowMask0Channel160_g12820 ? (GlowMask0RGBA166_g12820).g : (GlowMask0RGBA166_g12820).r ) ) );
				float GlowMask1Channel200_g12820 = _GlowMask1Channel;
				float GlowMask1Map198_g12820 = _GlowMask1;
				float4 temp_cast_32 = (1.0).xxxx;
				float4 GlowMask1RGBA197_g12820 = ( 4.0 == GlowMask1Map198_g12820 ? temp_cast_32 : ( 3.0 == GlowMask1Map198_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlowMask1Map198_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlowMask1Map198_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float GlowMask1199_g12820 = ( 3.0 == GlowMask1Channel200_g12820 ? (GlowMask1RGBA197_g12820).a : ( 2.0 == GlowMask1Channel200_g12820 ? (GlowMask1RGBA197_g12820).b : ( 1.0 == GlowMask1Channel200_g12820 ? (GlowMask1RGBA197_g12820).g : (GlowMask1RGBA197_g12820).r ) ) );
				float GlowMask2Channel226_g12820 = _GlowMask2Channel;
				float GlowMask2Map225_g12820 = _GlowMask2;
				float4 temp_cast_33 = (1.0).xxxx;
				float4 GlowMask2RGBA227_g12820 = ( 4.0 == GlowMask2Map225_g12820 ? temp_cast_33 : ( 3.0 == GlowMask2Map225_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlowMask2Map225_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlowMask2Map225_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float GlowMask2228_g12820 = ( 3.0 == GlowMask2Channel226_g12820 ? (GlowMask2RGBA227_g12820).a : ( 2.0 == GlowMask2Channel226_g12820 ? (GlowMask2RGBA227_g12820).b : ( 1.0 == GlowMask2Channel226_g12820 ? (GlowMask2RGBA227_g12820).g : (GlowMask2RGBA227_g12820).r ) ) );
				float GlowMask3Channel263_g12820 = _GlowMask3Channel;
				float GlowMask3Map262_g12820 = _GlowMask3;
				float4 temp_cast_34 = (1.0).xxxx;
				float4 GlowMask3RGBA264_g12820 = ( 4.0 == GlowMask3Map262_g12820 ? temp_cast_34 : ( 3.0 == GlowMask3Map262_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlowMask3Map262_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlowMask3Map262_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float GlowMask3265_g12820 = ( 3.0 == GlowMask3Channel263_g12820 ? (GlowMask3RGBA264_g12820).a : ( 2.0 == GlowMask3Channel263_g12820 ? (GlowMask3RGBA264_g12820).b : ( 1.0 == GlowMask3Channel263_g12820 ? (GlowMask3RGBA264_g12820).g : (GlowMask3RGBA264_g12820).r ) ) );
				float4 appendResult266_g12820 = (float4(GlowMask0169_g12820 , GlowMask1199_g12820 , GlowMask2228_g12820 , GlowMask3265_g12820));
				float4 GlowMaskRGBA1295 = appendResult266_g12820;
				float4 GlowMaskRGBA174_g12985 = GlowMaskRGBA1295;
				float temp_output_236_0_g12987 = (GlowMaskRGBA174_g12985).x;
				float3 temp_output_291_0_g12987 = ( FallbackColor289_g12987 * _UseFallback0 * temp_output_236_0_g12987 );
				float4 temp_cast_37 = (1.0).xxxx;
				float3 temp_cast_39 = (1.0).xxx;
				int EmissionGlowZone47_g12987 = _RedChGlowZone;
				int clampResult8_g12993 = clamp( EmissionGlowZone47_g12987 , 1 , 4 );
				int temp_output_3_0_g12993 = ( clampResult8_g12993 - 1 );
				int Zone16_g12993 = temp_output_3_0_g12993;
				float3 localgetThemeData16_g12993 = getThemeData( Zone16_g12993 );
				int Band11_g12994 = 56;
				int localIsLumaActive11_g12994 = IsLumaActive11_g12994( Band11_g12994 );
				int temp_output_14_0_g12993 = localIsLumaActive11_g12994;
				int lerpResult15_g12993 = lerp( temp_output_3_0_g12993 , ( 63 - temp_output_3_0_g12993 ) , (float)temp_output_14_0_g12993);
				int Band2_g12993 = lerpResult15_g12993;
				int Delay2_g12993 = 0;
				float3 localLumaGlowData2_g12993 = LumaGlowData2_g12993( Band2_g12993 , Delay2_g12993 );
				float3 lerpResult17_g12993 = lerp( ( localgetThemeData16_g12993 * localLumaGlowData2_g12993 ) , localLumaGlowData2_g12993 , (float)temp_output_14_0_g12993);
				int temp_output_21_0_g12987 = saturate( EmissionGlowZone47_g12987 );
				float3 lerpResult20_g12987 = lerp( temp_cast_39 , lerpResult17_g12993 , (float)temp_output_21_0_g12987);
				float3 temp_cast_43 = (1.0).xxx;
				int clampResult8_g12995 = clamp( EmissionGlowZone47_g12987 , 1 , 4 );
				int temp_output_3_0_g12995 = ( clampResult8_g12995 - 1 );
				int Zone15_g12995 = temp_output_3_0_g12995;
				float3 localgetThemeData15_g12995 = getThemeData( Zone15_g12995 );
				int Band11_g12996 = 56;
				int localIsLumaActive11_g12996 = IsLumaActive11_g12996( Band11_g12996 );
				int temp_output_13_0_g12995 = localIsLumaActive11_g12996;
				int lerpResult14_g12995 = lerp( temp_output_3_0_g12995 , ( 63 - temp_output_3_0_g12995 ) , (float)temp_output_13_0_g12995);
				int Band11_g12995 = lerpResult14_g12995;
				float2 texCoord11_g12987 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos6_g12987 = cos( radians( _RedChGlowPulseDir ) );
				float sin6_g12987 = sin( radians( _RedChGlowPulseDir ) );
				float2 rotator6_g12987 = mul( texCoord11_g12987 - float2( 0.5,0.5 ) , float2x2( cos6_g12987 , -sin6_g12987 , sin6_g12987 , cos6_g12987 )) + float2( 0.5,0.5 );
				int Band6_g12997 = _RedChGlowAnimationBand;
				int Mode6_g12997 = ( ( _RedChGlowAnimationMode * 2 ) + _RedChGlowAnimationSpeed );
				int localAudioLinkDecodeDataAsUInt6_g12997 = AudioLinkDecodeDataAsUInt6_g12997( Band6_g12997 , Mode6_g12997 );
				float localGetLocalTime2_g12998 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
				float lerpResult206_g12987 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g12997 % 628319 ) / 100000.0 ) , localGetLocalTime2_g12998 , (float)saturate( ( _RedChGlowAnimationMode - 3 ) ));
				float EmissionGlowAnimation195_g12987 = ( _RedChGlowAnimationStrength * lerpResult206_g12987 * step( _RedChGlowAnimationBand , 9 ) );
				float x13_g12987 = ( ( rotator6_g12987.x * _RedChGlowPulseScale ) + _RedChGlowPulseOffset + EmissionGlowAnimation195_g12987 );
				float y13_g12987 = 127.0;
				float localglslmod13_g12987 = glslmod13_g12987( x13_g12987 , y13_g12987 );
				float2 texCoord15_g12987 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g12989 = ( texCoord15_g12987 - _RedChGlowRadialCenter );
				float2 break39_g12989 = temp_output_34_0_g12989;
				float2 appendResult50_g12989 = (float2(( _RedChGlowPulseScale * ( length( temp_output_34_0_g12989 ) * 2.0 ) ) , ( ( atan2( break39_g12989.x , break39_g12989.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x12_g12987 = ( _RedChGlowPulseOffset + appendResult50_g12989.x + EmissionGlowAnimation195_g12987 );
				float y12_g12987 = 127.0;
				float localglslmod12_g12987 = glslmod12_g12987( x12_g12987 , y12_g12987 );
				int EmissionGlowMode35_g12987 = _RedChGlowMode;
				int temp_output_37_0_g12987 = ( EmissionGlowMode35_g12987 - 1 );
				float lerpResult5_g12987 = lerp( localglslmod13_g12987 , localglslmod12_g12987 , (float)saturate( temp_output_37_0_g12987 ));
				float DirectionalMap106_g12987 = Direction27_g12985;
				float lerpResult179_g12987 = lerp( DirectionalMap106_g12987 , ( 1.0 - DirectionalMap106_g12987 ) , (float)saturate( ( EmissionGlowMode35_g12987 - 3 ) ));
				float x34_g12987 = ( _RedChGlowPulseOffset + ( _RedChGlowPulseScale * lerpResult179_g12987 ) + EmissionGlowAnimation195_g12987 );
				float y34_g12987 = 127.0;
				float localglslmod34_g12987 = glslmod34_g12987( x34_g12987 , y34_g12987 );
				float lerpResult30_g12987 = lerp( lerpResult5_g12987 , localglslmod34_g12987 , (float)saturate( ( temp_output_37_0_g12987 - 1 ) ));
				float EmissionGlowDelay56_g12987 = lerpResult30_g12987;
				float Delay11_g12995 = EmissionGlowDelay56_g12987;
				float3 localLumaGlowLerp11_g12995 = LumaGlowLerp11_g12995( Band11_g12995 , Delay11_g12995 );
				float3 lerpResult17_g12995 = lerp( ( localgetThemeData15_g12995 * localLumaGlowLerp11_g12995 ) , localLumaGlowLerp11_g12995 , (float)temp_output_13_0_g12995);
				float3 lerpResult22_g12987 = lerp( temp_cast_43 , lerpResult17_g12995 , (float)temp_output_21_0_g12987);
				float3 lerpResult23_g12987 = lerp( lerpResult20_g12987 , lerpResult22_g12987 , (float)saturate( EmissionGlowMode35_g12987 ));
				float4 temp_cast_53 = (1.0).xxxx;
				float temp_output_10_0_g13001 = EmissionGlowDelay56_g12987;
				float Position1_g13003 = ( temp_output_10_0_g13001 / 127.0 );
				float4 localAudioLinkLerp1_g13003 = AudioLinkLerp1_g13003( Position1_g13003 );
				int clampResult8_g13001 = clamp( ( EmissionGlowZone47_g12987 - 4 ) , 1 , 3 );
				int Band11_g13001 = ( 59 - ( clampResult8_g13001 - 1 ) );
				float Delay11_g13001 = temp_output_10_0_g13001;
				float3 localLumaGlowLerp11_g13001 = LumaGlowLerp11_g13001( Band11_g13001 , Delay11_g13001 );
				int Band11_g13002 = 56;
				int localIsLumaActive11_g13002 = IsLumaActive11_g13002( Band11_g13002 );
				float4 lerpResult14_g13001 = lerp( localAudioLinkLerp1_g13003 , float4( localLumaGlowLerp11_g13001 , 0.0 ) , (float)localIsLumaActive11_g13002);
				float4 lerpResult52_g12987 = lerp( temp_cast_53 , lerpResult14_g13001 , (float)saturate( EmissionGlowZone47_g12987 ));
				float4 lerpResult51_g12987 = lerp( float4( lerpResult23_g12987 , 0.0 ) , lerpResult52_g12987 , (float)saturate( ( EmissionGlowZone47_g12987 - 4 ) ));
				float4 temp_cast_58 = (_RedChGlowMinBrightness).xxxx;
				float4 temp_cast_59 = (( _RedChGlowMinBrightness + 1.0 )).xxxx;
				int temp_output_254_0_g12987 = saturate( EmissionGlowZone47_g12987 );
				float localIfAudioLinkv2Exists1_g13000 = IfAudioLinkv2Exists1_g13000();
				float4 lerpResult284_g12987 = lerp( float4( _RedChGlowFallback.rgb , 0.0 ) , ( (temp_cast_58 + (lerpResult51_g12987 - float4( 0,0,0,0 )) * (temp_cast_59 - temp_cast_58) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * float4( _RedChGlowTint.rgb , 0.0 ) * temp_output_254_0_g12987 ) , localIfAudioLinkv2Exists1_g13000);
				float4 EmissionGlow142_g12987 = lerpResult284_g12987;
				float4 lerpResult257_g12987 = lerp( temp_cast_37 , EmissionGlow142_g12987 , (float)temp_output_254_0_g12987);
				float4 EmissionGlowTog258_g12987 = lerpResult257_g12987;
				int EmissionReactiveBand243_g12987 = _RedChReactiveBand;
				int Band3_g12988 = EmissionReactiveBand243_g12987;
				int Delay3_g12988 = 0;
				float localAudioLinkData3_g12988 = AudioLinkData3_g12988( Band3_g12988 , Delay3_g12988 );
				int temp_output_64_0_g12987 = step( _RedChReactiveBand , 9 );
				float lerpResult66_g12987 = lerp( 1.0 , localAudioLinkData3_g12988 , (float)temp_output_64_0_g12987);
				int Band3_g12990 = _RedChReactiveBand;
				float2 texCoord83_g12987 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos78_g12987 = cos( radians( _RedChReactivePulseDir ) );
				float sin78_g12987 = sin( radians( _RedChReactivePulseDir ) );
				float2 rotator78_g12987 = mul( texCoord83_g12987 - float2( 0.5,0.5 ) , float2x2( cos78_g12987 , -sin78_g12987 , sin78_g12987 , cos78_g12987 )) + float2( 0.5,0.5 );
				float x96_g12987 = ( ( rotator78_g12987.x * _RedChReactivePulseScale ) + _RedChReactivePulseOffset );
				float y96_g12987 = 127.0;
				float localglslmod96_g12987 = glslmod96_g12987( x96_g12987 , y96_g12987 );
				float2 texCoord85_g12987 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g12991 = ( texCoord85_g12987 - _RedChReactiveRadialCenter );
				float2 break39_g12991 = temp_output_34_0_g12991;
				float2 appendResult50_g12991 = (float2(( _RedChReactivePulseScale * ( length( temp_output_34_0_g12991 ) * 2.0 ) ) , ( ( atan2( break39_g12991.x , break39_g12991.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x97_g12987 = ( _RedChReactivePulseOffset + appendResult50_g12991.x );
				float y97_g12987 = 127.0;
				float localglslmod97_g12987 = glslmod97_g12987( x97_g12987 , y97_g12987 );
				int EmissionReactiveMode99_g12987 = _RedChReactiveMode;
				int temp_output_90_0_g12987 = ( EmissionReactiveMode99_g12987 - 1 );
				float lerpResult77_g12987 = lerp( localglslmod96_g12987 , localglslmod97_g12987 , (float)saturate( temp_output_90_0_g12987 ));
				float lerpResult174_g12987 = lerp( DirectionalMap106_g12987 , ( 1.0 - DirectionalMap106_g12987 ) , (float)saturate( ( EmissionReactiveMode99_g12987 - 3 ) ));
				float x98_g12987 = ( _RedChReactivePulseOffset + ( _RedChReactivePulseScale * lerpResult174_g12987 ) );
				float y98_g12987 = 127.0;
				float localglslmod98_g12987 = glslmod98_g12987( x98_g12987 , y98_g12987 );
				float lerpResult87_g12987 = lerp( lerpResult77_g12987 , localglslmod98_g12987 , (float)saturate( ( temp_output_90_0_g12987 - 1 ) ));
				float Delay3_g12990 = lerpResult87_g12987;
				float localAudioLinkLerp3_g12990 = AudioLinkLerp3_g12990( Band3_g12990 , Delay3_g12990 );
				float lerpResult102_g12987 = lerp( 1.0 , localAudioLinkLerp3_g12990 , (float)temp_output_64_0_g12987);
				float lerpResult103_g12987 = lerp( lerpResult66_g12987 , lerpResult102_g12987 , (float)saturate( EmissionReactiveMode99_g12987 ));
				int Band3_g12992 = _RedChReactiveBand;
				float FilteredAmount3_g12992 = ( ( 1.0 - _RedChReactiveGlobalSmoothing ) * 15.0 );
				float localAudioLinkLerp3_g12992 = AudioLinkLerp3_g12992( Band3_g12992 , FilteredAmount3_g12992 );
				float lerpResult168_g12987 = lerp( 1.0 , localAudioLinkLerp3_g12992 , (float)temp_output_64_0_g12987);
				float lerpResult172_g12987 = lerp( lerpResult103_g12987 , lerpResult168_g12987 , (float)saturate( ( EmissionReactiveMode99_g12987 - 4 ) ));
				float ReactivityAlpha132_g12987 = (_RedChReactiveMinBrightness + (lerpResult172_g12987 - 0.0) * (( _RedChReactiveMinBrightness + 1.0 ) - _RedChReactiveMinBrightness) / (1.0 - 0.0));
				float3 temp_cast_70 = (1.0).xxx;
				float3 lerpResult253_g12987 = lerp( temp_cast_70 , _RedChReactiveTint.rgb , (float)step( EmissionReactiveBand243_g12987 , 9 ));
				float3 FinalReactivity68_g12987 = ( ReactivityAlpha132_g12987 * lerpResult253_g12987 );
				float4 lerpResult146_g12987 = lerp( ( EmissionGlowTog258_g12987 * float4( FinalReactivity68_g12987 , 0.0 ) ) , ( EmissionGlow142_g12987 + float4( FinalReactivity68_g12987 , 0.0 ) ) , (float)saturate( _RedChReactiveBlendMode ));
				float3 ReversedReactivity152_g12987 = ( ( 1.0 - ReactivityAlpha132_g12987 ) * lerpResult253_g12987 );
				int temp_output_157_0_g12987 = ( _RedChReactiveBlendMode - 1 );
				float4 lerpResult114_g12987 = lerp( lerpResult146_g12987 , ( EmissionGlowTog258_g12987 * float4( ReversedReactivity152_g12987 , 0.0 ) ) , (float)saturate( temp_output_157_0_g12987 ));
				float4 lerpResult164_g12987 = lerp( lerpResult114_g12987 , ( EmissionGlow142_g12987 + float4( ( ReversedReactivity152_g12987 * step( EmissionReactiveBand243_g12987 , 9 ) ) , 0.0 ) ) , (float)max( saturate( ( temp_output_157_0_g12987 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g12987 , 9 ) ) ));
				float localIfAudioLinkv2Exists1_g12999 = IfAudioLinkv2Exists1_g12999();
				float4 temp_output_213_0_g12987 = ( lerpResult164_g12987 * temp_output_236_0_g12987 * saturate( ( localIfAudioLinkv2Exists1_g12999 + _UseFallback0 ) ) );
				float4 lerpResult280_g12987 = lerp( float4( temp_output_291_0_g12987 , 0.0 ) , temp_output_213_0_g12987 , _EnableRedChannel);
				float temp_output_236_0_g13020 = (GlowMaskRGBA174_g12985).y;
				float3 temp_output_283_0_g13020 = ( _GreenChGlowFallback.rgb * temp_output_236_0_g13020 * _UseFallback1 );
				float4 temp_cast_80 = (1.0).xxxx;
				float3 temp_cast_82 = (1.0).xxx;
				int EmissionGlowZone47_g13020 = _GreenChGlowZone;
				int clampResult8_g13026 = clamp( EmissionGlowZone47_g13020 , 1 , 4 );
				int temp_output_3_0_g13026 = ( clampResult8_g13026 - 1 );
				int Zone16_g13026 = temp_output_3_0_g13026;
				float3 localgetThemeData16_g13026 = getThemeData( Zone16_g13026 );
				int Band11_g13027 = 56;
				int localIsLumaActive11_g13027 = IsLumaActive11_g13027( Band11_g13027 );
				int temp_output_14_0_g13026 = localIsLumaActive11_g13027;
				int lerpResult15_g13026 = lerp( temp_output_3_0_g13026 , ( 63 - temp_output_3_0_g13026 ) , (float)temp_output_14_0_g13026);
				int Band2_g13026 = lerpResult15_g13026;
				int Delay2_g13026 = 0;
				float3 localLumaGlowData2_g13026 = LumaGlowData2_g13026( Band2_g13026 , Delay2_g13026 );
				float3 lerpResult17_g13026 = lerp( ( localgetThemeData16_g13026 * localLumaGlowData2_g13026 ) , localLumaGlowData2_g13026 , (float)temp_output_14_0_g13026);
				int temp_output_21_0_g13020 = saturate( EmissionGlowZone47_g13020 );
				float3 lerpResult20_g13020 = lerp( temp_cast_82 , lerpResult17_g13026 , (float)temp_output_21_0_g13020);
				float3 temp_cast_86 = (1.0).xxx;
				int clampResult8_g13028 = clamp( EmissionGlowZone47_g13020 , 1 , 4 );
				int temp_output_3_0_g13028 = ( clampResult8_g13028 - 1 );
				int Zone15_g13028 = temp_output_3_0_g13028;
				float3 localgetThemeData15_g13028 = getThemeData( Zone15_g13028 );
				int Band11_g13029 = 56;
				int localIsLumaActive11_g13029 = IsLumaActive11_g13029( Band11_g13029 );
				int temp_output_13_0_g13028 = localIsLumaActive11_g13029;
				int lerpResult14_g13028 = lerp( temp_output_3_0_g13028 , ( 63 - temp_output_3_0_g13028 ) , (float)temp_output_13_0_g13028);
				int Band11_g13028 = lerpResult14_g13028;
				float2 texCoord11_g13020 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos6_g13020 = cos( radians( _GreenChGlowPulseDir ) );
				float sin6_g13020 = sin( radians( _GreenChGlowPulseDir ) );
				float2 rotator6_g13020 = mul( texCoord11_g13020 - float2( 0.5,0.5 ) , float2x2( cos6_g13020 , -sin6_g13020 , sin6_g13020 , cos6_g13020 )) + float2( 0.5,0.5 );
				int Band6_g13033 = _GreenChGlowAnimationBand;
				int Mode6_g13033 = ( ( _GreenChGlowAnimationMode * 2 ) + _GreenChGlowAnimationSpeed );
				int localAudioLinkDecodeDataAsUInt6_g13033 = AudioLinkDecodeDataAsUInt6_g13033( Band6_g13033 , Mode6_g13033 );
				float localGetLocalTime2_g13034 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
				float lerpResult206_g13020 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g13033 % 628319 ) / 100000.0 ) , localGetLocalTime2_g13034 , (float)saturate( ( _GreenChGlowAnimationMode - 3 ) ));
				float EmissionGlowAnimation195_g13020 = ( _GreenChGlowAnimationStrength * lerpResult206_g13020 * step( _GreenChGlowAnimationBand , 9 ) );
				float x13_g13020 = ( ( rotator6_g13020.x * _GreenChGlowPulseScale ) + _GreenChGlowPulseOffset + EmissionGlowAnimation195_g13020 );
				float y13_g13020 = 127.0;
				float localglslmod13_g13020 = glslmod13_g13020( x13_g13020 , y13_g13020 );
				float2 texCoord15_g13020 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13022 = ( texCoord15_g13020 - _GreenChGlowRadialCenter );
				float2 break39_g13022 = temp_output_34_0_g13022;
				float2 appendResult50_g13022 = (float2(( _GreenChGlowPulseScale * ( length( temp_output_34_0_g13022 ) * 2.0 ) ) , ( ( atan2( break39_g13022.x , break39_g13022.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x12_g13020 = ( _GreenChGlowPulseOffset + appendResult50_g13022.x + EmissionGlowAnimation195_g13020 );
				float y12_g13020 = 127.0;
				float localglslmod12_g13020 = glslmod12_g13020( x12_g13020 , y12_g13020 );
				int EmissionGlowMode35_g13020 = _GreenChGlowMode;
				int temp_output_37_0_g13020 = ( EmissionGlowMode35_g13020 - 1 );
				float lerpResult5_g13020 = lerp( localglslmod13_g13020 , localglslmod12_g13020 , (float)saturate( temp_output_37_0_g13020 ));
				float DirectionalMap106_g13020 = Direction27_g12985;
				float lerpResult179_g13020 = lerp( DirectionalMap106_g13020 , ( 1.0 - DirectionalMap106_g13020 ) , (float)saturate( ( EmissionGlowMode35_g13020 - 3 ) ));
				float x34_g13020 = ( _GreenChGlowPulseOffset + ( _GreenChGlowPulseScale * lerpResult179_g13020 ) + EmissionGlowAnimation195_g13020 );
				float y34_g13020 = 127.0;
				float localglslmod34_g13020 = glslmod34_g13020( x34_g13020 , y34_g13020 );
				float lerpResult30_g13020 = lerp( lerpResult5_g13020 , localglslmod34_g13020 , (float)saturate( ( temp_output_37_0_g13020 - 1 ) ));
				float EmissionGlowDelay56_g13020 = lerpResult30_g13020;
				float Delay11_g13028 = EmissionGlowDelay56_g13020;
				float3 localLumaGlowLerp11_g13028 = LumaGlowLerp11_g13028( Band11_g13028 , Delay11_g13028 );
				float3 lerpResult17_g13028 = lerp( ( localgetThemeData15_g13028 * localLumaGlowLerp11_g13028 ) , localLumaGlowLerp11_g13028 , (float)temp_output_13_0_g13028);
				float3 lerpResult22_g13020 = lerp( temp_cast_86 , lerpResult17_g13028 , (float)temp_output_21_0_g13020);
				float3 lerpResult23_g13020 = lerp( lerpResult20_g13020 , lerpResult22_g13020 , (float)saturate( EmissionGlowMode35_g13020 ));
				float4 temp_cast_96 = (1.0).xxxx;
				float temp_output_10_0_g13030 = EmissionGlowDelay56_g13020;
				float Position1_g13032 = ( temp_output_10_0_g13030 / 127.0 );
				float4 localAudioLinkLerp1_g13032 = AudioLinkLerp1_g13032( Position1_g13032 );
				int clampResult8_g13030 = clamp( ( EmissionGlowZone47_g13020 - 4 ) , 1 , 3 );
				int Band11_g13030 = ( 59 - ( clampResult8_g13030 - 1 ) );
				float Delay11_g13030 = temp_output_10_0_g13030;
				float3 localLumaGlowLerp11_g13030 = LumaGlowLerp11_g13030( Band11_g13030 , Delay11_g13030 );
				int Band11_g13031 = 56;
				int localIsLumaActive11_g13031 = IsLumaActive11_g13031( Band11_g13031 );
				float4 lerpResult14_g13030 = lerp( localAudioLinkLerp1_g13032 , float4( localLumaGlowLerp11_g13030 , 0.0 ) , (float)localIsLumaActive11_g13031);
				float4 lerpResult52_g13020 = lerp( temp_cast_96 , lerpResult14_g13030 , (float)saturate( EmissionGlowZone47_g13020 ));
				float4 lerpResult51_g13020 = lerp( float4( lerpResult23_g13020 , 0.0 ) , lerpResult52_g13020 , (float)saturate( ( EmissionGlowZone47_g13020 - 4 ) ));
				float4 temp_cast_101 = (_GreenChGlowMinBrightness).xxxx;
				float4 temp_cast_102 = (( _GreenChGlowMinBrightness + 1.0 )).xxxx;
				int temp_output_255_0_g13020 = saturate( EmissionGlowZone47_g13020 );
				float localIfAudioLinkv2Exists1_g13036 = IfAudioLinkv2Exists1_g13036();
				float4 lerpResult280_g13020 = lerp( float4( _GreenChGlowFallback.rgb , 0.0 ) , ( (temp_cast_101 + (lerpResult51_g13020 - float4( 0,0,0,0 )) * (temp_cast_102 - temp_cast_101) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * float4( _GreenChGlowTint.rgb , 0.0 ) * temp_output_255_0_g13020 ) , localIfAudioLinkv2Exists1_g13036);
				float4 EmissionGlow142_g13020 = lerpResult280_g13020;
				float4 lerpResult258_g13020 = lerp( temp_cast_80 , EmissionGlow142_g13020 , (float)temp_output_255_0_g13020);
				float4 EmissionGlowTog259_g13020 = lerpResult258_g13020;
				int EmissionReactiveBand243_g13020 = _GreenChReactiveBand;
				int Band3_g13021 = EmissionReactiveBand243_g13020;
				int Delay3_g13021 = 0;
				float localAudioLinkData3_g13021 = AudioLinkData3_g13021( Band3_g13021 , Delay3_g13021 );
				int temp_output_64_0_g13020 = step( _GreenChReactiveBand , 9 );
				float lerpResult66_g13020 = lerp( 1.0 , localAudioLinkData3_g13021 , (float)temp_output_64_0_g13020);
				int Band3_g13023 = _GreenChReactiveBand;
				float2 texCoord83_g13020 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos78_g13020 = cos( radians( _GreenChReactivePulseDir ) );
				float sin78_g13020 = sin( radians( _GreenChReactivePulseDir ) );
				float2 rotator78_g13020 = mul( texCoord83_g13020 - float2( 0.5,0.5 ) , float2x2( cos78_g13020 , -sin78_g13020 , sin78_g13020 , cos78_g13020 )) + float2( 0.5,0.5 );
				float x96_g13020 = ( ( rotator78_g13020.x * _GreenChReactivePulseScale ) + _GreenChReactivePulseOffset );
				float y96_g13020 = 127.0;
				float localglslmod96_g13020 = glslmod96_g13020( x96_g13020 , y96_g13020 );
				float2 texCoord85_g13020 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13024 = ( texCoord85_g13020 - _GreenChReactiveRadialCenter );
				float2 break39_g13024 = temp_output_34_0_g13024;
				float2 appendResult50_g13024 = (float2(( _GreenChReactivePulseScale * ( length( temp_output_34_0_g13024 ) * 2.0 ) ) , ( ( atan2( break39_g13024.x , break39_g13024.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x97_g13020 = ( _GreenChReactivePulseOffset + appendResult50_g13024.x );
				float y97_g13020 = 127.0;
				float localglslmod97_g13020 = glslmod97_g13020( x97_g13020 , y97_g13020 );
				int EmissionReactiveMode99_g13020 = _GreenChReactiveMode;
				int temp_output_90_0_g13020 = ( EmissionReactiveMode99_g13020 - 1 );
				float lerpResult77_g13020 = lerp( localglslmod96_g13020 , localglslmod97_g13020 , (float)saturate( temp_output_90_0_g13020 ));
				float lerpResult174_g13020 = lerp( DirectionalMap106_g13020 , ( 1.0 - DirectionalMap106_g13020 ) , (float)saturate( ( EmissionReactiveMode99_g13020 - 3 ) ));
				float x98_g13020 = ( _GreenChReactivePulseOffset + ( _GreenChReactivePulseScale * lerpResult174_g13020 ) );
				float y98_g13020 = 127.0;
				float localglslmod98_g13020 = glslmod98_g13020( x98_g13020 , y98_g13020 );
				float lerpResult87_g13020 = lerp( lerpResult77_g13020 , localglslmod98_g13020 , (float)saturate( ( temp_output_90_0_g13020 - 1 ) ));
				float Delay3_g13023 = lerpResult87_g13020;
				float localAudioLinkLerp3_g13023 = AudioLinkLerp3_g13023( Band3_g13023 , Delay3_g13023 );
				float lerpResult102_g13020 = lerp( 1.0 , localAudioLinkLerp3_g13023 , (float)temp_output_64_0_g13020);
				float lerpResult103_g13020 = lerp( lerpResult66_g13020 , lerpResult102_g13020 , (float)saturate( EmissionReactiveMode99_g13020 ));
				int Band3_g13025 = _GreenChReactiveBand;
				float FilteredAmount3_g13025 = ( ( 1.0 - _GreenChReactiveGlobalSmoothing ) * 15.0 );
				float localAudioLinkLerp3_g13025 = AudioLinkLerp3_g13025( Band3_g13025 , FilteredAmount3_g13025 );
				float lerpResult168_g13020 = lerp( 1.0 , localAudioLinkLerp3_g13025 , (float)temp_output_64_0_g13020);
				float lerpResult172_g13020 = lerp( lerpResult103_g13020 , lerpResult168_g13020 , (float)saturate( ( EmissionReactiveMode99_g13020 - 4 ) ));
				float ReactivityAlpha132_g13020 = (_GreenChReactiveMinBrightness + (lerpResult172_g13020 - 0.0) * (( _GreenChReactiveMinBrightness + 1.0 ) - _GreenChReactiveMinBrightness) / (1.0 - 0.0));
				float3 temp_cast_113 = (1.0).xxx;
				float3 lerpResult264_g13020 = lerp( temp_cast_113 , _GreenChReactiveTint.rgb , (float)step( EmissionReactiveBand243_g13020 , 9 ));
				float3 FinalReactivity68_g13020 = ( ReactivityAlpha132_g13020 * lerpResult264_g13020 );
				float4 lerpResult146_g13020 = lerp( ( EmissionGlowTog259_g13020 * float4( FinalReactivity68_g13020 , 0.0 ) ) , ( EmissionGlow142_g13020 + float4( FinalReactivity68_g13020 , 0.0 ) ) , (float)saturate( _GreenChReactiveBlendMode ));
				float3 ReversedReactivity152_g13020 = ( ( 1.0 - ReactivityAlpha132_g13020 ) * lerpResult264_g13020 );
				int temp_output_157_0_g13020 = ( _GreenChReactiveBlendMode - 1 );
				float4 lerpResult114_g13020 = lerp( lerpResult146_g13020 , ( EmissionGlowTog259_g13020 * float4( ReversedReactivity152_g13020 , 0.0 ) ) , (float)saturate( temp_output_157_0_g13020 ));
				float4 lerpResult164_g13020 = lerp( lerpResult114_g13020 , ( EmissionGlow142_g13020 + float4( ( ReversedReactivity152_g13020 * step( EmissionReactiveBand243_g13020 , 9 ) ) , 0.0 ) ) , (float)max( saturate( ( temp_output_157_0_g13020 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g13020 , 9 ) ) ));
				float localIfAudioLinkv2Exists1_g13035 = IfAudioLinkv2Exists1_g13035();
				float4 temp_output_213_0_g13020 = ( lerpResult164_g13020 * temp_output_236_0_g13020 * saturate( ( localIfAudioLinkv2Exists1_g13035 + _UseFallback1 ) ) );
				float4 lerpResult276_g13020 = lerp( float4( temp_output_283_0_g13020 , 0.0 ) , temp_output_213_0_g13020 , _EnableGreenChannel);
				float temp_output_236_0_g13037 = (GlowMaskRGBA174_g12985).z;
				float3 temp_output_286_0_g13037 = ( _BlueChGlowFallback.rgb * temp_output_236_0_g13037 * _UseFallback2 );
				float4 temp_cast_123 = (1.0).xxxx;
				float3 temp_cast_125 = (1.0).xxx;
				int EmissionGlowZone47_g13037 = _BlueChGlowZone;
				int clampResult8_g13043 = clamp( EmissionGlowZone47_g13037 , 1 , 4 );
				int temp_output_3_0_g13043 = ( clampResult8_g13043 - 1 );
				int Zone16_g13043 = temp_output_3_0_g13043;
				float3 localgetThemeData16_g13043 = getThemeData( Zone16_g13043 );
				int Band11_g13044 = 56;
				int localIsLumaActive11_g13044 = IsLumaActive11_g13044( Band11_g13044 );
				int temp_output_14_0_g13043 = localIsLumaActive11_g13044;
				int lerpResult15_g13043 = lerp( temp_output_3_0_g13043 , ( 63 - temp_output_3_0_g13043 ) , (float)temp_output_14_0_g13043);
				int Band2_g13043 = lerpResult15_g13043;
				int Delay2_g13043 = 0;
				float3 localLumaGlowData2_g13043 = LumaGlowData2_g13043( Band2_g13043 , Delay2_g13043 );
				float3 lerpResult17_g13043 = lerp( ( localgetThemeData16_g13043 * localLumaGlowData2_g13043 ) , localLumaGlowData2_g13043 , (float)temp_output_14_0_g13043);
				int temp_output_21_0_g13037 = saturate( EmissionGlowZone47_g13037 );
				float3 lerpResult20_g13037 = lerp( temp_cast_125 , lerpResult17_g13043 , (float)temp_output_21_0_g13037);
				float3 temp_cast_129 = (1.0).xxx;
				int clampResult8_g13045 = clamp( EmissionGlowZone47_g13037 , 1 , 4 );
				int temp_output_3_0_g13045 = ( clampResult8_g13045 - 1 );
				int Zone15_g13045 = temp_output_3_0_g13045;
				float3 localgetThemeData15_g13045 = getThemeData( Zone15_g13045 );
				int Band11_g13046 = 56;
				int localIsLumaActive11_g13046 = IsLumaActive11_g13046( Band11_g13046 );
				int temp_output_13_0_g13045 = localIsLumaActive11_g13046;
				int lerpResult14_g13045 = lerp( temp_output_3_0_g13045 , ( 63 - temp_output_3_0_g13045 ) , (float)temp_output_13_0_g13045);
				int Band11_g13045 = lerpResult14_g13045;
				float2 texCoord11_g13037 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos6_g13037 = cos( radians( _BlueChGlowPulseDir ) );
				float sin6_g13037 = sin( radians( _BlueChGlowPulseDir ) );
				float2 rotator6_g13037 = mul( texCoord11_g13037 - float2( 0.5,0.5 ) , float2x2( cos6_g13037 , -sin6_g13037 , sin6_g13037 , cos6_g13037 )) + float2( 0.5,0.5 );
				int Band6_g13050 = _BlueChGlowAnimationBand;
				int Mode6_g13050 = ( ( _BlueChGlowAnimationMode * 2 ) + _BlueChGlowAnimationSpeed );
				int localAudioLinkDecodeDataAsUInt6_g13050 = AudioLinkDecodeDataAsUInt6_g13050( Band6_g13050 , Mode6_g13050 );
				float localGetLocalTime2_g13051 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
				float lerpResult206_g13037 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g13050 % 628319 ) / 100000.0 ) , localGetLocalTime2_g13051 , (float)saturate( ( _BlueChGlowAnimationMode - 3 ) ));
				float EmissionGlowAnimation195_g13037 = ( _BlueChGlowAnimationStrength * lerpResult206_g13037 * step( _BlueChGlowAnimationBand , 9 ) );
				float x13_g13037 = ( ( rotator6_g13037.x * _BlueChGlowPulseScale ) + _BlueChGlowPulseOffset + EmissionGlowAnimation195_g13037 );
				float y13_g13037 = 127.0;
				float localglslmod13_g13037 = glslmod13_g13037( x13_g13037 , y13_g13037 );
				float2 texCoord15_g13037 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13039 = ( texCoord15_g13037 - _BlueChGlowRadialCenter );
				float2 break39_g13039 = temp_output_34_0_g13039;
				float2 appendResult50_g13039 = (float2(( _BlueChGlowPulseScale * ( length( temp_output_34_0_g13039 ) * 2.0 ) ) , ( ( atan2( break39_g13039.x , break39_g13039.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x12_g13037 = ( _BlueChGlowPulseOffset + appendResult50_g13039.x + EmissionGlowAnimation195_g13037 );
				float y12_g13037 = 127.0;
				float localglslmod12_g13037 = glslmod12_g13037( x12_g13037 , y12_g13037 );
				int EmissionGlowMode35_g13037 = _BlueChGlowMode;
				int temp_output_37_0_g13037 = ( EmissionGlowMode35_g13037 - 1 );
				float lerpResult5_g13037 = lerp( localglslmod13_g13037 , localglslmod12_g13037 , (float)saturate( temp_output_37_0_g13037 ));
				float DirectionalMap106_g13037 = Direction27_g12985;
				float lerpResult179_g13037 = lerp( DirectionalMap106_g13037 , ( 1.0 - DirectionalMap106_g13037 ) , (float)saturate( ( EmissionGlowMode35_g13037 - 3 ) ));
				float x34_g13037 = ( _BlueChGlowPulseOffset + ( _BlueChGlowPulseScale * lerpResult179_g13037 ) + EmissionGlowAnimation195_g13037 );
				float y34_g13037 = 127.0;
				float localglslmod34_g13037 = glslmod34_g13037( x34_g13037 , y34_g13037 );
				float lerpResult30_g13037 = lerp( lerpResult5_g13037 , localglslmod34_g13037 , (float)saturate( ( temp_output_37_0_g13037 - 1 ) ));
				float EmissionGlowDelay56_g13037 = lerpResult30_g13037;
				float Delay11_g13045 = EmissionGlowDelay56_g13037;
				float3 localLumaGlowLerp11_g13045 = LumaGlowLerp11_g13045( Band11_g13045 , Delay11_g13045 );
				float3 lerpResult17_g13045 = lerp( ( localgetThemeData15_g13045 * localLumaGlowLerp11_g13045 ) , localLumaGlowLerp11_g13045 , (float)temp_output_13_0_g13045);
				float3 lerpResult22_g13037 = lerp( temp_cast_129 , lerpResult17_g13045 , (float)temp_output_21_0_g13037);
				float3 lerpResult23_g13037 = lerp( lerpResult20_g13037 , lerpResult22_g13037 , (float)saturate( EmissionGlowMode35_g13037 ));
				float4 temp_cast_139 = (1.0).xxxx;
				float temp_output_10_0_g13047 = EmissionGlowDelay56_g13037;
				float Position1_g13049 = ( temp_output_10_0_g13047 / 127.0 );
				float4 localAudioLinkLerp1_g13049 = AudioLinkLerp1_g13049( Position1_g13049 );
				int clampResult8_g13047 = clamp( ( EmissionGlowZone47_g13037 - 4 ) , 1 , 3 );
				int Band11_g13047 = ( 59 - ( clampResult8_g13047 - 1 ) );
				float Delay11_g13047 = temp_output_10_0_g13047;
				float3 localLumaGlowLerp11_g13047 = LumaGlowLerp11_g13047( Band11_g13047 , Delay11_g13047 );
				int Band11_g13048 = 56;
				int localIsLumaActive11_g13048 = IsLumaActive11_g13048( Band11_g13048 );
				float4 lerpResult14_g13047 = lerp( localAudioLinkLerp1_g13049 , float4( localLumaGlowLerp11_g13047 , 0.0 ) , (float)localIsLumaActive11_g13048);
				float4 lerpResult52_g13037 = lerp( temp_cast_139 , lerpResult14_g13047 , (float)saturate( EmissionGlowZone47_g13037 ));
				float4 lerpResult51_g13037 = lerp( float4( lerpResult23_g13037 , 0.0 ) , lerpResult52_g13037 , (float)saturate( ( EmissionGlowZone47_g13037 - 4 ) ));
				float4 temp_cast_144 = (_BlueChGlowMinBrightness).xxxx;
				float4 temp_cast_145 = (( _BlueChGlowMinBrightness + 1.0 )).xxxx;
				int temp_output_258_0_g13037 = saturate( EmissionGlowZone47_g13037 );
				float localIfAudioLinkv2Exists1_g13053 = IfAudioLinkv2Exists1_g13053();
				float4 lerpResult283_g13037 = lerp( float4( _BlueChGlowFallback.rgb , 0.0 ) , ( (temp_cast_144 + (lerpResult51_g13037 - float4( 0,0,0,0 )) * (temp_cast_145 - temp_cast_144) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * float4( _BlueChGlowTint.rgb , 0.0 ) * temp_output_258_0_g13037 ) , localIfAudioLinkv2Exists1_g13053);
				float4 EmissionGlow142_g13037 = lerpResult283_g13037;
				float4 lerpResult261_g13037 = lerp( temp_cast_123 , EmissionGlow142_g13037 , (float)temp_output_258_0_g13037);
				float4 EmissionGlowTog262_g13037 = lerpResult261_g13037;
				int EmissionReactiveBand243_g13037 = _BlueChReactiveBand;
				int Band3_g13038 = EmissionReactiveBand243_g13037;
				int Delay3_g13038 = 0;
				float localAudioLinkData3_g13038 = AudioLinkData3_g13038( Band3_g13038 , Delay3_g13038 );
				int temp_output_64_0_g13037 = step( _BlueChReactiveBand , 9 );
				float lerpResult66_g13037 = lerp( 1.0 , localAudioLinkData3_g13038 , (float)temp_output_64_0_g13037);
				int Band3_g13040 = _BlueChReactiveBand;
				float2 texCoord83_g13037 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos78_g13037 = cos( radians( _BlueChReactivePulseDir ) );
				float sin78_g13037 = sin( radians( _BlueChReactivePulseDir ) );
				float2 rotator78_g13037 = mul( texCoord83_g13037 - float2( 0.5,0.5 ) , float2x2( cos78_g13037 , -sin78_g13037 , sin78_g13037 , cos78_g13037 )) + float2( 0.5,0.5 );
				float x96_g13037 = ( ( rotator78_g13037.x * _BlueChReactivePulseScale ) + _BlueChReactivePulseOffset );
				float y96_g13037 = 127.0;
				float localglslmod96_g13037 = glslmod96_g13037( x96_g13037 , y96_g13037 );
				float2 texCoord85_g13037 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13041 = ( texCoord85_g13037 - _BlueChReactiveRadialCenter );
				float2 break39_g13041 = temp_output_34_0_g13041;
				float2 appendResult50_g13041 = (float2(( _BlueChReactivePulseScale * ( length( temp_output_34_0_g13041 ) * 2.0 ) ) , ( ( atan2( break39_g13041.x , break39_g13041.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x97_g13037 = ( _BlueChReactivePulseOffset + appendResult50_g13041.x );
				float y97_g13037 = 127.0;
				float localglslmod97_g13037 = glslmod97_g13037( x97_g13037 , y97_g13037 );
				int EmissionReactiveMode99_g13037 = _BlueChReactiveMode;
				int temp_output_90_0_g13037 = ( EmissionReactiveMode99_g13037 - 1 );
				float lerpResult77_g13037 = lerp( localglslmod96_g13037 , localglslmod97_g13037 , (float)saturate( temp_output_90_0_g13037 ));
				float lerpResult174_g13037 = lerp( DirectionalMap106_g13037 , ( 1.0 - DirectionalMap106_g13037 ) , (float)saturate( ( EmissionReactiveMode99_g13037 - 3 ) ));
				float x98_g13037 = ( _BlueChReactivePulseOffset + ( _BlueChReactivePulseScale * lerpResult174_g13037 ) );
				float y98_g13037 = 127.0;
				float localglslmod98_g13037 = glslmod98_g13037( x98_g13037 , y98_g13037 );
				float lerpResult87_g13037 = lerp( lerpResult77_g13037 , localglslmod98_g13037 , (float)saturate( ( temp_output_90_0_g13037 - 1 ) ));
				float Delay3_g13040 = lerpResult87_g13037;
				float localAudioLinkLerp3_g13040 = AudioLinkLerp3_g13040( Band3_g13040 , Delay3_g13040 );
				float lerpResult102_g13037 = lerp( 1.0 , localAudioLinkLerp3_g13040 , (float)temp_output_64_0_g13037);
				float lerpResult103_g13037 = lerp( lerpResult66_g13037 , lerpResult102_g13037 , (float)saturate( EmissionReactiveMode99_g13037 ));
				int Band3_g13042 = _BlueChReactiveBand;
				float FilteredAmount3_g13042 = ( ( 1.0 - _BlueChReactiveGlobalSmoothing ) * 15.0 );
				float localAudioLinkLerp3_g13042 = AudioLinkLerp3_g13042( Band3_g13042 , FilteredAmount3_g13042 );
				float lerpResult168_g13037 = lerp( 1.0 , localAudioLinkLerp3_g13042 , (float)temp_output_64_0_g13037);
				float lerpResult172_g13037 = lerp( lerpResult103_g13037 , lerpResult168_g13037 , (float)saturate( ( EmissionReactiveMode99_g13037 - 4 ) ));
				float ReactivityAlpha132_g13037 = (_BlueChReactiveMinBrightness + (lerpResult172_g13037 - 0.0) * (( _BlueChReactiveMinBrightness + 1.0 ) - _BlueChReactiveMinBrightness) / (1.0 - 0.0));
				float3 temp_cast_156 = (1.0).xxx;
				float3 lerpResult268_g13037 = lerp( temp_cast_156 , _BlueChReactiveTint.rgb , (float)step( EmissionReactiveBand243_g13037 , 9 ));
				float3 FinalReactivity68_g13037 = ( ReactivityAlpha132_g13037 * lerpResult268_g13037 );
				float4 lerpResult146_g13037 = lerp( ( EmissionGlowTog262_g13037 * float4( FinalReactivity68_g13037 , 0.0 ) ) , ( EmissionGlow142_g13037 + float4( FinalReactivity68_g13037 , 0.0 ) ) , (float)saturate( _BlueChReactiveBlendMode ));
				float3 ReversedReactivity152_g13037 = ( ( 1.0 - ReactivityAlpha132_g13037 ) * lerpResult268_g13037 );
				int temp_output_157_0_g13037 = ( _BlueChReactiveBlendMode - 1 );
				float4 lerpResult114_g13037 = lerp( lerpResult146_g13037 , ( EmissionGlowTog262_g13037 * float4( ReversedReactivity152_g13037 , 0.0 ) ) , (float)saturate( temp_output_157_0_g13037 ));
				float4 lerpResult164_g13037 = lerp( lerpResult114_g13037 , ( EmissionGlow142_g13037 + float4( ( ReversedReactivity152_g13037 * step( EmissionReactiveBand243_g13037 , 9 ) ) , 0.0 ) ) , (float)max( saturate( ( temp_output_157_0_g13037 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g13037 , 9 ) ) ));
				float localIfAudioLinkv2Exists1_g13052 = IfAudioLinkv2Exists1_g13052();
				float4 temp_output_213_0_g13037 = ( lerpResult164_g13037 * temp_output_236_0_g13037 * saturate( ( localIfAudioLinkv2Exists1_g13052 + _UseFallback2 ) ) );
				float4 lerpResult278_g13037 = lerp( float4( temp_output_286_0_g13037 , 0.0 ) , temp_output_213_0_g13037 , _EnableBlueChannel);
				float temp_output_236_0_g13054 = (GlowMaskRGBA174_g12985).w;
				float3 temp_output_286_0_g13054 = ( _AlphaChGlowFallback.rgb * temp_output_236_0_g13054 * _UseFallback3 );
				float4 temp_cast_166 = (1.0).xxxx;
				float3 temp_cast_168 = (1.0).xxx;
				int EmissionGlowZone47_g13054 = _AlphaChGlowZone;
				int clampResult8_g13060 = clamp( EmissionGlowZone47_g13054 , 1 , 4 );
				int temp_output_3_0_g13060 = ( clampResult8_g13060 - 1 );
				int Zone16_g13060 = temp_output_3_0_g13060;
				float3 localgetThemeData16_g13060 = getThemeData( Zone16_g13060 );
				int Band11_g13061 = 56;
				int localIsLumaActive11_g13061 = IsLumaActive11_g13061( Band11_g13061 );
				int temp_output_14_0_g13060 = localIsLumaActive11_g13061;
				int lerpResult15_g13060 = lerp( temp_output_3_0_g13060 , ( 63 - temp_output_3_0_g13060 ) , (float)temp_output_14_0_g13060);
				int Band2_g13060 = lerpResult15_g13060;
				int Delay2_g13060 = 0;
				float3 localLumaGlowData2_g13060 = LumaGlowData2_g13060( Band2_g13060 , Delay2_g13060 );
				float3 lerpResult17_g13060 = lerp( ( localgetThemeData16_g13060 * localLumaGlowData2_g13060 ) , localLumaGlowData2_g13060 , (float)temp_output_14_0_g13060);
				int temp_output_21_0_g13054 = saturate( EmissionGlowZone47_g13054 );
				float3 lerpResult20_g13054 = lerp( temp_cast_168 , lerpResult17_g13060 , (float)temp_output_21_0_g13054);
				float3 temp_cast_172 = (1.0).xxx;
				int clampResult8_g13062 = clamp( EmissionGlowZone47_g13054 , 1 , 4 );
				int temp_output_3_0_g13062 = ( clampResult8_g13062 - 1 );
				int Zone15_g13062 = temp_output_3_0_g13062;
				float3 localgetThemeData15_g13062 = getThemeData( Zone15_g13062 );
				int Band11_g13063 = 56;
				int localIsLumaActive11_g13063 = IsLumaActive11_g13063( Band11_g13063 );
				int temp_output_13_0_g13062 = localIsLumaActive11_g13063;
				int lerpResult14_g13062 = lerp( temp_output_3_0_g13062 , ( 63 - temp_output_3_0_g13062 ) , (float)temp_output_13_0_g13062);
				int Band11_g13062 = lerpResult14_g13062;
				float2 texCoord11_g13054 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos6_g13054 = cos( radians( _AlphaChGlowPulseDir ) );
				float sin6_g13054 = sin( radians( _AlphaChGlowPulseDir ) );
				float2 rotator6_g13054 = mul( texCoord11_g13054 - float2( 0.5,0.5 ) , float2x2( cos6_g13054 , -sin6_g13054 , sin6_g13054 , cos6_g13054 )) + float2( 0.5,0.5 );
				int Band6_g13067 = _AlphaChGlowAnimationBand;
				int Mode6_g13067 = ( ( _AlphaChGlowAnimationMode * 2 ) + _AlphaChGlowAnimationSpeed );
				int localAudioLinkDecodeDataAsUInt6_g13067 = AudioLinkDecodeDataAsUInt6_g13067( Band6_g13067 , Mode6_g13067 );
				float localGetLocalTime2_g13068 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
				float lerpResult206_g13054 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g13067 % 628319 ) / 100000.0 ) , localGetLocalTime2_g13068 , (float)saturate( ( _AlphaChGlowAnimationMode - 3 ) ));
				float EmissionGlowAnimation195_g13054 = ( _AlphaChGlowAnimationStrength * lerpResult206_g13054 * step( _AlphaChGlowAnimationBand , 9 ) );
				float x13_g13054 = ( ( rotator6_g13054.x * _AlphaChGlowPulseScale ) + _AlphaChGlowPulseOffset + EmissionGlowAnimation195_g13054 );
				float y13_g13054 = 127.0;
				float localglslmod13_g13054 = glslmod13_g13054( x13_g13054 , y13_g13054 );
				float2 texCoord15_g13054 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13056 = ( texCoord15_g13054 - _AlphaChGlowRadialCenter );
				float2 break39_g13056 = temp_output_34_0_g13056;
				float2 appendResult50_g13056 = (float2(( _AlphaChGlowPulseScale * ( length( temp_output_34_0_g13056 ) * 2.0 ) ) , ( ( atan2( break39_g13056.x , break39_g13056.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x12_g13054 = ( _AlphaChGlowPulseOffset + appendResult50_g13056.x + EmissionGlowAnimation195_g13054 );
				float y12_g13054 = 127.0;
				float localglslmod12_g13054 = glslmod12_g13054( x12_g13054 , y12_g13054 );
				int EmissionGlowMode35_g13054 = _AlphaChGlowMode;
				int temp_output_37_0_g13054 = ( EmissionGlowMode35_g13054 - 1 );
				float lerpResult5_g13054 = lerp( localglslmod13_g13054 , localglslmod12_g13054 , (float)saturate( temp_output_37_0_g13054 ));
				float DirectionalMap106_g13054 = Direction27_g12985;
				float lerpResult179_g13054 = lerp( DirectionalMap106_g13054 , ( 1.0 - DirectionalMap106_g13054 ) , (float)saturate( ( EmissionGlowMode35_g13054 - 3 ) ));
				float x34_g13054 = ( _AlphaChGlowPulseOffset + ( _AlphaChGlowPulseScale * lerpResult179_g13054 ) + EmissionGlowAnimation195_g13054 );
				float y34_g13054 = 127.0;
				float localglslmod34_g13054 = glslmod34_g13054( x34_g13054 , y34_g13054 );
				float lerpResult30_g13054 = lerp( lerpResult5_g13054 , localglslmod34_g13054 , (float)saturate( ( temp_output_37_0_g13054 - 1 ) ));
				float EmissionGlowDelay56_g13054 = lerpResult30_g13054;
				float Delay11_g13062 = EmissionGlowDelay56_g13054;
				float3 localLumaGlowLerp11_g13062 = LumaGlowLerp11_g13062( Band11_g13062 , Delay11_g13062 );
				float3 lerpResult17_g13062 = lerp( ( localgetThemeData15_g13062 * localLumaGlowLerp11_g13062 ) , localLumaGlowLerp11_g13062 , (float)temp_output_13_0_g13062);
				float3 lerpResult22_g13054 = lerp( temp_cast_172 , lerpResult17_g13062 , (float)temp_output_21_0_g13054);
				float3 lerpResult23_g13054 = lerp( lerpResult20_g13054 , lerpResult22_g13054 , (float)saturate( EmissionGlowMode35_g13054 ));
				float4 temp_cast_182 = (1.0).xxxx;
				float temp_output_10_0_g13064 = EmissionGlowDelay56_g13054;
				float Position1_g13066 = ( temp_output_10_0_g13064 / 127.0 );
				float4 localAudioLinkLerp1_g13066 = AudioLinkLerp1_g13066( Position1_g13066 );
				int clampResult8_g13064 = clamp( ( EmissionGlowZone47_g13054 - 4 ) , 1 , 3 );
				int Band11_g13064 = ( 59 - ( clampResult8_g13064 - 1 ) );
				float Delay11_g13064 = temp_output_10_0_g13064;
				float3 localLumaGlowLerp11_g13064 = LumaGlowLerp11_g13064( Band11_g13064 , Delay11_g13064 );
				int Band11_g13065 = 56;
				int localIsLumaActive11_g13065 = IsLumaActive11_g13065( Band11_g13065 );
				float4 lerpResult14_g13064 = lerp( localAudioLinkLerp1_g13066 , float4( localLumaGlowLerp11_g13064 , 0.0 ) , (float)localIsLumaActive11_g13065);
				float4 lerpResult52_g13054 = lerp( temp_cast_182 , lerpResult14_g13064 , (float)saturate( EmissionGlowZone47_g13054 ));
				float4 lerpResult51_g13054 = lerp( float4( lerpResult23_g13054 , 0.0 ) , lerpResult52_g13054 , (float)saturate( ( EmissionGlowZone47_g13054 - 4 ) ));
				float4 temp_cast_187 = (_AlphaChGlowMinBrightness).xxxx;
				float4 temp_cast_188 = (( _AlphaChGlowMinBrightness + 1.0 )).xxxx;
				int temp_output_258_0_g13054 = saturate( EmissionGlowZone47_g13054 );
				float localIfAudioLinkv2Exists1_g13070 = IfAudioLinkv2Exists1_g13070();
				float4 lerpResult283_g13054 = lerp( float4( _AlphaChGlowFallback.rgb , 0.0 ) , ( (temp_cast_187 + (lerpResult51_g13054 - float4( 0,0,0,0 )) * (temp_cast_188 - temp_cast_187) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * float4( _AlphaChGlowTint.rgb , 0.0 ) * temp_output_258_0_g13054 ) , localIfAudioLinkv2Exists1_g13070);
				float4 EmissionGlow142_g13054 = lerpResult283_g13054;
				float4 lerpResult261_g13054 = lerp( temp_cast_166 , EmissionGlow142_g13054 , (float)temp_output_258_0_g13054);
				float4 EmissionGlowTog262_g13054 = lerpResult261_g13054;
				int EmissionReactiveBand243_g13054 = _AlphaChReactiveBand;
				int Band3_g13055 = EmissionReactiveBand243_g13054;
				int Delay3_g13055 = 0;
				float localAudioLinkData3_g13055 = AudioLinkData3_g13055( Band3_g13055 , Delay3_g13055 );
				int temp_output_64_0_g13054 = step( _AlphaChReactiveBand , 9 );
				float lerpResult66_g13054 = lerp( 1.0 , localAudioLinkData3_g13055 , (float)temp_output_64_0_g13054);
				int Band3_g13057 = _AlphaChReactiveBand;
				float2 texCoord83_g13054 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos78_g13054 = cos( radians( _AlphaChReactivePulseDir ) );
				float sin78_g13054 = sin( radians( _AlphaChReactivePulseDir ) );
				float2 rotator78_g13054 = mul( texCoord83_g13054 - float2( 0.5,0.5 ) , float2x2( cos78_g13054 , -sin78_g13054 , sin78_g13054 , cos78_g13054 )) + float2( 0.5,0.5 );
				float x96_g13054 = ( ( rotator78_g13054.x * _AlphaChReactivePulseScale ) + _AlphaChReactivePulseOffset );
				float y96_g13054 = 127.0;
				float localglslmod96_g13054 = glslmod96_g13054( x96_g13054 , y96_g13054 );
				float2 texCoord85_g13054 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13058 = ( texCoord85_g13054 - _AlphaChReactiveRadialCenter );
				float2 break39_g13058 = temp_output_34_0_g13058;
				float2 appendResult50_g13058 = (float2(( _AlphaChReactivePulseScale * ( length( temp_output_34_0_g13058 ) * 2.0 ) ) , ( ( atan2( break39_g13058.x , break39_g13058.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x97_g13054 = ( _AlphaChReactivePulseOffset + appendResult50_g13058.x );
				float y97_g13054 = 127.0;
				float localglslmod97_g13054 = glslmod97_g13054( x97_g13054 , y97_g13054 );
				int EmissionReactiveMode99_g13054 = _AlphaChReactiveMode;
				int temp_output_90_0_g13054 = ( EmissionReactiveMode99_g13054 - 1 );
				float lerpResult77_g13054 = lerp( localglslmod96_g13054 , localglslmod97_g13054 , (float)saturate( temp_output_90_0_g13054 ));
				float lerpResult174_g13054 = lerp( DirectionalMap106_g13054 , ( 1.0 - DirectionalMap106_g13054 ) , (float)saturate( ( EmissionReactiveMode99_g13054 - 3 ) ));
				float x98_g13054 = ( _AlphaChReactivePulseOffset + ( _AlphaChReactivePulseScale * lerpResult174_g13054 ) );
				float y98_g13054 = 127.0;
				float localglslmod98_g13054 = glslmod98_g13054( x98_g13054 , y98_g13054 );
				float lerpResult87_g13054 = lerp( lerpResult77_g13054 , localglslmod98_g13054 , (float)saturate( ( temp_output_90_0_g13054 - 1 ) ));
				float Delay3_g13057 = lerpResult87_g13054;
				float localAudioLinkLerp3_g13057 = AudioLinkLerp3_g13057( Band3_g13057 , Delay3_g13057 );
				float lerpResult102_g13054 = lerp( 1.0 , localAudioLinkLerp3_g13057 , (float)temp_output_64_0_g13054);
				float lerpResult103_g13054 = lerp( lerpResult66_g13054 , lerpResult102_g13054 , (float)saturate( EmissionReactiveMode99_g13054 ));
				int Band3_g13059 = _AlphaChReactiveBand;
				float FilteredAmount3_g13059 = ( ( 1.0 - _AlphaChReactiveGlobalSmoothing ) * 15.0 );
				float localAudioLinkLerp3_g13059 = AudioLinkLerp3_g13059( Band3_g13059 , FilteredAmount3_g13059 );
				float lerpResult168_g13054 = lerp( 1.0 , localAudioLinkLerp3_g13059 , (float)temp_output_64_0_g13054);
				float lerpResult172_g13054 = lerp( lerpResult103_g13054 , lerpResult168_g13054 , (float)saturate( ( EmissionReactiveMode99_g13054 - 4 ) ));
				float ReactivityAlpha132_g13054 = (_AlphaChReactiveMinBrightness + (lerpResult172_g13054 - 0.0) * (( _AlphaChReactiveMinBrightness + 1.0 ) - _AlphaChReactiveMinBrightness) / (1.0 - 0.0));
				float3 temp_cast_199 = (1.0).xxx;
				float3 lerpResult268_g13054 = lerp( temp_cast_199 , _AlphaChReactiveTint.rgb , (float)step( EmissionReactiveBand243_g13054 , 9 ));
				float3 FinalReactivity68_g13054 = ( ReactivityAlpha132_g13054 * lerpResult268_g13054 );
				float4 lerpResult146_g13054 = lerp( ( EmissionGlowTog262_g13054 * float4( FinalReactivity68_g13054 , 0.0 ) ) , ( EmissionGlow142_g13054 + float4( FinalReactivity68_g13054 , 0.0 ) ) , (float)saturate( _AlphaChReactiveBlendMode ));
				float3 ReversedReactivity152_g13054 = ( ( 1.0 - ReactivityAlpha132_g13054 ) * lerpResult268_g13054 );
				int temp_output_157_0_g13054 = ( _AlphaChReactiveBlendMode - 1 );
				float4 lerpResult114_g13054 = lerp( lerpResult146_g13054 , ( EmissionGlowTog262_g13054 * float4( ReversedReactivity152_g13054 , 0.0 ) ) , (float)saturate( temp_output_157_0_g13054 ));
				float4 lerpResult164_g13054 = lerp( lerpResult114_g13054 , ( EmissionGlow142_g13054 + float4( ( ReversedReactivity152_g13054 * step( EmissionReactiveBand243_g13054 , 9 ) ) , 0.0 ) ) , (float)max( saturate( ( temp_output_157_0_g13054 - 1 ) ) , ( 1.0 - step( EmissionReactiveBand243_g13054 , 9 ) ) ));
				float localIfAudioLinkv2Exists1_g13069 = IfAudioLinkv2Exists1_g13069();
				float4 temp_output_213_0_g13054 = ( lerpResult164_g13054 * temp_output_236_0_g13054 * saturate( ( localIfAudioLinkv2Exists1_g13069 + _UseFallback3 ) ) );
				float4 lerpResult278_g13054 = lerp( float4( temp_output_286_0_g13054 , 0.0 ) , temp_output_213_0_g13054 , _EnableAlphaChannel);
				#ifdef _EMISSION
				float3 staticSwitch1503 = EmissionColor849;
				#else
				float3 staticSwitch1503 = float3( 0,0,0 );
				#endif
				float3 temp_output_211_0_g13004 = ( staticSwitch1503 * EmissionMask1427 );
				float4 temp_cast_209 = (1.0).xxxx;
				float3 temp_cast_210 = (1.0).xxx;
				int EmissionGlowZone47_g13004 = _EmissionGlowZone;
				int clampResult8_g13012 = clamp( EmissionGlowZone47_g13004 , 1 , 4 );
				int temp_output_3_0_g13012 = ( clampResult8_g13012 - 1 );
				int Zone16_g13012 = temp_output_3_0_g13012;
				float3 localgetThemeData16_g13012 = getThemeData( Zone16_g13012 );
				int Band11_g13013 = 56;
				int localIsLumaActive11_g13013 = IsLumaActive11_g13013( Band11_g13013 );
				int temp_output_14_0_g13012 = localIsLumaActive11_g13013;
				int lerpResult15_g13012 = lerp( temp_output_3_0_g13012 , ( 63 - temp_output_3_0_g13012 ) , (float)temp_output_14_0_g13012);
				int Band2_g13012 = lerpResult15_g13012;
				int Delay2_g13012 = 0;
				float3 localLumaGlowData2_g13012 = LumaGlowData2_g13012( Band2_g13012 , Delay2_g13012 );
				float3 lerpResult17_g13012 = lerp( ( localgetThemeData16_g13012 * localLumaGlowData2_g13012 ) , localLumaGlowData2_g13012 , (float)temp_output_14_0_g13012);
				int temp_output_21_0_g13004 = saturate( EmissionGlowZone47_g13004 );
				float3 lerpResult20_g13004 = lerp( temp_cast_210 , lerpResult17_g13012 , (float)temp_output_21_0_g13004);
				float3 temp_cast_214 = (1.0).xxx;
				int clampResult8_g13014 = clamp( EmissionGlowZone47_g13004 , 1 , 4 );
				int temp_output_3_0_g13014 = ( clampResult8_g13014 - 1 );
				int Zone15_g13014 = temp_output_3_0_g13014;
				float3 localgetThemeData15_g13014 = getThemeData( Zone15_g13014 );
				int Band11_g13015 = 56;
				int localIsLumaActive11_g13015 = IsLumaActive11_g13015( Band11_g13015 );
				int temp_output_13_0_g13014 = localIsLumaActive11_g13015;
				int lerpResult14_g13014 = lerp( temp_output_3_0_g13014 , ( 63 - temp_output_3_0_g13014 ) , (float)temp_output_13_0_g13014);
				int Band11_g13014 = lerpResult14_g13014;
				float2 texCoord11_g13004 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos6_g13004 = cos( radians( _EmissionGlowPulseDir ) );
				float sin6_g13004 = sin( radians( _EmissionGlowPulseDir ) );
				float2 rotator6_g13004 = mul( texCoord11_g13004 - float2( 0.5,0.5 ) , float2x2( cos6_g13004 , -sin6_g13004 , sin6_g13004 , cos6_g13004 )) + float2( 0.5,0.5 );
				int Band6_g13010 = _EmissionGlowAnimationBand;
				int Mode6_g13010 = ( ( _EmissionGlowAnimationMode * 2 ) + _EmissionGlowAnimationSpeed );
				int localAudioLinkDecodeDataAsUInt6_g13010 = AudioLinkDecodeDataAsUInt6_g13010( Band6_g13010 , Mode6_g13010 );
				float localGetLocalTime2_g13011 = ( AudioLinkDecodeDataAsSeconds( ALPASS_GENERALVU_LOCAL_TIME ) );
				float lerpResult206_g13004 = lerp( ( ( localAudioLinkDecodeDataAsUInt6_g13010 % 628319 ) / 100000.0 ) , localGetLocalTime2_g13011 , (float)saturate( ( _EmissionGlowAnimationMode - 3 ) ));
				float EmissionGlowAnimation195_g13004 = ( _EmissionGlowAnimationStrength * lerpResult206_g13004 * step( _EmissionGlowAnimationBand , 9 ) );
				float x13_g13004 = ( ( rotator6_g13004.x * _EmissionGlowPulseScale ) + _EmissionGlowPulseOffset + EmissionGlowAnimation195_g13004 );
				float y13_g13004 = 127.0;
				float localglslmod13_g13004 = glslmod13_g13004( x13_g13004 , y13_g13004 );
				float2 texCoord15_g13004 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13006 = ( texCoord15_g13004 - _EmissionGlowRadialCenter );
				float2 break39_g13006 = temp_output_34_0_g13006;
				float2 appendResult50_g13006 = (float2(( _EmissionGlowPulseScale * ( length( temp_output_34_0_g13006 ) * 2.0 ) ) , ( ( atan2( break39_g13006.x , break39_g13006.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x12_g13004 = ( _EmissionGlowPulseOffset + appendResult50_g13006.x + EmissionGlowAnimation195_g13004 );
				float y12_g13004 = 127.0;
				float localglslmod12_g13004 = glslmod12_g13004( x12_g13004 , y12_g13004 );
				int EmissionGlowMode35_g13004 = _EmissionGlowMode;
				int temp_output_37_0_g13004 = ( EmissionGlowMode35_g13004 - 1 );
				float lerpResult5_g13004 = lerp( localglslmod13_g13004 , localglslmod12_g13004 , (float)saturate( temp_output_37_0_g13004 ));
				float DirectionalMap106_g13004 = Direction27_g12985;
				float lerpResult179_g13004 = lerp( DirectionalMap106_g13004 , ( 1.0 - DirectionalMap106_g13004 ) , (float)saturate( ( EmissionGlowMode35_g13004 - 3 ) ));
				float x34_g13004 = ( _EmissionGlowPulseOffset + ( _EmissionGlowPulseScale * lerpResult179_g13004 ) + EmissionGlowAnimation195_g13004 );
				float y34_g13004 = 127.0;
				float localglslmod34_g13004 = glslmod34_g13004( x34_g13004 , y34_g13004 );
				float lerpResult30_g13004 = lerp( lerpResult5_g13004 , localglslmod34_g13004 , (float)saturate( ( temp_output_37_0_g13004 - 1 ) ));
				float EmissionGlowDelay56_g13004 = lerpResult30_g13004;
				float Delay11_g13014 = EmissionGlowDelay56_g13004;
				float3 localLumaGlowLerp11_g13014 = LumaGlowLerp11_g13014( Band11_g13014 , Delay11_g13014 );
				float3 lerpResult17_g13014 = lerp( ( localgetThemeData15_g13014 * localLumaGlowLerp11_g13014 ) , localLumaGlowLerp11_g13014 , (float)temp_output_13_0_g13014);
				float3 lerpResult22_g13004 = lerp( temp_cast_214 , lerpResult17_g13014 , (float)temp_output_21_0_g13004);
				float3 lerpResult23_g13004 = lerp( lerpResult20_g13004 , lerpResult22_g13004 , (float)saturate( EmissionGlowMode35_g13004 ));
				float4 temp_cast_224 = (1.0).xxxx;
				float temp_output_10_0_g13017 = EmissionGlowDelay56_g13004;
				float Position1_g13019 = ( temp_output_10_0_g13017 / 127.0 );
				float4 localAudioLinkLerp1_g13019 = AudioLinkLerp1_g13019( Position1_g13019 );
				int clampResult8_g13017 = clamp( ( EmissionGlowZone47_g13004 - 4 ) , 1 , 3 );
				int Band11_g13017 = ( 59 - ( clampResult8_g13017 - 1 ) );
				float Delay11_g13017 = temp_output_10_0_g13017;
				float3 localLumaGlowLerp11_g13017 = LumaGlowLerp11_g13017( Band11_g13017 , Delay11_g13017 );
				int Band11_g13018 = 56;
				int localIsLumaActive11_g13018 = IsLumaActive11_g13018( Band11_g13018 );
				float4 lerpResult14_g13017 = lerp( localAudioLinkLerp1_g13019 , float4( localLumaGlowLerp11_g13017 , 0.0 ) , (float)localIsLumaActive11_g13018);
				float4 lerpResult52_g13004 = lerp( temp_cast_224 , lerpResult14_g13017 , (float)saturate( EmissionGlowZone47_g13004 ));
				float4 lerpResult51_g13004 = lerp( float4( lerpResult23_g13004 , 0.0 ) , lerpResult52_g13004 , (float)saturate( ( EmissionGlowZone47_g13004 - 4 ) ));
				float4 temp_cast_229 = (_EmissionGlowMinBrightness).xxxx;
				float4 temp_cast_230 = (( _EmissionGlowMinBrightness + 1.0 )).xxxx;
				int temp_output_245_0_g13004 = saturate( EmissionGlowZone47_g13004 );
				float4 EmissionGlow142_g13004 = ( (temp_cast_229 + (lerpResult51_g13004 - float4( 0,0,0,0 )) * (temp_cast_230 - temp_cast_229) / (float4( 1,1,1,1 ) - float4( 0,0,0,0 ))) * float4( _EmissionGlowTint.rgb , 0.0 ) * temp_output_245_0_g13004 );
				float4 lerpResult248_g13004 = lerp( temp_cast_209 , EmissionGlow142_g13004 , (float)temp_output_245_0_g13004);
				float4 EmissionGlowTog249_g13004 = lerpResult248_g13004;
				int EmissionReactiveBand254_g13004 = _EmissionReactiveBand;
				int Band3_g13005 = EmissionReactiveBand254_g13004;
				int Delay3_g13005 = 0;
				float localAudioLinkData3_g13005 = AudioLinkData3_g13005( Band3_g13005 , Delay3_g13005 );
				int temp_output_64_0_g13004 = step( _EmissionReactiveBand , 9 );
				float lerpResult66_g13004 = lerp( 1.0 , localAudioLinkData3_g13005 , (float)temp_output_64_0_g13004);
				int Band3_g13007 = _EmissionReactiveBand;
				float2 texCoord83_g13004 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float cos78_g13004 = cos( radians( _EmissionReactivePulseDir ) );
				float sin78_g13004 = sin( radians( _EmissionReactivePulseDir ) );
				float2 rotator78_g13004 = mul( texCoord83_g13004 - float2( 0.5,0.5 ) , float2x2( cos78_g13004 , -sin78_g13004 , sin78_g13004 , cos78_g13004 )) + float2( 0.5,0.5 );
				float x96_g13004 = ( ( rotator78_g13004.x * _EmissionReactivePulseScale ) + _EmissionReactivePulseOffset );
				float y96_g13004 = 127.0;
				float localglslmod96_g13004 = glslmod96_g13004( x96_g13004 , y96_g13004 );
				float2 texCoord85_g13004 = IN.ase_texcoord11.xy * float2( 1,1 ) + float2( 0,0 );
				float2 temp_output_34_0_g13008 = ( texCoord85_g13004 - _EmissionReactiveRadialCenter );
				float2 break39_g13008 = temp_output_34_0_g13008;
				float2 appendResult50_g13008 = (float2(( _EmissionReactivePulseScale * ( length( temp_output_34_0_g13008 ) * 2.0 ) ) , ( ( atan2( break39_g13008.x , break39_g13008.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float x97_g13004 = ( _EmissionReactivePulseOffset + appendResult50_g13008.x );
				float y97_g13004 = 127.0;
				float localglslmod97_g13004 = glslmod97_g13004( x97_g13004 , y97_g13004 );
				int EmissionReactiveMode99_g13004 = _EmissionReactiveMode;
				int temp_output_90_0_g13004 = ( EmissionReactiveMode99_g13004 - 1 );
				float lerpResult77_g13004 = lerp( localglslmod96_g13004 , localglslmod97_g13004 , (float)saturate( temp_output_90_0_g13004 ));
				float lerpResult174_g13004 = lerp( DirectionalMap106_g13004 , ( 1.0 - DirectionalMap106_g13004 ) , (float)saturate( ( EmissionReactiveMode99_g13004 - 3 ) ));
				float x98_g13004 = ( _EmissionReactivePulseOffset + ( _EmissionReactivePulseScale * lerpResult174_g13004 ) );
				float y98_g13004 = 127.0;
				float localglslmod98_g13004 = glslmod98_g13004( x98_g13004 , y98_g13004 );
				float lerpResult87_g13004 = lerp( lerpResult77_g13004 , localglslmod98_g13004 , (float)saturate( ( temp_output_90_0_g13004 - 1 ) ));
				float Delay3_g13007 = lerpResult87_g13004;
				float localAudioLinkLerp3_g13007 = AudioLinkLerp3_g13007( Band3_g13007 , Delay3_g13007 );
				float lerpResult102_g13004 = lerp( 1.0 , localAudioLinkLerp3_g13007 , (float)temp_output_64_0_g13004);
				float lerpResult103_g13004 = lerp( lerpResult66_g13004 , lerpResult102_g13004 , (float)saturate( EmissionReactiveMode99_g13004 ));
				int Band3_g13009 = _EmissionReactiveBand;
				float FilteredAmount3_g13009 = ( ( 1.0 - _EmissionReactiveGlobalSmoothing ) * 15.0 );
				float localAudioLinkLerp3_g13009 = AudioLinkLerp3_g13009( Band3_g13009 , FilteredAmount3_g13009 );
				float lerpResult168_g13004 = lerp( 1.0 , localAudioLinkLerp3_g13009 , (float)temp_output_64_0_g13004);
				float lerpResult172_g13004 = lerp( lerpResult103_g13004 , lerpResult168_g13004 , (float)saturate( ( EmissionReactiveMode99_g13004 - 4 ) ));
				float ReactivityAlpha132_g13004 = (_EmissionReactiveMinBrightness + (lerpResult172_g13004 - 0.0) * (( _EmissionReactiveMinBrightness + 1.0 ) - _EmissionReactiveMinBrightness) / (1.0 - 0.0));
				float3 temp_cast_241 = (1.0).xxx;
				float3 lerpResult265_g13004 = lerp( temp_cast_241 , _EmissionReactiveTint.rgb , (float)step( EmissionReactiveBand254_g13004 , 9 ));
				float3 FinalReactivity68_g13004 = ( ReactivityAlpha132_g13004 * lerpResult265_g13004 );
				float4 lerpResult146_g13004 = lerp( ( EmissionGlowTog249_g13004 * float4( FinalReactivity68_g13004 , 0.0 ) ) , ( EmissionGlow142_g13004 + float4( FinalReactivity68_g13004 , 0.0 ) ) , (float)saturate( _EmissionReactiveBlendMode ));
				float3 ReversedReactivity152_g13004 = ( ( 1.0 - ReactivityAlpha132_g13004 ) * lerpResult265_g13004 );
				int temp_output_157_0_g13004 = ( _EmissionReactiveBlendMode - 1 );
				float4 lerpResult114_g13004 = lerp( lerpResult146_g13004 , ( EmissionGlowTog249_g13004 * float4( ReversedReactivity152_g13004 , 0.0 ) ) , (float)saturate( temp_output_157_0_g13004 ));
				float4 lerpResult164_g13004 = lerp( lerpResult114_g13004 , ( EmissionGlow142_g13004 + float4( ( ReversedReactivity152_g13004 * step( EmissionReactiveBand254_g13004 , 9 ) ) , 0.0 ) ) , (float)saturate( ( temp_output_157_0_g13004 - 1 ) ));
				float grayscale214_g13004 = Luminance(temp_output_211_0_g13004);
				float smoothstepResult215_g13004 = smoothstep( 0.0 , 0.5 , grayscale214_g13004);
				int ReactiveBlendmode272_g13004 = _EmissionReactiveBlendMode;
				float x270_g13004 = (float)ReactiveBlendmode272_g13004;
				float y270_g13004 = 2.0;
				float localglslmod270_g13004 = glslmod270_g13004( x270_g13004 , y270_g13004 );
				float lerpResult271_g13004 = lerp( localglslmod270_g13004 , (float)_EmissionGlowBlendMode , (float)saturate( EmissionGlowZone47_g13004 ));
				float4 lerpResult212_g13004 = lerp( ( lerpResult164_g13004 * float4( temp_output_211_0_g13004 , 0.0 ) ) , ( ( lerpResult164_g13004 * smoothstepResult215_g13004 ) + float4( temp_output_211_0_g13004 , 0.0 ) ) , lerpResult271_g13004);
				float localIfAudioLinkv2Exists1_g13016 = IfAudioLinkv2Exists1_g13016();
				float4 lerpResult281_g13004 = lerp( float4( temp_output_211_0_g13004 , 0.0 ) , lerpResult212_g13004 , localIfAudioLinkv2Exists1_g13016);
				#ifdef _EMISSION
				float4 staticSwitch284_g13004 = lerpResult281_g13004;
				#else
				float4 staticSwitch284_g13004 = float4( 0,0,0,0 );
				#endif
				float4 LumaGlow2018 = ( ( lerpResult280_g12987 + lerpResult276_g13020 + lerpResult278_g13037 + lerpResult278_g13054 ) + staticSwitch284_g13004 );
				float3 temp_cast_255 = (( 1.0 / 3.0 )).xxx;
				float3 temp_cast_256 = (1.0).xxx;
				float3 lerpResult90_g13099 = lerp( temp_cast_256 , _StarshineColor , 0.2);
				float3 temp_output_88_0_g13099 = ( lerpResult90_g13099 * 1.1 );
				float3 lerpResult61_g13099 = lerp( temp_output_88_0_g13099 , temp_output_69_0_g13099 , _StarshineMetallic);
				float3 temp_cast_257 = (( 1.0 / 3.0 )).xxx;
				float2 _Vector2 = float2(0.7517731,0.9574468);
				float mulTime6_g13104 = _Time.y * _StarshineSpeed;
				float temp_output_46_0_g13099 = fmod( mulTime6_g13104 , 7200.0 );
				float3 temp_output_6_0_g13099 = ( reflect( worldViewDir , WorldNorm601 ) * _StarshineScale );
				float3 rotatedValue8_g13099 = RotateAroundAxis( float3( 0,0,0 ), temp_output_6_0_g13099, float3( 0.9,1,0.37 ), temp_output_46_0_g13099 );
				float simplePerlin3D10_g13099 = snoise( rotatedValue8_g13099*0.5 );
				simplePerlin3D10_g13099 = simplePerlin3D10_g13099*0.5 + 0.5;
				float3 rotatedValue9_g13099 = RotateAroundAxis( float3( 0,0,0 ), temp_output_6_0_g13099, float3( 0,1,0 ), -temp_output_46_0_g13099 );
				float simplePerlin3D11_g13099 = snoise( rotatedValue9_g13099 );
				simplePerlin3D11_g13099 = simplePerlin3D11_g13099*0.5 + 0.5;
				float temp_output_12_0_g13099 = max( simplePerlin3D10_g13099 , simplePerlin3D11_g13099 );
				float smoothstepResult15_g13099 = smoothstep( _Vector2.x , _Vector2.y , temp_output_12_0_g13099);
				float temp_output_31_0_g13099 = ( 2.0 * smoothstepResult15_g13099 );
				float3 lerpResult30_g13099 = lerp( mul( pow( mul( temp_output_28_0_g13099, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_255 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) ) , mul( pow( mul( lerpResult61_g13099, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_257 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) ) , saturate( temp_output_31_0_g13099 ));
				float3 lerpResult60_g13099 = lerp( temp_output_88_0_g13099 , ( temp_output_69_0_g13099 * temp_output_88_0_g13099 ) , _StarshineMetallic);
				float3 temp_cast_258 = (( 1.0 / 3.0 )).xxx;
				float3 lerpResult16_g13099 = lerp( lerpResult30_g13099 , mul( pow( mul( lerpResult60_g13099, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_258 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) ) , saturate( ( temp_output_31_0_g13099 - 1.0 ) ));
				float2 _Vector1 = float2(0.4338517,0.8231586);
				float smoothstepResult14_g13099 = smoothstep( _Vector1.x , _Vector1.y , temp_output_12_0_g13099);
				float3 temp_output_2_0_g13102 = mul( ( lerpResult16_g13099 * ( _StarshineIntensity * smoothstepResult14_g13099 ) ), float3x3(1,1,1,0.3963378,-0.1055613,-0.08948418,0.2158038,-0.06385417,-1.291486) );
				float3 Starshine1647 = ( ( mul( ( temp_output_2_0_g13102 * temp_output_2_0_g13102 * temp_output_2_0_g13102 ), float3x3(4.076742,-1.268438,-0.004196086,-3.307712,2.609757,-0.7034186,0.2309699,-0.3413194,1.707615) ) * MainPassLight615 ) * StarshineMask1660 * max( 0.2 , NdotLBase608 ) );
				#ifdef _STARSHINE_ON
				float3 staticSwitch1767 = Starshine1647;
				#else
				float3 staticSwitch1767 = float3( 0,0,0 );
				#endif
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch1949 = ( Dreamweave1920 * DreamweaveMask1790 * _DreamweaveEmission );
				#else
				float3 staticSwitch1949 = float3( 0,0,0 );
				#endif
				#ifdef _RAINBOW_ON
				float3 staticSwitch2128 = ( Rainbow2089 * RainbowMask2094 * _RainbowEmission );
				#else
				float3 staticSwitch2128 = float3( 0,0,0 );
				#endif
				float FabricLightChannel783_g12820 = _FabricLightChannel;
				float FabricLightMap782_g12820 = _FabricLightMap;
				float4 temp_cast_262 = (1.0).xxxx;
				float4 temp_output_786_0_g12820 = ( 4.0 == FabricLightMap782_g12820 ? temp_cast_262 : ( 3.0 == FabricLightMap782_g12820 ? MM04RGBA8_g12820 : ( 2.0 == FabricLightMap782_g12820 ? MM03RGBA7_g12820 : ( 1.0 == FabricLightMap782_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float4 FabricLightRGBA784_g12820 = temp_output_786_0_g12820;
				float FabricLightMask2574 = ( 3.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).a : ( 2.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).b : ( 1.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).g : (FabricLightRGBA784_g12820).r ) ) );
				#if ( SHADER_TARGET >= 50 )
				float recip707_g12921 = rcp( UNITY_PI );
				#else
				float recip707_g12921 = 1.0 / UNITY_PI;
				#endif
				float temp_output_705_0_g12921 = ( 1.0 - -1.5 );
				float dotResult2268 = dot( WorldNorm601 , WorldView639 );
				float temp_output_670_0_g12921 = ( max( dotResult2268 , 0.0001 ) * max( dotResult2268 , 0.0001 ) );
				float temp_output_666_0_g12921 = ( max( temp_output_705_0_g12921 , 0.002 ) / ( temp_output_670_0_g12921 * ( ( ( 1.0 - temp_output_670_0_g12921 ) / temp_output_670_0_g12921 ) + ( temp_output_705_0_g12921 * temp_output_705_0_g12921 ) ) ) );
				float temp_output_2335_0 = max( ( recip707_g12921 * ( temp_output_666_0_g12921 * temp_output_666_0_g12921 ) ) , 0.0 );
				float3 temp_output_2329_0 = ( temp_output_2335_0 * MainPassLight615 * DiffuseColor824 * DreamweaveMask1790 );
				#ifdef _FABRICLIGHT_ON
				float3 staticSwitch2570 = ( FabricLightMask2574 * temp_output_2329_0 );
				#else
				float3 staticSwitch2570 = float3( 0,0,0 );
				#endif
				#ifdef _FABRICLIGHT_ON
				float3 staticSwitch2571 = float3( 0,0,0 );
				#else
				float3 staticSwitch2571 = temp_output_2329_0;
				#endif
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch2565 = staticSwitch2571;
				#else
				float3 staticSwitch2565 = float3( 0,0,0 );
				#endif
				
				float AlphaMap671_g12820 = _OpacityMap;
				float Alpha847 = (temp_output_835_0).a;
				float temp_output_678_0_g12820 = Alpha847;
				float AlphaChannel670_g12820 = _OpacityChannel;
				float4 temp_cast_266 = (1.0).xxxx;
				float4 AlphaRGBA657_g12820 = ( 4.0 == AlphaMap671_g12820 ? temp_cast_266 : ( 3.0 == AlphaMap671_g12820 ? MM04RGBA8_g12820 : ( 2.0 == AlphaMap671_g12820 ? MM03RGBA7_g12820 : ( 1.0 == AlphaMap671_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_2995_674 = ( 5.0 == AlphaMap671_g12820 ? temp_output_678_0_g12820 : ( 3.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).a : ( 2.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).b : ( 1.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).g : (AlphaRGBA657_g12820).r ) ) ) );
				#if defined( _ALPHATEST_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _BLEND_OFF )
				float staticSwitch2920 = 1.0;
				#else
				float staticSwitch2920 = temp_output_2995_674;
				#endif
				float AlphaUnpacked2081 = staticSwitch2920;
				
				#if defined( _ALPHATEST_ON )
				float staticSwitch2905 = _MaskClipValue;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2905 = 0.0001;
				#elif defined( _BLEND_OFF )
				float staticSwitch2905 = -0.1;
				#else
				float staticSwitch2905 = 0.0001;
				#endif
				float AlphaClip1179 = staticSwitch2905;
				
				float3 Color = ( float4( IndSpec815 , 0.0 ) + float4( ( MainPassLight615 * DiffuseColor824 ) , 0.0 ) + float4( ( SpecularBase645 * PixelLightsBase571 ) , 0.0 ) + LumaGlow2018 + float4( staticSwitch1767 , 0.0 ) + float4( staticSwitch1949 , 0.0 ) + float4( staticSwitch2128 , 0.0 ) + float4( staticSwitch2570 , 0.0 ) + float4( staticSwitch2565 , 0.0 ) ).xyz;
				float Alpha = AlphaUnpacked2081;
				float AlphaClipThreshold = AlphaClip1179;

				float4 c = float4( Color, Alpha );

				#ifdef _ALPHATEST_ON
					clip( Alpha - AlphaClipThreshold );
				#elif defined(_ALPHABLEND_ON)
					clip(Alpha - AlphaClipThreshold);
				#else
					clip(Alpha + float(1.1));
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
			}

		
		Pass
		{
			Name "forwardad"
			Tags { "LightMode"="forwardadd" }
			ZWrite Off
			Blend One One

	CGPROGRAM




			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_VERSION 19801





			#pragma vertex vert
			#pragma fragment frag
			#pragma skip_variants INSTANCING_ON
			#pragma multi_compile_fwdadd_fullshadows
			#ifndef UNITY_PASS_FORWARDADD
				#define UNITY_PASS_FORWARDADD
			#endif
			#include "HLSLSupport.cginc"
			#if !defined( UNITY_INSTANCED_LOD_FADE )
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#if !defined( UNITY_INSTANCED_SH )
				#define UNITY_INSTANCED_SH
			#endif
			#if !defined( UNITY_INSTANCED_LIGHTMAPSTS )
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
		
		


			#include "UnityStandardUtils.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#define ASE_NEEDS_FRAG_WORLD_VIEW_DIR
			#define ASE_NEEDS_FRAG_WORLD_POSITION
			#define ASE_NEEDS_FRAG_WORLD_TANGENT
			#define ASE_NEEDS_FRAG_WORLD_NORMAL
			#define ASE_NEEDS_FRAG_WORLD_BITANGENT
			#pragma shader_feature_local _LIGHTINGSTYLE_STANDARD _LIGHTINGSTYLE_TOON
			#pragma shader_feature _ALPHAPREMULTIPLY_ON
			#pragma shader_feature_local _STARSHINE_ON
			#pragma shader_feature_local _RAINBOW_ON
			#pragma shader_feature_local _DREAMWEAVE_ON
			#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
		
				
				
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};
			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(1,2)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(1)
					#else
						SHADOW_COORDS(1)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(3)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
				float4 screenPos : TEXCOORD8;
				#endif
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				float4 ase_texcoord11 : TEXCOORD11;
				float4 ase_texcoord12 : TEXCOORD12;
				float4 ase_texcoord13 : TEXCOORD13;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

		
			uniform float _OutlineChannel;
			uniform float _OutlineMask;
			uniform float _DreamweaveMask;
			uniform float _DreamweaveChannel;
			uniform float _StarshellChannel;
			uniform float _StarshellMask;
			uniform float _StardustHeightMap;
			uniform float _StardustHeightCh;
			uniform float _RainbowChannel;
			uniform float _RainbowMask;
			uniform float _FabricLightChannel;
			uniform float _FabricLightMap;
			uniform float _ConstellationChannel;
			uniform float _ConstellationMask;
			uniform float _BlendModeIndex;
			uniform float _Culling;
			uniform float _BlendOPsrc;
			uniform float _BlendOPdst;
			uniform float _BlendOPIndex;
			uniform float _ShowMaps;
			uniform float _ShowLighting;
			uniform float _ShowEmission;
			uniform float _ShowEmission01;
			uniform float _ShowEmissionMain;
			uniform float _ShowEmission02;
			uniform float _ShowEmission03;
			uniform float _ShowEmission04;
			uniform float _ShowTileDiscard;
			uniform float _ShowEffects;
			uniform float _ShowStarshine;
			uniform float _ShowDreamweave;
			uniform float _ShowOutline;
			uniform float _ShowStarshell;
			uniform float _ZWrite;
			uniform float _BlendOpRGB;
			uniform float _StencilReference;
			uniform float3 _FavoriteColor;
			uniform float _DestinationBlendRGB;
			uniform float _SourceBlendRGB;
			uniform float _ShowRainbow;
			uniform float _ShowRedGlow;
			uniform float _ShowRedAL;
			uniform float _ShowEmissGlow;
			uniform float _ShowEmissAL;
			uniform float _ShowGreenGlow;
			uniform float _ShowGreenAL;
			uniform float _ShowBlueGlow;
			uniform float _ShowBlueAL;
			uniform float _ShowAlphaGlow;
			uniform float _ShowAlphaAL;
			uniform float _ShowMain;
			uniform float _ShowConstellation;
			uniform float _StardustZwrite;
			uniform float _TileDiscardUV;
			uniform float _UVTileDissolveAlpha_Row0_0;
			uniform float _UDIMDiscardRow0_0;
			uniform float _UVTileDissolveAlpha_Row0_1;
			uniform float _UDIMDiscardRow0_1;
			uniform float _UVTileDissolveAlpha_Row0_2;
			uniform float _UDIMDiscardRow0_2;
			uniform float _UVTileDissolveAlpha_Row0_3;
			uniform float _UDIMDiscardRow0_3;
			uniform float _UVTileDissolveAlpha_Row1_0;
			uniform float _UDIMDiscardRow1_0;
			uniform float _UVTileDissolveAlpha_Row1_1;
			uniform float _UDIMDiscardRow1_1;
			uniform float _UVTileDissolveAlpha_Row1_2;
			uniform float _UDIMDiscardRow1_2;
			uniform float _UVTileDissolveAlpha_Row1_3;
			uniform float _UDIMDiscardRow1_3;
			uniform float _UVTileDissolveAlpha_Row2_0;
			uniform float _UDIMDiscardRow2_0;
			uniform float _UVTileDissolveAlpha_Row2_1;
			uniform float _UDIMDiscardRow2_1;
			uniform float _UVTileDissolveAlpha_Row2_2;
			uniform float _UDIMDiscardRow2_2;
			uniform float _UVTileDissolveAlpha_Row2_3;
			uniform float _UDIMDiscardRow2_3;
			uniform float _UVTileDissolveAlpha_Row3_0;
			uniform float _UDIMDiscardRow3_0;
			uniform float _UVTileDissolveAlpha_Row3_1;
			uniform float _UDIMDiscardRow3_1;
			uniform float _UVTileDissolveAlpha_Row3_2;
			uniform float _UDIMDiscardRow3_2;
			uniform float _UVTileDissolveAlpha_Row3_3;
			uniform float _UDIMDiscardRow3_3;
			uniform float4 _Color;
			uniform sampler2D _MainTex;
			uniform float _MainTexUV;
			uniform float4 _MainTex_ST;
			uniform float2 _AnimatedOffsetMainTex;
			uniform float3 _DreamweaveColor01;
			uniform float3 _DreamweaveColor02;
			uniform float _DreamweaveSoftness;
			uniform float3 _DreamweaveAngle;
			uniform float _DreamweavePos;
			uniform float _DreamweavePosSpeed;
			uniform sampler2D _BumpMap;
			uniform float _NormalMapUV;
			uniform float4 _BumpMap_ST;
			uniform float _BumpScale;
			uniform sampler2D _DetailNormal;
			uniform float2 _DreamWeaveScale;
			uniform float2 _DreamWeaveOffset;
			uniform float2 _DreamweaveDistortionSpeed;
			uniform float _DreamweaveNormalScale;
			uniform float _DreamweaveColorOffset;
			uniform float _DreamweaveSwapFrequency;
			uniform float _DreamweaveSwapSpeed;
			uniform float _DreamweaveGridTile;
			uniform float _DreamweaveGridThickness;
			uniform float _DetailUV;
			uniform float4 _DetailNormal_ST;
			uniform float _BumpScale1;
			uniform float _DetailNormalChannel;
			uniform float _DetailNormalMask;
			uniform sampler2D _MaskMap04;
			uniform float _MaskMap04UV;
			uniform float4 _MaskMap04_ST;
			uniform float2 _AnimatedOffsetMaskMap04;
			uniform sampler2D _MaskMap03;
			uniform float _MaskMap03UV;
			uniform float4 _MaskMap03_ST;
			uniform float2 _AnimatedOffsetMaskMap03;
			uniform sampler2D _MaskMap02;
			uniform float _MaskMap02UV;
			uniform float4 _MaskMap02_ST;
			uniform float2 _AnimatedOffsetMaskMap02;
			uniform sampler2D _MaskMap01;
			uniform float _MaskMap01UV;
			uniform float4 _MaskMap01_ST;
			uniform float2 _AnimatedOffsetMaskMap01;
			uniform float _Workflow;
			uniform float _OcclusionChannel;
			uniform float _OcclusionMap;
			uniform float _OcclusionPower;
			uniform float _Float1;
			uniform float _RainbowSpeed;
			uniform float _RainbowRotation;
			uniform float _RainbowSpiralCurve;
			uniform float2 _RainbowRadialCenter;
			uniform int _RainbowUVMode;
			uniform sampler2D _DirectionalMap;
			uniform float _DirectionMapUV;
			uniform float4 _DirectionalMap_ST;
			uniform float2 _AnimatedOffsetDirectionalMap;
			uniform float _RainbowScale;
			uniform float _RainbowHueRange;
			uniform float _RainbowHue;
			uniform float _RainbowSaturation;
			uniform float _RainbowValue;
			uniform float _EmissionMaskChannel;
			uniform float _EmissionMaskMap;
			uniform float3 _EmissionColor;
			uniform sampler2D _EmissionMap;
			uniform float _EmissionUV;
			uniform float4 _EmissionMap_ST;
			uniform float2 _AnimatedOffsetEmssion;
			uniform float _ReplaceBaseColor;
			uniform float _StarshineMetallic;
			uniform float3 _StarshineColor;
			uniform float _StarshineBaseColor;
			uniform float3 _SpecularTint;
			uniform float _SpecularTintMap;
			uniform float _StarshineChannel;
			uniform float _StarshineMask;
			uniform float _SpecularMaskChannel;
			uniform float _SpecularMask;
			uniform float _GlossChannel;
			uniform float _GlossMap;
			uniform float _InvertGloss;
			uniform half _GlossMult;
			uniform float _MetallicChannel;
			uniform float _MetallicMask;
			uniform float _MetallicMult;
			uniform float _OpacityMap;
			uniform float _OpacityChannel;
			uniform float _MaskClipValue;


			//This is a late directive
			
			float3 ProbeDir(  )
			{
				return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
			}
			
			float3 getThemeData( int Zone )
			{
				float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
				return result;
			}
			
			float3 CenterEye1_g12832(  )
			{
				#if defined(USING_STEREO_MATRICES)
				float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
				float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
				float3 centerEye = lerp(leftEye, rightEye, 0.5);
				#else
				float3 centerEye = _WorldSpaceCameraPos;
				#endif
				return centerEye;
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			int LightExists8_g12826(  )
			{
				int lightEnv = int(any(_WorldSpaceLightPos0.xyz));       
				if(lightEnv != 1){
					return 0;
					}
				return 1;
			}
			
			float3 ASESafeNormalize(float3 inVec)
			{
				float dp3 = max(1.175494351e-38, dot(inVec, inVec));
				return inVec* rsqrt(dp3);
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 _Vector4 = float2(0,0);
				float Index58_g12818 = _TileDiscardUV;
				float2 temp_output_53_0_g12818 = ( ( 4.0 == Index58_g12818 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12818 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12818 ? v.texcoord2.xyzw.xy : ( 1.0 == Index58_g12818 ? v.texcoord1.xyzw.xy : v.ase_texcoord.xy ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12818 = temp_output_53_0_g12818;
				float2 TileDiscardUVs18_g12819 = ( vertexToFrag51_g12818 + -1.0 );
				float2 break10_g12819 = TileDiscardUVs18_g12819;
				float Row0Col071_g12819 = saturate( ( max( max( step( _Vector4.x , break10_g12819.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g12819.x ) ) , max( step( _Vector4.y , break10_g12819.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
				float2 _Vector5 = float2(1,0);
				float2 break82_g12819 = TileDiscardUVs18_g12819;
				float Row0Col189_g12819 = saturate( ( max( max( step( _Vector5.x , break82_g12819.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g12819.x ) ) , max( step( _Vector5.y , break82_g12819.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
				float2 _Vector6 = float2(2,0);
				float2 break100_g12819 = TileDiscardUVs18_g12819;
				float Row0Col2106_g12819 = saturate( ( max( max( step( _Vector6.x , break100_g12819.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g12819.x ) ) , max( step( _Vector6.y , break100_g12819.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
				float2 _Vector7 = float2(3,0);
				float2 break118_g12819 = TileDiscardUVs18_g12819;
				float Row0Col3124_g12819 = saturate( ( max( max( step( _Vector7.x , break118_g12819.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g12819.x ) ) , max( step( _Vector7.y , break118_g12819.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
				float2 _Vector8 = float2(0,1);
				float2 break141_g12819 = TileDiscardUVs18_g12819;
				float Row1Col0148_g12819 = saturate( ( max( max( step( _Vector8.x , break141_g12819.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g12819.x ) ) , max( step( _Vector8.y , break141_g12819.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
				float2 _Vector9 = float2(1,1);
				float2 break159_g12819 = TileDiscardUVs18_g12819;
				float Row1Col1165_g12819 = saturate( ( max( max( step( _Vector9.x , break159_g12819.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g12819.x ) ) , max( step( _Vector9.y , break159_g12819.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
				float2 _Vector10 = float2(2,1);
				float2 break177_g12819 = TileDiscardUVs18_g12819;
				float Row1Col2183_g12819 = saturate( ( max( max( step( _Vector10.x , break177_g12819.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g12819.x ) ) , max( step( _Vector10.y , break177_g12819.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
				float2 _Vector11 = float2(3,1);
				float2 break195_g12819 = TileDiscardUVs18_g12819;
				float Row1Col3201_g12819 = saturate( ( max( max( step( _Vector11.x , break195_g12819.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g12819.x ) ) , max( step( _Vector11.y , break195_g12819.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
				float2 _Vector12 = float2(0,2);
				float2 break222_g12819 = TileDiscardUVs18_g12819;
				float Row2Col0229_g12819 = saturate( ( max( max( step( _Vector12.x , break222_g12819.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g12819.x ) ) , max( step( _Vector12.y , break222_g12819.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
				float2 _Vector13 = float2(1,2);
				float2 break239_g12819 = TileDiscardUVs18_g12819;
				float Row2Col1245_g12819 = saturate( ( max( max( step( _Vector13.x , break239_g12819.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g12819.x ) ) , max( step( _Vector13.y , break239_g12819.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
				float2 _Vector14 = float2(2,2);
				float2 break256_g12819 = TileDiscardUVs18_g12819;
				float Row2Col2262_g12819 = saturate( ( max( max( step( _Vector14.x , break256_g12819.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g12819.x ) ) , max( step( _Vector14.y , break256_g12819.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
				float2 _Vector15 = float2(3,2);
				float2 break273_g12819 = TileDiscardUVs18_g12819;
				float Row2Col3279_g12819 = saturate( ( max( max( step( _Vector15.x , break273_g12819.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g12819.x ) ) , max( step( _Vector15.y , break273_g12819.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
				float2 _Vector19 = float2(0,3);
				float2 break294_g12819 = TileDiscardUVs18_g12819;
				float Row3Col0352_g12819 = saturate( ( max( max( step( _Vector19.x , break294_g12819.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g12819.x ) ) , max( step( _Vector19.y , break294_g12819.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
				float2 _Vector16 = float2(1,3);
				float2 break309_g12819 = TileDiscardUVs18_g12819;
				float Row3Col1351_g12819 = saturate( ( max( max( step( _Vector16.x , break309_g12819.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g12819.x ) ) , max( step( _Vector16.y , break309_g12819.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
				float2 _Vector17 = float2(2,3);
				float2 break325_g12819 = TileDiscardUVs18_g12819;
				float Row3Col2350_g12819 = saturate( ( max( max( step( _Vector17.x , break325_g12819.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g12819.x ) ) , max( step( _Vector17.y , break325_g12819.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
				float2 _Vector18 = float2(3,3);
				float2 break341_g12819 = TileDiscardUVs18_g12819;
				float Row3Col3349_g12819 = saturate( ( max( max( step( _Vector18.x , break341_g12819.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g12819.x ) ) , max( step( _Vector18.y , break341_g12819.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
				float VertexDiscardOutput1202 = ( ( ( Row0Col071_g12819 * Row0Col189_g12819 * Row0Col2106_g12819 * Row0Col3124_g12819 ) * ( Row1Col0148_g12819 * Row1Col1165_g12819 * Row1Col2183_g12819 * Row1Col3201_g12819 ) ) * ( ( Row2Col0229_g12819 * Row2Col1245_g12819 * Row2Col2262_g12819 * Row2Col3279_g12819 ) * ( Row3Col0352_g12819 * Row3Col1351_g12819 * Row3Col2350_g12819 * Row3Col3349_g12819 ) ) );
				float3 temp_cast_0 = (( 0.0 / 0.0 )).xxx;
				float3 VertexDiscard1197 = ( VertexDiscardOutput1202 < 0.001 ? temp_cast_0 : v.vertex.xyz );
				
				float Index58_g12809 = _MainTexUV;
				float2 Tiling60_g12809 = _MainTex_ST.xy;
				float2 Offset61_g12809 = _MainTex_ST.zw;
				float2 temp_output_2_0_g12808 = _AnimatedOffsetMainTex;
				float mulTime7_g12808 = _Time.y * (temp_output_2_0_g12808).x;
				float mulTime10_g12808 = _Time.y * (temp_output_2_0_g12808).y;
				float2 appendResult11_g12808 = (float2(mulTime7_g12808 , mulTime10_g12808));
				float2 temp_output_53_0_g12809 = ( ( 4.0 == Index58_g12809 ? (v.ase_texcoord4.xy*Tiling60_g12809 + Offset61_g12809) : ( 3.0 == Index58_g12809 ? (v.ase_texcoord3.xy*Tiling60_g12809 + Offset61_g12809) : ( 2.0 == Index58_g12809 ? (v.texcoord2.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : ( 1.0 == Index58_g12809 ? (v.texcoord1.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : (v.ase_texcoord.xy*Tiling60_g12809 + Offset61_g12809) ) ) ) ) + frac( appendResult11_g12808 ) );
				float2 vertexToFrag51_g12809 = temp_output_53_0_g12809;
				o.ase_texcoord9.xy = vertexToFrag51_g12809;
				float Index58_g12831 = _NormalMapUV;
				float2 Tiling60_g12831 = _BumpMap_ST.xy;
				float2 Offset61_g12831 = _BumpMap_ST.zw;
				float2 temp_output_53_0_g12831 = ( ( 4.0 == Index58_g12831 ? (v.ase_texcoord4.xy*Tiling60_g12831 + Offset61_g12831) : ( 3.0 == Index58_g12831 ? (v.ase_texcoord3.xy*Tiling60_g12831 + Offset61_g12831) : ( 2.0 == Index58_g12831 ? (v.texcoord2.xyzw.xy*Tiling60_g12831 + Offset61_g12831) : ( 1.0 == Index58_g12831 ? (v.texcoord1.xyzw.xy*Tiling60_g12831 + Offset61_g12831) : (v.ase_texcoord.xy*Tiling60_g12831 + Offset61_g12831) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12831 = temp_output_53_0_g12831;
				o.ase_texcoord9.zw = vertexToFrag51_g12831;
				float Index58_g12829 = _DetailUV;
				float2 Tiling60_g12829 = _DetailNormal_ST.xy;
				float2 Offset61_g12829 = _DetailNormal_ST.zw;
				float2 temp_output_53_0_g12829 = ( ( 4.0 == Index58_g12829 ? (v.ase_texcoord4.xy*Tiling60_g12829 + Offset61_g12829) : ( 3.0 == Index58_g12829 ? (v.ase_texcoord3.xy*Tiling60_g12829 + Offset61_g12829) : ( 2.0 == Index58_g12829 ? (v.texcoord2.xyzw.xy*Tiling60_g12829 + Offset61_g12829) : ( 1.0 == Index58_g12829 ? (v.texcoord1.xyzw.xy*Tiling60_g12829 + Offset61_g12829) : (v.ase_texcoord.xy*Tiling60_g12829 + Offset61_g12829) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12829 = temp_output_53_0_g12829;
				o.ase_texcoord10.zw = vertexToFrag51_g12829;
				float Index58_g12817 = _MaskMap04UV;
				float2 Tiling60_g12817 = _MaskMap04_ST.xy;
				float2 Offset61_g12817 = _MaskMap04_ST.zw;
				float2 temp_output_2_0_g12813 = _AnimatedOffsetMaskMap04;
				float mulTime7_g12813 = _Time.y * (temp_output_2_0_g12813).x;
				float mulTime10_g12813 = _Time.y * (temp_output_2_0_g12813).y;
				float2 appendResult11_g12813 = (float2(mulTime7_g12813 , mulTime10_g12813));
				float2 temp_output_53_0_g12817 = ( ( 4.0 == Index58_g12817 ? (v.ase_texcoord4.xy*Tiling60_g12817 + Offset61_g12817) : ( 3.0 == Index58_g12817 ? (v.ase_texcoord3.xy*Tiling60_g12817 + Offset61_g12817) : ( 2.0 == Index58_g12817 ? (v.texcoord2.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : ( 1.0 == Index58_g12817 ? (v.texcoord1.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : (v.ase_texcoord.xy*Tiling60_g12817 + Offset61_g12817) ) ) ) ) + frac( appendResult11_g12813 ) );
				float2 vertexToFrag51_g12817 = temp_output_53_0_g12817;
				o.ase_texcoord11.xy = vertexToFrag51_g12817;
				float Index58_g12816 = _MaskMap03UV;
				float2 Tiling60_g12816 = _MaskMap03_ST.xy;
				float2 Offset61_g12816 = _MaskMap03_ST.zw;
				float2 temp_output_2_0_g12812 = _AnimatedOffsetMaskMap03;
				float mulTime7_g12812 = _Time.y * (temp_output_2_0_g12812).x;
				float mulTime10_g12812 = _Time.y * (temp_output_2_0_g12812).y;
				float2 appendResult11_g12812 = (float2(mulTime7_g12812 , mulTime10_g12812));
				float2 temp_output_53_0_g12816 = ( ( 4.0 == Index58_g12816 ? (v.ase_texcoord4.xy*Tiling60_g12816 + Offset61_g12816) : ( 3.0 == Index58_g12816 ? (v.ase_texcoord3.xy*Tiling60_g12816 + Offset61_g12816) : ( 2.0 == Index58_g12816 ? (v.texcoord2.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : ( 1.0 == Index58_g12816 ? (v.texcoord1.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : (v.ase_texcoord.xy*Tiling60_g12816 + Offset61_g12816) ) ) ) ) + frac( appendResult11_g12812 ) );
				float2 vertexToFrag51_g12816 = temp_output_53_0_g12816;
				o.ase_texcoord11.zw = vertexToFrag51_g12816;
				float Index58_g12815 = _MaskMap02UV;
				float2 Tiling60_g12815 = _MaskMap02_ST.xy;
				float2 Offset61_g12815 = _MaskMap02_ST.zw;
				float2 temp_output_2_0_g12811 = _AnimatedOffsetMaskMap02;
				float mulTime7_g12811 = _Time.y * (temp_output_2_0_g12811).x;
				float mulTime10_g12811 = _Time.y * (temp_output_2_0_g12811).y;
				float2 appendResult11_g12811 = (float2(mulTime7_g12811 , mulTime10_g12811));
				float2 temp_output_53_0_g12815 = ( ( 4.0 == Index58_g12815 ? (v.ase_texcoord4.xy*Tiling60_g12815 + Offset61_g12815) : ( 3.0 == Index58_g12815 ? (v.ase_texcoord3.xy*Tiling60_g12815 + Offset61_g12815) : ( 2.0 == Index58_g12815 ? (v.texcoord2.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : ( 1.0 == Index58_g12815 ? (v.texcoord1.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : (v.ase_texcoord.xy*Tiling60_g12815 + Offset61_g12815) ) ) ) ) + frac( appendResult11_g12811 ) );
				float2 vertexToFrag51_g12815 = temp_output_53_0_g12815;
				o.ase_texcoord12.xy = vertexToFrag51_g12815;
				float Index58_g12814 = _MaskMap01UV;
				float2 Tiling60_g12814 = _MaskMap01_ST.xy;
				float2 Offset61_g12814 = _MaskMap01_ST.zw;
				float2 temp_output_2_0_g12810 = _AnimatedOffsetMaskMap01;
				float mulTime7_g12810 = _Time.y * (temp_output_2_0_g12810).x;
				float mulTime10_g12810 = _Time.y * (temp_output_2_0_g12810).y;
				float2 appendResult11_g12810 = (float2(mulTime7_g12810 , mulTime10_g12810));
				float2 temp_output_53_0_g12814 = ( ( 4.0 == Index58_g12814 ? (v.ase_texcoord4.xy*Tiling60_g12814 + Offset61_g12814) : ( 3.0 == Index58_g12814 ? (v.ase_texcoord3.xy*Tiling60_g12814 + Offset61_g12814) : ( 2.0 == Index58_g12814 ? (v.texcoord2.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : ( 1.0 == Index58_g12814 ? (v.texcoord1.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : (v.ase_texcoord.xy*Tiling60_g12814 + Offset61_g12814) ) ) ) ) + frac( appendResult11_g12810 ) );
				float2 vertexToFrag51_g12814 = temp_output_53_0_g12814;
				o.ase_texcoord12.zw = vertexToFrag51_g12814;
				float Index58_g12986 = _DirectionMapUV;
				float2 Tiling60_g12986 = _DirectionalMap_ST.xy;
				float2 Offset61_g12986 = _DirectionalMap_ST.zw;
				float2 temp_output_2_0_g12983 = _AnimatedOffsetDirectionalMap;
				float mulTime7_g12983 = _Time.y * (temp_output_2_0_g12983).x;
				float mulTime10_g12983 = _Time.y * (temp_output_2_0_g12983).y;
				float2 appendResult11_g12983 = (float2(mulTime7_g12983 , mulTime10_g12983));
				float2 temp_output_53_0_g12986 = ( ( 4.0 == Index58_g12986 ? (v.ase_texcoord4.xy*Tiling60_g12986 + Offset61_g12986) : ( 3.0 == Index58_g12986 ? (v.ase_texcoord3.xy*Tiling60_g12986 + Offset61_g12986) : ( 2.0 == Index58_g12986 ? (v.texcoord2.xyzw.xy*Tiling60_g12986 + Offset61_g12986) : ( 1.0 == Index58_g12986 ? (v.texcoord1.xyzw.xy*Tiling60_g12986 + Offset61_g12986) : (v.ase_texcoord.xy*Tiling60_g12986 + Offset61_g12986) ) ) ) ) + frac( appendResult11_g12983 ) );
				float2 vertexToFrag51_g12986 = temp_output_53_0_g12986;
				o.ase_texcoord13.xy = vertexToFrag51_g12986;
				float Index58_g12830 = _EmissionUV;
				float2 Tiling60_g12830 = _EmissionMap_ST.xy;
				float2 Offset61_g12830 = _EmissionMap_ST.zw;
				float2 temp_output_2_0_g12952 = _AnimatedOffsetEmssion;
				float mulTime7_g12952 = _Time.y * (temp_output_2_0_g12952).x;
				float mulTime10_g12952 = _Time.y * (temp_output_2_0_g12952).y;
				float2 appendResult11_g12952 = (float2(mulTime7_g12952 , mulTime10_g12952));
				float2 temp_output_53_0_g12830 = ( ( 4.0 == Index58_g12830 ? (v.ase_texcoord4.xy*Tiling60_g12830 + Offset61_g12830) : ( 3.0 == Index58_g12830 ? (v.ase_texcoord3.xy*Tiling60_g12830 + Offset61_g12830) : ( 2.0 == Index58_g12830 ? (v.texcoord2.xyzw.xy*Tiling60_g12830 + Offset61_g12830) : ( 1.0 == Index58_g12830 ? (v.texcoord1.xyzw.xy*Tiling60_g12830 + Offset61_g12830) : (v.ase_texcoord.xy*Tiling60_g12830 + Offset61_g12830) ) ) ) ) + frac( appendResult11_g12952 ) );
				float2 vertexToFrag51_g12830 = temp_output_53_0_g12830;
				o.ase_texcoord13.zw = vertexToFrag51_g12830;
				
				o.ase_texcoord10.xy = v.ase_texcoord.xy;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexDiscard1197;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;
				

						o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				#if UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_TRANSFER_LIGHTING(o, v.texcoord1.xy);
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_TRANSFER_SHADOW(o, v.texcoord1.xy);
					#else
						TRANSFER_SHADOW(o);
					#endif
				#endif

				#ifdef ASE_FOG
					UNITY_TRANSFER_FOG(o,o.pos);
				#endif
				#if defined(ASE_NEEDS_FRAG_SCREEN_POSITION)
					o.screenPos = ComputeScreenPos(o.pos);
				#endif
				return o;
			}

			
		
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			

			fixed4 frag (v2f IN , bool ase_vface : SV_IsFrontFace
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
			
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif

				float2 vertexToFrag51_g12809 = IN.ase_texcoord9.xy;
				float4 temp_output_835_0 = ( _Color * tex2D( _MainTex, vertexToFrag51_g12809 ) );
				float3 temp_output_845_0 = (temp_output_835_0).rgb;
				float3 temp_cast_0 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_4_0_g12960 = mul( pow( mul( _DreamweaveColor01, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_0 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 temp_cast_1 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_5_0_g12960 = mul( pow( mul( _DreamweaveColor02, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_1 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 localCenterEye1_g12832 = CenterEye1_g12832();
				float3 normalizeResult5_g12832 = normalize( ( localCenterEye1_g12832 - worldPos ) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2210 = worldViewDir;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2210 = normalizeResult5_g12832;
				#else
				float3 staticSwitch2210 = worldViewDir;
				#endif
				float3 WorldView639 = staticSwitch2210;
				float3 normalizeResult59_g12960 = normalize( _DreamweaveAngle );
				float mulTime6_g12965 = _Time.y * _DreamweavePosSpeed;
				float DreamweaveSpeed80_g12960 = fmod( mulTime6_g12965 , 7200.0 );
				float2 vertexToFrag51_g12831 = IN.ase_texcoord9.zw;
				float3 NormalMap1174 = UnpackScaleNormal( tex2D( _BumpMap, vertexToFrag51_g12831 ), _BumpScale );
				float2 temp_output_2_0_g12963 = _DreamweaveDistortionSpeed;
				float mulTime7_g12963 = _Time.y * (temp_output_2_0_g12963).x;
				float mulTime10_g12963 = _Time.y * (temp_output_2_0_g12963).y;
				float2 appendResult11_g12963 = (float2(mulTime7_g12963 , mulTime10_g12963));
				float3 tanToWorld0 = float3( WorldTangent.x, WorldBiTangent.x, WorldNormal.x );
				float3 tanToWorld1 = float3( WorldTangent.y, WorldBiTangent.y, WorldNormal.y );
				float3 tanToWorld2 = float3( WorldTangent.z, WorldBiTangent.z, WorldNormal.z );
				float3 tanNormal56_g12960 = BlendNormals( NormalMap1174 , UnpackScaleNormal( tex2D( _DetailNormal, ( (IN.ase_texcoord10.xy*_DreamWeaveScale + _DreamWeaveOffset) + frac( appendResult11_g12963 ) ) ), _DreamweaveNormalScale ) );
				float3 worldNormal56_g12960 = float3( dot( tanToWorld0, tanNormal56_g12960 ), dot( tanToWorld1, tanNormal56_g12960 ), dot( tanToWorld2, tanNormal56_g12960 ) );
				float3 rotatedValue57_g12960 = RotateAroundAxis( float3( 0,0,0 ), worldNormal56_g12960, normalizeResult59_g12960, ( radians( _DreamweavePos ) + DreamweaveSpeed80_g12960 ) );
				float dotResult61_g12960 = dot( WorldView639 , rotatedValue57_g12960 );
				float temp_output_2_0_g12967 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - ( 21.0 - _DreamweaveSoftness ) ) * saturate( ( dotResult61_g12960 + _DreamweaveColorOffset ) ) ) , 2.0 ) );
				float temp_output_97_0_g12960 = temp_output_2_0_g12967;
				float3 lerpResult17_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , temp_output_97_0_g12960);
				float3 lerpResult85_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , ( 1.0 - temp_output_97_0_g12960 ));
				float temp_output_117_0_g12960 = saturate( _DreamweaveSwapSpeed );
				float mulTime6_g12966 = _Time.y * _DreamweaveSwapFrequency;
				float smoothstepResult84_g12960 = smoothstep( (0.0 + (temp_output_117_0_g12960 - 0.0) * (0.5 - 0.0) / (1.0 - 0.0)) , (0.5 + (( 1.0 - temp_output_117_0_g12960 ) - 0.0) * (1.0 - 0.5) / (1.0 - 0.0)) , saturate( (0.0 + (sin( fmod( mulTime6_g12966 , 7200.0 ) ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) ));
				float3 lerpResult87_g12960 = lerp( lerpResult17_g12960 , lerpResult85_g12960 , ( step( 0.0001 , _DreamweaveSwapFrequency ) * smoothstepResult84_g12960 ));
				float3 temp_output_2_0_g12964 = mul( lerpResult87_g12960, float3x3(1,1,1,0.3963378,-0.1055613,-0.08948418,0.2158038,-0.06385417,-1.291486) );
				float3 temp_output_18_0_g12960 = mul( ( temp_output_2_0_g12964 * temp_output_2_0_g12964 * temp_output_2_0_g12964 ), float3x3(4.076742,-1.268438,-0.004196086,-3.307712,2.609757,-0.7034186,0.2309699,-0.3413194,1.707615) );
				float3 temp_output_123_0_g12960 = frac( (worldPos*_DreamweaveGridTile + 0.0) );
				float2 appendResult10_g12968 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12968 = ( abs( ((temp_output_123_0_g12960).yz*2.0 + -1.0) ) - appendResult10_g12968 );
				float2 break16_g12968 = ( 1.0 - ( temp_output_11_0_g12968 / max( fwidth( temp_output_11_0_g12968 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult155_g12960 = dot( WorldNormal , float3( 1,0,0 ) );
				float temp_output_2_0_g12973 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult155_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12969 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12969 = ( abs( ((temp_output_123_0_g12960).xy*2.0 + -1.0) ) - appendResult10_g12969 );
				float2 break16_g12969 = ( 1.0 - ( temp_output_11_0_g12969 / max( fwidth( temp_output_11_0_g12969 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult170_g12960 = dot( WorldNormal , float3( 0,0,1 ) );
				float temp_output_2_0_g12971 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult170_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12970 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12970 = ( abs( ((temp_output_123_0_g12960).xz*2.0 + -1.0) ) - appendResult10_g12970 );
				float2 break16_g12970 = ( 1.0 - ( temp_output_11_0_g12970 / max( fwidth( temp_output_11_0_g12970 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult184_g12960 = dot( WorldNormal , float3( 0,1,0 ) );
				float temp_output_2_0_g12972 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult184_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float temp_output_175_0_g12960 = saturate( ( ( ( saturate( min( break16_g12968.x , break16_g12968.y ) ) * ( 1.0 - temp_output_2_0_g12973 ) ) + ( saturate( min( break16_g12969.x , break16_g12969.y ) ) * ( 1.0 - temp_output_2_0_g12971 ) ) + ( saturate( min( break16_g12970.x , break16_g12970.y ) ) * ( 1.0 - temp_output_2_0_g12972 ) ) ) * 3.0 ) );
				float3 lerpResult120_g12960 = lerp( saturate( ( temp_output_18_0_g12960 + 0.25 ) ) , temp_output_18_0_g12960 , temp_output_175_0_g12960);
				float2 vertexToFrag51_g12829 = IN.ase_texcoord10.zw;
				float2 temp_output_2110_0 = vertexToFrag51_g12829;
				float4 DetailNormalPacked1228 = tex2D( _DetailNormal, temp_output_2110_0 );
				float DetailNormalScale1838 = _BumpScale1;
				float DetailNormalChannel361_g12820 = _DetailNormalChannel;
				float DetailNormalMap360_g12820 = _DetailNormalMask;
				float4 temp_cast_3 = (1.0).xxxx;
				float2 vertexToFrag51_g12817 = IN.ase_texcoord11.xy;
				float4 MaskMap041244 = tex2D( _MaskMap04, vertexToFrag51_g12817 );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float2 vertexToFrag51_g12816 = IN.ase_texcoord11.zw;
				float4 MaskMap031239 = tex2D( _MaskMap03, vertexToFrag51_g12816 );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float2 vertexToFrag51_g12815 = IN.ase_texcoord12.xy;
				float4 MaskMap021234 = tex2D( _MaskMap02, vertexToFrag51_g12815 );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float2 vertexToFrag51_g12814 = IN.ase_texcoord12.zw;
				float4 MaskMap011220 = tex2D( _MaskMap01, vertexToFrag51_g12814 );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 DetailNormalRGBA363_g12820 = ( 4.0 == DetailNormalMap360_g12820 ? temp_cast_3 : ( 3.0 == DetailNormalMap360_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DetailNormalMap360_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DetailNormalMap360_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DetailNormalMask1426 = ( 3.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).a : ( 2.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).b : ( 1.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).g : (DetailNormalRGBA363_g12820).r ) ) );
				float3 lerpResult1472 = lerp( NormalMap1174 , BlendNormals( NormalMap1174 , UnpackScaleNormal( DetailNormalPacked1228, DetailNormalScale1838 ) ) , DetailNormalMask1426);
				float3 TangentNormal1479 = lerpResult1472;
				float2 temp_output_2069_0 = (TangentNormal1479).xy;
				float temp_output_2070_0 = (TangentNormal1479).z;
				float3 appendResult2073 = (float3(temp_output_2069_0 , temp_output_2070_0));
				float3 appendResult2074 = (float3(temp_output_2069_0 , -temp_output_2070_0));
				float3 switchResult2071 = (((ase_vface>0)?(appendResult2073):(appendResult2074)));
				float3 tanNormal600 = switchResult2071;
				float3 worldNormal600 = normalize( float3( dot( tanToWorld0, tanNormal600 ), dot( tanToWorld1, tanNormal600 ), dot( tanToWorld2, tanNormal600 ) ) );
				float3 WorldNorm601 = worldNormal600;
				float Workflow1249 = _Workflow;
				float OcclusionChannel1295_g12820 = _OcclusionChannel;
				float OcclusionMap1292_g12820 = _OcclusionMap;
				float4 temp_cast_4 = (1.0).xxxx;
				float4 Occlusion1RGBA301_g12820 = ( 4.0 == OcclusionMap1292_g12820 ? temp_cast_4 : ( 3.0 == OcclusionMap1292_g12820 ? MM04RGBA8_g12820 : ( 2.0 == OcclusionMap1292_g12820 ? MM03RGBA7_g12820 : ( 1.0 == OcclusionMap1292_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float OcclusionMapUnpacked1312 = ( 3.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).a : ( 2.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).b : ( 1.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).g : (Occlusion1RGBA301_g12820).r ) ) );
				float lerpResult1311 = lerp( 1.0 , ( 1.0 <= Workflow1249 ? OcclusionMapUnpacked1312 : (MaskMap011220).g ) , _OcclusionPower);
				float Occlusion1309 = lerpResult1311;
				UnityGIInput data;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data );
				data.worldPos = worldPos;
				data.worldViewDir = worldViewDir;
				data.probeHDR[0] = unity_SpecCube0_HDR;
				data.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION //specdataif0
				data.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif //specdataif0
				#if UNITY_SPECCUBE_BOX_PROJECTION //specdataif1
				data.boxMax[0] = unity_SpecCube0_BoxMax;
				data.probePosition[0] = unity_SpecCube0_ProbePosition;
				data.boxMax[1] = unity_SpecCube1_BoxMax;
				data.boxMin[1] = unity_SpecCube1_BoxMin;
				data.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif //specdataif1
				Unity_GlossyEnvironmentData g2463 = UnityGlossyEnvironmentSetup( 0.4, worldViewDir, WorldNorm601, float3(0,0,0));
				float3 indirectSpecular2463 = UnityGI_IndirectSpecular( data, Occlusion1309, WorldNorm601, g2463 );
				float3 lerpResult2500 = lerp( float3( 0.5,0.5,0.5 ) , indirectSpecular2463 , 0.5);
				float dotResult2389 = dot( WorldNorm601 , WorldView639 );
				float temp_output_2_0_g12833 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( dotResult2389 - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float smoothstepResult2413 = smoothstep( 0.65 , 0.655 , dotResult2389);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2412 = smoothstepResult2413;
				#else
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#endif
				float3 lerpResult2498 = lerp( lerpResult2500 , float3( 1.1,1.1,1.1 ) , staticSwitch2412);
				float3 Dreamweave1920 = ( lerpResult120_g12960 * lerpResult2498 );
				float DreamweaveChannel573_g12820 = _DreamweaveChannel;
				float DreamweaveMap572_g12820 = _DreamweaveMask;
				float4 temp_cast_5 = (1.0).xxxx;
				float4 DreamweaveRGBA574_g12820 = ( 4.0 == DreamweaveMap572_g12820 ? temp_cast_5 : ( 3.0 == DreamweaveMap572_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DreamweaveMap572_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DreamweaveMap572_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DreamweaveMask1790 = ( 3.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).a : ( 2.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).b : ( 1.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).g : (DreamweaveRGBA574_g12820).r ) ) );
				float3 lerpResult1918 = lerp( temp_output_845_0 , Dreamweave1920 , DreamweaveMask1790);
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch1780 = lerpResult1918;
				#else
				float3 staticSwitch1780 = temp_output_845_0;
				#endif
				float mulTime6_g12980 = _Time.y * _RainbowSpeed;
				float temp_output_100_0_g12974 = fmod( mulTime6_g12980 , 7200.0 );
				float EmissionGlowAnimation67_g12974 = ( _Float1 * temp_output_100_0_g12974 );
				float2 texCoord1_g12974 = IN.ase_texcoord10.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_53_0_g12974 = radians( _RainbowRotation );
				float cos45_g12974 = cos( temp_output_53_0_g12974 );
				float sin45_g12974 = sin( temp_output_53_0_g12974 );
				float2 rotator45_g12974 = mul( texCoord1_g12974 - float2( 0.5,0.5 ) , float2x2( cos45_g12974 , -sin45_g12974 , sin45_g12974 , cos45_g12974 )) + float2( 0.5,0.5 );
				float2 temp_output_34_0_g12975 = ( texCoord1_g12974 - _RainbowRadialCenter );
				float2 break39_g12975 = temp_output_34_0_g12975;
				float2 appendResult50_g12975 = (float2(( _RainbowSpiralCurve * ( length( temp_output_34_0_g12975 ) * 2.0 ) ) , ( ( atan2( break39_g12975.x , break39_g12975.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float2 break50_g12974 = appendResult50_g12975;
				float lerpResult49_g12974 = lerp( rotator45_g12974.x , break50_g12974.x , (float)saturate( _RainbowUVMode ));
				int temp_output_60_0_g12974 = ( _RainbowUVMode - 1 );
				float lerpResult63_g12974 = lerp( lerpResult49_g12974 , ( break50_g12974.x + ( break50_g12974.y * ( 2.0 * UNITY_PI ) ) ) , (float)saturate( temp_output_60_0_g12974 ));
				float2 vertexToFrag51_g12986 = IN.ase_texcoord13.xy;
				float Direction27_g12985 = tex2D( _DirectionalMap, vertexToFrag51_g12986 ).r;
				float temp_output_85_0_g12974 = Direction27_g12985;
				int temp_output_81_0_g12974 = ( temp_output_60_0_g12974 - 1 );
				float lerpResult79_g12974 = lerp( lerpResult63_g12974 , temp_output_85_0_g12974 , (float)saturate( temp_output_81_0_g12974 ));
				int temp_output_83_0_g12974 = ( temp_output_81_0_g12974 - 1 );
				float lerpResult80_g12974 = lerp( lerpResult79_g12974 , ( 1.0 - temp_output_85_0_g12974 ) , (float)saturate( temp_output_83_0_g12974 ));
				float3 rotatedValue134_g12974 = RotateAroundAxis( float3( 0,0,0 ), worldPos, float3( 0,0,1 ), temp_output_53_0_g12974 );
				float lerpResult131_g12974 = lerp( lerpResult80_g12974 , (rotatedValue134_g12974).y , (float)saturate( ( temp_output_83_0_g12974 - 1 ) ));
				float temp_output_24_0_g12974 = ( ( 1.0 - _RainbowHueRange ) * 0.5 );
				float3 hsvTorgb3_g12974 = HSVToRGB( float3(( (temp_output_24_0_g12974 + (sin( ( EmissionGlowAnimation67_g12974 + ( lerpResult131_g12974 * _RainbowScale ) ) ) - -1.0) * (( 1.0 - temp_output_24_0_g12974 ) - temp_output_24_0_g12974) / (1.0 - -1.0)) + _RainbowHue ),_RainbowSaturation,_RainbowValue) );
				float3 Rainbow2089 = hsvTorgb3_g12974;
				float RainbowChannel704_g12820 = _RainbowChannel;
				float RainbowMap703_g12820 = _RainbowMask;
				float4 temp_cast_11 = (0.0).xxxx;
				float4 temp_cast_12 = (1.0).xxxx;
				float4 RainbowRGBA705_g12820 = ( 5.0 == RainbowMap703_g12820 ? temp_cast_11 : ( 4.0 == RainbowMap703_g12820 ? temp_cast_12 : ( 3.0 == RainbowMap703_g12820 ? MM04RGBA8_g12820 : ( 2.0 == RainbowMap703_g12820 ? MM03RGBA7_g12820 : ( 1.0 == RainbowMap703_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) ) );
				float RainbowMask2094 = ( 3.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).a : ( 2.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).b : ( 1.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).g : (RainbowRGBA705_g12820).r ) ) );
				float3 lerpResult2095 = lerp( staticSwitch1780 , Rainbow2089 , RainbowMask2094);
				#ifdef _RAINBOW_ON
				float3 staticSwitch2098 = lerpResult2095;
				#else
				float3 staticSwitch2098 = staticSwitch1780;
				#endif
				float EmissionMaskChannel395_g12820 = _EmissionMaskChannel;
				float EmissionMaskMap394_g12820 = _EmissionMaskMap;
				float4 temp_cast_13 = (1.0).xxxx;
				float4 EmissionMaskRGBA396_g12820 = ( 4.0 == EmissionMaskMap394_g12820 ? temp_cast_13 : ( 3.0 == EmissionMaskMap394_g12820 ? MM04RGBA8_g12820 : ( 2.0 == EmissionMaskMap394_g12820 ? MM03RGBA7_g12820 : ( 1.0 == EmissionMaskMap394_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float EmissionMask1427 = ( 3.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).a : ( 2.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).b : ( 1.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).g : (EmissionMaskRGBA396_g12820).r ) ) );
				float2 vertexToFrag51_g12830 = IN.ase_texcoord13.zw;
				float3 EmissionColor849 = ( _EmissionColor * tex2D( _EmissionMap, vertexToFrag51_g12830 ).rgb );
				float3 temp_output_1514_0 = ( EmissionMask1427 * EmissionColor849 );
				float3 lerpResult1512 = lerp( staticSwitch2098 , ( ( staticSwitch2098 - temp_output_1514_0 ) + temp_output_1514_0 ) , ( _ReplaceBaseColor * EmissionMask1427 ));
				float3 MainTexMultiplied1688 = temp_output_845_0;
				float3 lerpResult54_g13099 = lerp( _StarshineColor , MainTexMultiplied1688 , _StarshineBaseColor);
				float SpecularTintMap2236 = _SpecularTintMap;
				float3 BaseColorB4Starshine2227 = lerpResult1512;
				float3 temp_cast_14 = (1.0).xxx;
				float3 SpecularTintUnpacked1444 = ( 5.0 == SpecularTintMap2236 ? BaseColorB4Starshine2227 : ( 4.0 == SpecularTintMap2236 ? temp_cast_14 : ( 3.0 == SpecularTintMap2236 ? (MaskMap041244).rgb : ( 2.0 == SpecularTintMap2236 ? (MaskMap031239).rgb : ( 1.0 == SpecularTintMap2236 ? (MaskMap021234).rgb : (MaskMap011220).rgb ) ) ) ) );
				float3 temp_cast_15 = (1.0).xxx;
				float3 SpecularTint1463 = ( _SpecularTint * ( 2.0 == Workflow1249 ? SpecularTintUnpacked1444 : ( 1.0 == Workflow1249 ? temp_cast_15 : (MaskMap011220).rgb ) ) );
				float3 temp_output_69_0_g13099 = ( lerpResult54_g13099 * SpecularTint1463 );
				float3 temp_output_28_0_g13099 = ( (1.0 + (_StarshineMetallic - 0.0) * (0.1 - 1.0) / (1.0 - 0.0)) * temp_output_69_0_g13099 );
				float3 StartColor64_g13099 = temp_output_28_0_g13099;
				float3 StarshineAlbedo1655 = StartColor64_g13099;
				float StarshineChannel541_g12820 = _StarshineChannel;
				float StarshineMap540_g12820 = _StarshineMask;
				float4 temp_cast_16 = (1.0).xxxx;
				float4 StarshineRGBA544_g12820 = ( 4.0 == StarshineMap540_g12820 ? temp_cast_16 : ( 3.0 == StarshineMap540_g12820 ? MM04RGBA8_g12820 : ( 2.0 == StarshineMap540_g12820 ? MM03RGBA7_g12820 : ( 1.0 == StarshineMap540_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float StarshineMask1660 = ( 3.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).a : ( 2.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).b : ( 1.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).g : (StarshineRGBA544_g12820).r ) ) );
				float3 lerpResult1663 = lerp( lerpResult1512 , StarshineAlbedo1655 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float3 staticSwitch1765 = lerpResult1663;
				#else
				float3 staticSwitch1765 = lerpResult1512;
				#endif
				float3 AttenBaseColor2057 = staticSwitch1765;
				float temp_output_514_0 = (float4(atten,0,0,0)).x;
				float smoothstepResult1087 = smoothstep( 0.15 , 0.151 , temp_output_514_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2026 = temp_output_514_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2026 = smoothstepResult1087;
				#else
				float staticSwitch2026 = temp_output_514_0;
				#endif
				#if defined(LIGHTMAP_ON) && ( UNITY_VERSION < 560 || ( defined(LIGHTMAP_SHADOW_MIXING) && !defined(SHADOWS_SHADOWMASK) && defined(SHADOWS_SCREEN) ) )//aselc
				float4 ase_lightColor = 0;
				#else //aselc
				float4 ase_lightColor = _LightColor0;
				#endif //aselc
				float3 PixelLightsAdd1034 = ( staticSwitch2026 * ase_lightColor.rgb );
				int localLightExists8_g12826 = LightExists8_g12826();
				float3 break1_g12826 = ase_lightColor.rgb;
				float smoothstepResult14_g12826 = smoothstep( 0.0 , 0.15 , saturate( max( max( break1_g12826.x , break1_g12826.y ) , break1_g12826.z ) ));
				#ifdef UNITY_PASS_FORWARDBASE
				float staticSwitch7_g12826 = smoothstepResult14_g12826;
				#else
				float staticSwitch7_g12826 = 1.0;
				#endif
				float DetectLight1057 = ( localLightExists8_g12826 * staticSwitch7_g12826 );
				float3 normalizeResult1170 = normalize( float3(-0.05,1,0) );
				float3 rotatedValue1169 = RotateAroundAxis( float3( 0,0,0 ), worldNormal600, normalizeResult1170, radians( 65.0 ) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2068 = worldNormal600;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2068 = ( DetectLight1057 < 0.9 ? rotatedValue1169 : worldNormal600 );
				#else
				float3 staticSwitch2068 = worldNormal600;
				#endif
				float3 WorldNormToon2194 = staticSwitch2068;
				float3 worldSpaceLightDir = UnityWorldSpaceLightDir( worldPos );
				float3 LightDirAdd1077 = worldSpaceLightDir;
				float dotResult1066 = dot( WorldNormToon2194 , LightDirAdd1077 );
				float temp_output_1067_0 = max( dotResult1066 , 0.0 );
				float smoothstepResult1086 = smoothstep( 0.0 , 0.01 , temp_output_1067_0);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2025 = temp_output_1067_0;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2025 = smoothstepResult1086;
				#else
				float staticSwitch2025 = temp_output_1067_0;
				#endif
				float NdotLAdd1068 = staticSwitch2025;
				float3 AddPassLight618 = ( PixelLightsAdd1034 * NdotLAdd1068 * 0.9 );
				float SpecularMaskChannel473_g12820 = _SpecularMaskChannel;
				float SpecularMaskMap472_g12820 = _SpecularMask;
				float4 temp_cast_17 = (1.0).xxxx;
				float4 SpecularMaskRGBA474_g12820 = ( 4.0 == SpecularMaskMap472_g12820 ? temp_cast_17 : ( 3.0 == SpecularMaskMap472_g12820 ? MM04RGBA8_g12820 : ( 2.0 == SpecularMaskMap472_g12820 ? MM03RGBA7_g12820 : ( 1.0 == SpecularMaskMap472_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float SpecularMask1441 = ( 3.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).a : ( 2.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).b : ( 1.0 == SpecularMaskChannel473_g12820 ? (SpecularMaskRGBA474_g12820).g : (SpecularMaskRGBA474_g12820).r ) ) );
				float3 temp_output_317_0_g12930 = WorldNorm601;
				float3 WorldNormal360_g12930 = temp_output_317_0_g12930;
				float3 normalDir363_g12930 = WorldNormal360_g12930;
				float3 WorldViewStereo2211 = worldViewDir;
				float3 viewDir15_g12930 = WorldViewStereo2211;
				float dotResult56_g12930 = dot( normalDir363_g12930 , viewDir15_g12930 );
				float NdotV55_g12930 = max( dotResult56_g12930 , 0.0 );
				float GlossChannel135_g12820 = _GlossChannel;
				float GlossMap136_g12820 = _GlossMap;
				float4 temp_cast_18 = (1.0).xxxx;
				float4 GlossRGBA119_g12820 = ( 4.0 == GlossMap136_g12820 ? temp_cast_18 : ( 3.0 == GlossMap136_g12820 ? MM04RGBA8_g12820 : ( 2.0 == GlossMap136_g12820 ? MM03RGBA7_g12820 : ( 1.0 == GlossMap136_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_127_0_g12820 = ( 3.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).a : ( 2.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).b : ( 1.0 == GlossChannel135_g12820 ? (GlossRGBA119_g12820).g : (GlossRGBA119_g12820).r ) ) );
				float GlossMapUnpacked1274 = temp_output_127_0_g12820;
				float temp_output_1285_0 = ( 2.0 == Workflow1249 ? GlossMapUnpacked1274 : (MaskMap011220).a );
				float lerpResult1282 = lerp( temp_output_1285_0 , ( 1.0 - temp_output_1285_0 ) , _InvertGloss);
				float temp_output_647_0 = ( lerpResult1282 * _GlossMult );
				float lerpResult1673 = lerp( temp_output_647_0 , 1.0 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float staticSwitch1778 = lerpResult1673;
				#else
				float staticSwitch1778 = temp_output_647_0;
				#endif
				float Smoothness_650 = staticSwitch1778;
				float temp_output_147_0_g12930 = Smoothness_650;
				float smoothness169_g12930 = temp_output_147_0_g12930;
				float temp_output_149_0_g12930 = ( 1.0 - smoothness169_g12930 );
				float perceprualRoughness188_g12930 = ( temp_output_149_0_g12930 * temp_output_149_0_g12930 );
				half Roughness64_g12930 = max( perceprualRoughness188_g12930 , 0.0001 );
				float NdotL20_g12930 = NdotLAdd1068;
				half SmithJointGGXVisibilityTerm42_g12930 = ( 0.5 / ( ( ( ( NdotV55_g12930 * ( 1.0 - Roughness64_g12930 ) ) + Roughness64_g12930 ) * NdotL20_g12930 ) + 1E-05 + ( NdotV55_g12930 * ( Roughness64_g12930 + ( ( 1.0 - Roughness64_g12930 ) * NdotL20_g12930 ) ) ) ) );
				#if ( SHADER_TARGET >= 50 )
				float recip707_g12933 = rcp( UNITY_PI );
				#else
				float recip707_g12933 = 1.0 / UNITY_PI;
				#endif
				float temp_output_705_0_g12933 = perceprualRoughness188_g12930;
				float3 normalDirToon28_g12930 = temp_output_317_0_g12930;
				float3 lightDir14_g12930 = LightDirAdd1077;
				float3 normalizeResult87_g12930 = ASESafeNormalize( ( lightDir14_g12930 + viewDir15_g12930 ) );
				float dotResult88_g12930 = dot( normalDirToon28_g12930 , normalizeResult87_g12930 );
				float NdotH90_g12930 = max( dotResult88_g12930 , 0.0 );
				float temp_output_670_0_g12933 = ( NdotH90_g12930 * NdotH90_g12930 );
				float temp_output_666_0_g12933 = ( max( temp_output_705_0_g12933 , 0.002 ) / ( temp_output_670_0_g12933 * ( ( ( 1.0 - temp_output_670_0_g12933 ) / temp_output_670_0_g12933 ) + ( temp_output_705_0_g12933 * temp_output_705_0_g12933 ) ) ) );
				half GGXTerm43_g12930 = ( recip707_g12933 * ( temp_output_666_0_g12933 * temp_output_666_0_g12933 ) );
				float temp_output_36_0_g12930 = ( SmithJointGGXVisibilityTerm42_g12930 * GGXTerm43_g12930 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g12930 = sqrt( max( 0.0001 , temp_output_36_0_g12930 ) );
				#else
				float staticSwitch5_g12930 = temp_output_36_0_g12930;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g12930 = 0.0;
				#else
				float staticSwitch119_g12930 = max( 0.0 , ( staticSwitch5_g12930 * NdotL20_g12930 ) );
				#endif
				float3 temp_cast_19 = (0.04).xxx;
				float MetallicChannel54_g12820 = _MetallicChannel;
				float MetallicMap46_g12820 = _MetallicMask;
				float4 temp_cast_20 = (1.0).xxxx;
				float4 MetallicRGBA62_g12820 = ( 4.0 == MetallicMap46_g12820 ? temp_cast_20 : ( 3.0 == MetallicMap46_g12820 ? MM04RGBA8_g12820 : ( 2.0 == MetallicMap46_g12820 ? MM03RGBA7_g12820 : ( 1.0 == MetallicMap46_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float MetallicMapUnpacked1265 = ( 3.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).a : ( 2.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).b : ( 1.0 == MetallicChannel54_g12820 ? (MetallicRGBA62_g12820).g : (MetallicRGBA62_g12820).r ) ) );
				float temp_output_840_0 = ( ( 2.0 == Workflow1249 ? MetallicMapUnpacked1265 : ( 1.0 == Workflow1249 ? 0.0 : (MaskMap011220).r ) ) * _MetallicMult );
				float StarshineMetallic1691 = _StarshineMetallic;
				float lerpResult1676 = lerp( temp_output_840_0 , StarshineMetallic1691 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float staticSwitch1768 = lerpResult1676;
				#else
				float staticSwitch1768 = temp_output_840_0;
				#endif
				float lerpResult2404 = lerp( staticSwitch1768 , 0.65 , DreamweaveMask1790);
				#ifdef _DREAMWEAVE_ON
				float staticSwitch2406 = lerpResult2404;
				#else
				float staticSwitch2406 = staticSwitch1768;
				#endif
				float Metallic839 = staticSwitch2406;
				float temp_output_2872_0 = saturate( (0.0 + (Metallic839 - 0.0) * (1.0 - 0.0) / (0.85 - 0.0)) );
				float3 lerpResult2848 = lerp( temp_cast_19 , AttenBaseColor2057 , temp_output_2872_0);
				float3 temp_output_2067_0 = ( lerpResult2848 * SpecularTint1463 );
				float3 SpecColor140_g12930 = temp_output_2067_0;
				float SpecularTerm34_g12930 = min( ( staticSwitch119_g12930 * ( SpecColor140_g12930.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) ) , 32.0 );
				float3 normalizeResult136_g12930 = ASESafeNormalize( ( lightDir14_g12930 + viewDir15_g12930 ) );
				float dotResult137_g12930 = dot( lightDir14_g12930 , normalizeResult136_g12930 );
				float LdotH139_g12930 = saturate( dotResult137_g12930 );
				half3 FresnelTerm130_g12930 = ( ( pow( ( 1.0 - LdotH139_g12930 ) , 5.0 ) * ( 1.0 - SpecColor140_g12930 ) ) + SpecColor140_g12930 );
				float3 temp_output_144_0_g12930 = ( SpecularTerm34_g12930 * FresnelTerm130_g12930 );
				float3 temp_output_317_0_g12923 = WorldNorm601;
				float3 WorldNormal360_g12923 = temp_output_317_0_g12923;
				float3 normalDir363_g12923 = WorldNormal360_g12923;
				float3 viewDir15_g12923 = WorldViewStereo2211;
				float dotResult56_g12923 = dot( normalDir363_g12923 , viewDir15_g12923 );
				float NdotV55_g12923 = max( dotResult56_g12923 , 0.0 );
				float temp_output_147_0_g12923 = Smoothness_650;
				float smoothness169_g12923 = temp_output_147_0_g12923;
				float temp_output_149_0_g12923 = ( 1.0 - smoothness169_g12923 );
				float perceprualRoughness188_g12923 = ( temp_output_149_0_g12923 * temp_output_149_0_g12923 );
				half Roughness64_g12923 = max( perceprualRoughness188_g12923 , 0.0001 );
				float NdotL20_g12923 = NdotLAdd1068;
				half SmithJointGGXVisibilityTerm42_g12923 = ( 0.5 / ( ( ( ( NdotV55_g12923 * ( 1.0 - Roughness64_g12923 ) ) + Roughness64_g12923 ) * NdotL20_g12923 ) + 1E-05 + ( NdotV55_g12923 * ( Roughness64_g12923 + ( ( 1.0 - Roughness64_g12923 ) * NdotL20_g12923 ) ) ) ) );
				float3 normalDirToon28_g12923 = WorldNormToon2194;
				float3 lightDir14_g12923 = LightDirAdd1077;
				float3 normalizeResult87_g12923 = ASESafeNormalize( ( lightDir14_g12923 + WorldView639 ) );
				float dotResult88_g12923 = dot( normalDirToon28_g12923 , normalizeResult87_g12923 );
				float NdotH90_g12923 = max( dotResult88_g12923 , 0.0 );
				float saferPower337_g12923 = abs( NdotH90_g12923 );
				float temp_output_349_0_g12923 = ( smoothness169_g12923 * smoothness169_g12923 * smoothness169_g12923 * smoothness169_g12923 * smoothness169_g12923 * smoothness169_g12923 );
				float smoothstepResult345_g12923 = smoothstep( 0.001 , 0.002 , pow( saferPower337_g12923 , (1.0 + (temp_output_349_0_g12923 - 0.0) * (2048.0 - 1.0) / (1.0 - 0.0)) ));
				half GGXTerm43_g12923 = ( smoothstepResult345_g12923 * (0.0 + (temp_output_349_0_g12923 - 0.0) * (32.0 - 0.0) / (1.0 - 0.0)) * 2.0 );
				float temp_output_36_0_g12923 = ( SmithJointGGXVisibilityTerm42_g12923 * GGXTerm43_g12923 * UNITY_PI );
				#ifdef UNITY_COLORSPACE_GAMMA
				float staticSwitch5_g12923 = sqrt( max( 0.0001 , temp_output_36_0_g12923 ) );
				#else
				float staticSwitch5_g12923 = temp_output_36_0_g12923;
				#endif
				#ifdef _SPECULARHIGHLIGHTS_OFF
				float staticSwitch119_g12923 = 0.0;
				#else
				float staticSwitch119_g12923 = max( 0.0 , ( staticSwitch5_g12923 * NdotL20_g12923 ) );
				#endif
				float3 SpecColor140_g12923 = temp_output_2067_0;
				float SpecularTerm34_g12923 = min( ( staticSwitch119_g12923 * ( SpecColor140_g12923.x == float3( 0,0,0 ) ? 0.0 : 1.0 ) ) , 32.0 );
				float3 normalizeResult136_g12923 = ASESafeNormalize( ( lightDir14_g12923 + viewDir15_g12923 ) );
				float dotResult137_g12923 = dot( lightDir14_g12923 , normalizeResult136_g12923 );
				float LdotH139_g12923 = saturate( dotResult137_g12923 );
				half3 FresnelTerm130_g12923 = ( ( pow( ( 1.0 - LdotH139_g12923 ) , 5.0 ) * ( 1.0 - SpecColor140_g12923 ) ) + SpecColor140_g12923 );
				float3 temp_output_144_0_g12923 = ( SpecularTerm34_g12923 * FresnelTerm130_g12923 );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2046 = temp_output_144_0_g12930;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2046 = temp_output_144_0_g12923;
				#else
				float3 staticSwitch2046 = temp_output_144_0_g12930;
				#endif
				float3 SpecularAdd1079 = ( SpecularMask1441 * staticSwitch2046 );
				#if ( SHADER_TARGET >= 50 )
				float recip707_g12921 = rcp( UNITY_PI );
				#else
				float recip707_g12921 = 1.0 / UNITY_PI;
				#endif
				float temp_output_705_0_g12921 = ( 1.0 - -1.5 );
				float dotResult2268 = dot( WorldNorm601 , WorldView639 );
				float temp_output_670_0_g12921 = ( max( dotResult2268 , 0.0001 ) * max( dotResult2268 , 0.0001 ) );
				float temp_output_666_0_g12921 = ( max( temp_output_705_0_g12921 , 0.002 ) / ( temp_output_670_0_g12921 * ( ( ( 1.0 - temp_output_670_0_g12921 ) / temp_output_670_0_g12921 ) + ( temp_output_705_0_g12921 * temp_output_705_0_g12921 ) ) ) );
				float temp_output_2335_0 = max( ( recip707_g12921 * ( temp_output_666_0_g12921 * temp_output_666_0_g12921 ) ) , 0.0 );
				float3 temp_output_2566_0 = ( temp_output_2335_0 * AttenBaseColor2057 * AddPassLight618 * DreamweaveMask1790 );
				#ifdef _FABRICLIGHT_ON
				float3 staticSwitch2578 = float3( 0,0,0 );
				#else
				float3 staticSwitch2578 = temp_output_2566_0;
				#endif
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch2569 = staticSwitch2578;
				#else
				float3 staticSwitch2569 = float3( 0,0,0 );
				#endif
				float FabricLightChannel783_g12820 = _FabricLightChannel;
				float FabricLightMap782_g12820 = _FabricLightMap;
				float4 temp_cast_23 = (1.0).xxxx;
				float4 temp_output_786_0_g12820 = ( 4.0 == FabricLightMap782_g12820 ? temp_cast_23 : ( 3.0 == FabricLightMap782_g12820 ? MM04RGBA8_g12820 : ( 2.0 == FabricLightMap782_g12820 ? MM03RGBA7_g12820 : ( 1.0 == FabricLightMap782_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float4 FabricLightRGBA784_g12820 = temp_output_786_0_g12820;
				float FabricLightMask2574 = ( 3.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).a : ( 2.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).b : ( 1.0 == FabricLightChannel783_g12820 ? (FabricLightRGBA784_g12820).g : (FabricLightRGBA784_g12820).r ) ) );
				#ifdef _FABRICLIGHT_ON
				float3 staticSwitch2577 = ( temp_output_2566_0 * FabricLightMask2574 );
				#else
				float3 staticSwitch2577 = float3( 0,0,0 );
				#endif
				
				float AlphaMap671_g12820 = _OpacityMap;
				float Alpha847 = (temp_output_835_0).a;
				float temp_output_678_0_g12820 = Alpha847;
				float AlphaChannel670_g12820 = _OpacityChannel;
				float4 temp_cast_24 = (1.0).xxxx;
				float4 AlphaRGBA657_g12820 = ( 4.0 == AlphaMap671_g12820 ? temp_cast_24 : ( 3.0 == AlphaMap671_g12820 ? MM04RGBA8_g12820 : ( 2.0 == AlphaMap671_g12820 ? MM03RGBA7_g12820 : ( 1.0 == AlphaMap671_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_2995_674 = ( 5.0 == AlphaMap671_g12820 ? temp_output_678_0_g12820 : ( 3.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).a : ( 2.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).b : ( 1.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).g : (AlphaRGBA657_g12820).r ) ) ) );
				#if defined( _ALPHATEST_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _BLEND_OFF )
				float staticSwitch2920 = 1.0;
				#else
				float staticSwitch2920 = temp_output_2995_674;
				#endif
				float AlphaUnpacked2081 = staticSwitch2920;
				
				#if defined( _ALPHATEST_ON )
				float staticSwitch2905 = _MaskClipValue;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2905 = 0.0001;
				#elif defined( _BLEND_OFF )
				float staticSwitch2905 = -0.1;
				#else
				float staticSwitch2905 = 0.0001;
				#endif
				float AlphaClip1179 = staticSwitch2905;
				
				float3 Color = ( ( AttenBaseColor2057 * AddPassLight618 ) + ( SpecularAdd1079 * PixelLightsAdd1034 ) + staticSwitch2569 + staticSwitch2577 );
				float Alpha = AlphaUnpacked2081;
				float AlphaClipThreshold = AlphaClip1179;

				float4 c = float4( Color, Alpha );

				#ifdef _ALPHATEST_ON
					clip( Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
			}

			
		Pass
		{
			Name "Outline"
			Tags { "Queue"="Transparent+1" }
			CGINCLUDE
			#pragma target 3.0
			ENDCG
			Blend [_SourceBlendRGB] [_DestinationBlendRGB]
			AlphaToMask Off
			Cull Off
			ColorMask RGBA
			ZWrite On
			ZTest LEqual
			Stencil
			{
				Ref [_StencilReference]
				Comp NotEqual
				Pass Keep
			}
			CGPROGRAM
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_VERSION 19801

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			#include "UnityShaderVariables.cginc"
			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _LIGHTINGSTYLE_STANDARD _LIGHTINGSTYLE_TOON
			#pragma shader_feature _ALPHAPREMULTIPLY_ON
			#pragma shader_feature_local _OUTLINE1_ON
			#pragma shader_feature_local _RAINBOW_ON
			#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;
				float3 ase_normal : NORMAL;
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
			};

			uniform float _OutlineChannel;
			uniform float _OutlineMask;
			uniform float _DreamweaveMask;
			uniform float _DreamweaveChannel;
			uniform float _StarshellChannel;
			uniform float _StarshellMask;
			uniform float _StardustHeightMap;
			uniform float _StardustHeightCh;
			uniform float _RainbowChannel;
			uniform float _RainbowMask;
			uniform float _FabricLightChannel;
			uniform float _FabricLightMap;
			uniform float _ConstellationChannel;
			uniform float _ConstellationMask;
			uniform float _BlendModeIndex;
			uniform float _Culling;
			uniform float _BlendOPsrc;
			uniform float _BlendOPdst;
			uniform float _BlendOPIndex;
			uniform float _ShowMaps;
			uniform float _ShowLighting;
			uniform float _ShowEmission;
			uniform float _ShowEmission01;
			uniform float _ShowEmissionMain;
			uniform float _ShowEmission02;
			uniform float _ShowEmission03;
			uniform float _ShowEmission04;
			uniform float _ShowTileDiscard;
			uniform float _ShowEffects;
			uniform float _ShowStarshine;
			uniform float _ShowDreamweave;
			uniform float _ShowOutline;
			uniform float _ShowStarshell;
			uniform float _ZWrite;
			uniform float _BlendOpRGB;
			uniform float _StencilReference;
			uniform float3 _FavoriteColor;
			uniform float _DestinationBlendRGB;
			uniform float _SourceBlendRGB;
			uniform float _ShowRainbow;
			uniform float _ShowRedGlow;
			uniform float _ShowRedAL;
			uniform float _ShowEmissGlow;
			uniform float _ShowEmissAL;
			uniform float _ShowGreenGlow;
			uniform float _ShowGreenAL;
			uniform float _ShowBlueGlow;
			uniform float _ShowBlueAL;
			uniform float _ShowAlphaGlow;
			uniform float _ShowAlphaAL;
			uniform float _ShowMain;
			uniform float _ShowConstellation;
			uniform float _StardustZwrite;
			uniform float _TileDiscardUV;
			uniform float _UVTileDissolveAlpha_Row0_0;
			uniform float _UDIMDiscardRow0_0;
			uniform float _UVTileDissolveAlpha_Row0_1;
			uniform float _UDIMDiscardRow0_1;
			uniform float _UVTileDissolveAlpha_Row0_2;
			uniform float _UDIMDiscardRow0_2;
			uniform float _UVTileDissolveAlpha_Row0_3;
			uniform float _UDIMDiscardRow0_3;
			uniform float _UVTileDissolveAlpha_Row1_0;
			uniform float _UDIMDiscardRow1_0;
			uniform float _UVTileDissolveAlpha_Row1_1;
			uniform float _UDIMDiscardRow1_1;
			uniform float _UVTileDissolveAlpha_Row1_2;
			uniform float _UDIMDiscardRow1_2;
			uniform float _UVTileDissolveAlpha_Row1_3;
			uniform float _UDIMDiscardRow1_3;
			uniform float _UVTileDissolveAlpha_Row2_0;
			uniform float _UDIMDiscardRow2_0;
			uniform float _UVTileDissolveAlpha_Row2_1;
			uniform float _UDIMDiscardRow2_1;
			uniform float _UVTileDissolveAlpha_Row2_2;
			uniform float _UDIMDiscardRow2_2;
			uniform float _UVTileDissolveAlpha_Row2_3;
			uniform float _UDIMDiscardRow2_3;
			uniform float _UVTileDissolveAlpha_Row3_0;
			uniform float _UDIMDiscardRow3_0;
			uniform float _UVTileDissolveAlpha_Row3_1;
			uniform float _UDIMDiscardRow3_1;
			uniform float _UVTileDissolveAlpha_Row3_2;
			uniform float _UDIMDiscardRow3_2;
			uniform float _UVTileDissolveAlpha_Row3_3;
			uniform float _UDIMDiscardRow3_3;
			uniform float _OutlineWidth1;
			uniform float _MaxOutlineWidth1;
			uniform float _OcclusionMap;
			uniform sampler2D _MaskMap04;
			uniform float _MaskMap04UV;
			uniform float4 _MaskMap04_ST;
			uniform float2 _AnimatedOffsetMaskMap04;
			uniform sampler2D _MaskMap03;
			uniform float _MaskMap03UV;
			uniform float4 _MaskMap03_ST;
			uniform float2 _AnimatedOffsetMaskMap03;
			uniform sampler2D _MaskMap02;
			uniform float _MaskMap02UV;
			uniform float4 _MaskMap02_ST;
			uniform float2 _AnimatedOffsetMaskMap02;
			uniform sampler2D _MaskMap01;
			uniform float _MaskMap01UV;
			uniform float4 _MaskMap01_ST;
			uniform float2 _AnimatedOffsetMaskMap01;
			uniform float _OpacityMap;
			uniform float4 _Color;
			uniform sampler2D _MainTex;
			uniform float _MainTexUV;
			uniform float4 _MainTex_ST;
			uniform float2 _AnimatedOffsetMainTex;
			uniform float _OpacityChannel;
			uniform float4 _OutlineColor1;
			uniform float _Float1;
			uniform float _RainbowSpeed;
			uniform float _RainbowRotation;
			uniform float _RainbowSpiralCurve;
			uniform float2 _RainbowRadialCenter;
			uniform int _RainbowUVMode;
			uniform sampler2D _DirectionalMap;
			uniform float _DirectionMapUV;
			uniform float4 _DirectionalMap_ST;
			uniform float2 _AnimatedOffsetDirectionalMap;
			uniform float _RainbowScale;
			uniform float _RainbowHueRange;
			uniform float _RainbowHue;
			uniform float _RainbowSaturation;
			uniform float _RainbowValue;
			uniform float _RainbowOutline;
			float3 ProbeDir(  )
			{
				return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
			}
			
			float3 getThemeData( int Zone )
			{
				float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
				return result;
			}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 temp_cast_0 = (( 1.0 / 0.0 )).xxx;
				float2 _Vector4 = float2(0,0);
				float Index58_g12818 = _TileDiscardUV;
				float2 temp_output_53_0_g12818 = ( ( 4.0 == Index58_g12818 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12818 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12818 ? v.ase_texcoord2.xy : ( 1.0 == Index58_g12818 ? v.ase_texcoord1.xy : v.ase_texcoord.xy ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12818 = temp_output_53_0_g12818;
				float2 TileDiscardUVs18_g12819 = ( vertexToFrag51_g12818 + -1.0 );
				float2 break10_g12819 = TileDiscardUVs18_g12819;
				float Row0Col071_g12819 = saturate( ( max( max( step( _Vector4.x , break10_g12819.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g12819.x ) ) , max( step( _Vector4.y , break10_g12819.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
				float2 _Vector5 = float2(1,0);
				float2 break82_g12819 = TileDiscardUVs18_g12819;
				float Row0Col189_g12819 = saturate( ( max( max( step( _Vector5.x , break82_g12819.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g12819.x ) ) , max( step( _Vector5.y , break82_g12819.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
				float2 _Vector6 = float2(2,0);
				float2 break100_g12819 = TileDiscardUVs18_g12819;
				float Row0Col2106_g12819 = saturate( ( max( max( step( _Vector6.x , break100_g12819.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g12819.x ) ) , max( step( _Vector6.y , break100_g12819.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
				float2 _Vector7 = float2(3,0);
				float2 break118_g12819 = TileDiscardUVs18_g12819;
				float Row0Col3124_g12819 = saturate( ( max( max( step( _Vector7.x , break118_g12819.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g12819.x ) ) , max( step( _Vector7.y , break118_g12819.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
				float2 _Vector8 = float2(0,1);
				float2 break141_g12819 = TileDiscardUVs18_g12819;
				float Row1Col0148_g12819 = saturate( ( max( max( step( _Vector8.x , break141_g12819.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g12819.x ) ) , max( step( _Vector8.y , break141_g12819.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
				float2 _Vector9 = float2(1,1);
				float2 break159_g12819 = TileDiscardUVs18_g12819;
				float Row1Col1165_g12819 = saturate( ( max( max( step( _Vector9.x , break159_g12819.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g12819.x ) ) , max( step( _Vector9.y , break159_g12819.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
				float2 _Vector10 = float2(2,1);
				float2 break177_g12819 = TileDiscardUVs18_g12819;
				float Row1Col2183_g12819 = saturate( ( max( max( step( _Vector10.x , break177_g12819.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g12819.x ) ) , max( step( _Vector10.y , break177_g12819.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
				float2 _Vector11 = float2(3,1);
				float2 break195_g12819 = TileDiscardUVs18_g12819;
				float Row1Col3201_g12819 = saturate( ( max( max( step( _Vector11.x , break195_g12819.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g12819.x ) ) , max( step( _Vector11.y , break195_g12819.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
				float2 _Vector12 = float2(0,2);
				float2 break222_g12819 = TileDiscardUVs18_g12819;
				float Row2Col0229_g12819 = saturate( ( max( max( step( _Vector12.x , break222_g12819.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g12819.x ) ) , max( step( _Vector12.y , break222_g12819.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
				float2 _Vector13 = float2(1,2);
				float2 break239_g12819 = TileDiscardUVs18_g12819;
				float Row2Col1245_g12819 = saturate( ( max( max( step( _Vector13.x , break239_g12819.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g12819.x ) ) , max( step( _Vector13.y , break239_g12819.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
				float2 _Vector14 = float2(2,2);
				float2 break256_g12819 = TileDiscardUVs18_g12819;
				float Row2Col2262_g12819 = saturate( ( max( max( step( _Vector14.x , break256_g12819.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g12819.x ) ) , max( step( _Vector14.y , break256_g12819.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
				float2 _Vector15 = float2(3,2);
				float2 break273_g12819 = TileDiscardUVs18_g12819;
				float Row2Col3279_g12819 = saturate( ( max( max( step( _Vector15.x , break273_g12819.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g12819.x ) ) , max( step( _Vector15.y , break273_g12819.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
				float2 _Vector19 = float2(0,3);
				float2 break294_g12819 = TileDiscardUVs18_g12819;
				float Row3Col0352_g12819 = saturate( ( max( max( step( _Vector19.x , break294_g12819.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g12819.x ) ) , max( step( _Vector19.y , break294_g12819.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
				float2 _Vector16 = float2(1,3);
				float2 break309_g12819 = TileDiscardUVs18_g12819;
				float Row3Col1351_g12819 = saturate( ( max( max( step( _Vector16.x , break309_g12819.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g12819.x ) ) , max( step( _Vector16.y , break309_g12819.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
				float2 _Vector17 = float2(2,3);
				float2 break325_g12819 = TileDiscardUVs18_g12819;
				float Row3Col2350_g12819 = saturate( ( max( max( step( _Vector17.x , break325_g12819.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g12819.x ) ) , max( step( _Vector17.y , break325_g12819.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
				float2 _Vector18 = float2(3,3);
				float2 break341_g12819 = TileDiscardUVs18_g12819;
				float Row3Col3349_g12819 = saturate( ( max( max( step( _Vector18.x , break341_g12819.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g12819.x ) ) , max( step( _Vector18.y , break341_g12819.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
				float VertexDiscardOutput1202 = ( ( ( Row0Col071_g12819 * Row0Col189_g12819 * Row0Col2106_g12819 * Row0Col3124_g12819 ) * ( Row1Col0148_g12819 * Row1Col1165_g12819 * Row1Col2183_g12819 * Row1Col3201_g12819 ) ) * ( ( Row2Col0229_g12819 * Row2Col1245_g12819 * Row2Col2262_g12819 * Row2Col3279_g12819 ) * ( Row3Col0352_g12819 * Row3Col1351_g12819 * Row3Col2350_g12819 * Row3Col3349_g12819 ) ) );
				float3 temp_cast_1 = (( 0.0 / 0.0 )).xxx;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.ase_normal );
				float3 worldToObjDir1140 = mul( unity_WorldToObject, float4( ase_normalWS, 0.0 ) ).xyz;
				float lerpResult1147 = lerp( 0.0 , ( 0.0001 * _OutlineWidth1 ) , saturate( _OutlineWidth1 ));
				float4 unityObjectToClipPos1145 = UnityObjectToClipPos( v.vertex.xyz );
				float lerpResult1153 = lerp( 0.0 , ( 0.0001 * _MaxOutlineWidth1 ) , saturate( _MaxOutlineWidth1 ));
				#ifdef _OUTLINE1_ON
				float3 staticSwitch1953 = ( VertexDiscardOutput1202 < 0.001 ? temp_cast_1 : ( worldToObjDir1140 * min( ( lerpResult1147 + ( lerpResult1147 * unityObjectToClipPos1145.w ) ) , lerpResult1153 ) ) );
				#else
				float3 staticSwitch1953 = temp_cast_0;
				#endif
				
				float Index58_g12817 = _MaskMap04UV;
				float2 Tiling60_g12817 = _MaskMap04_ST.xy;
				float2 Offset61_g12817 = _MaskMap04_ST.zw;
				float2 temp_output_2_0_g12813 = _AnimatedOffsetMaskMap04;
				float mulTime7_g12813 = _Time.y * (temp_output_2_0_g12813).x;
				float mulTime10_g12813 = _Time.y * (temp_output_2_0_g12813).y;
				float2 appendResult11_g12813 = (float2(mulTime7_g12813 , mulTime10_g12813));
				float2 temp_output_53_0_g12817 = ( ( 4.0 == Index58_g12817 ? (v.ase_texcoord4.xy*Tiling60_g12817 + Offset61_g12817) : ( 3.0 == Index58_g12817 ? (v.ase_texcoord3.xy*Tiling60_g12817 + Offset61_g12817) : ( 2.0 == Index58_g12817 ? (v.ase_texcoord2.xy*Tiling60_g12817 + Offset61_g12817) : ( 1.0 == Index58_g12817 ? (v.ase_texcoord1.xy*Tiling60_g12817 + Offset61_g12817) : (v.ase_texcoord.xy*Tiling60_g12817 + Offset61_g12817) ) ) ) ) + frac( appendResult11_g12813 ) );
				float2 vertexToFrag51_g12817 = temp_output_53_0_g12817;
				o.ase_texcoord.xy = vertexToFrag51_g12817;
				float Index58_g12816 = _MaskMap03UV;
				float2 Tiling60_g12816 = _MaskMap03_ST.xy;
				float2 Offset61_g12816 = _MaskMap03_ST.zw;
				float2 temp_output_2_0_g12812 = _AnimatedOffsetMaskMap03;
				float mulTime7_g12812 = _Time.y * (temp_output_2_0_g12812).x;
				float mulTime10_g12812 = _Time.y * (temp_output_2_0_g12812).y;
				float2 appendResult11_g12812 = (float2(mulTime7_g12812 , mulTime10_g12812));
				float2 temp_output_53_0_g12816 = ( ( 4.0 == Index58_g12816 ? (v.ase_texcoord4.xy*Tiling60_g12816 + Offset61_g12816) : ( 3.0 == Index58_g12816 ? (v.ase_texcoord3.xy*Tiling60_g12816 + Offset61_g12816) : ( 2.0 == Index58_g12816 ? (v.ase_texcoord2.xy*Tiling60_g12816 + Offset61_g12816) : ( 1.0 == Index58_g12816 ? (v.ase_texcoord1.xy*Tiling60_g12816 + Offset61_g12816) : (v.ase_texcoord.xy*Tiling60_g12816 + Offset61_g12816) ) ) ) ) + frac( appendResult11_g12812 ) );
				float2 vertexToFrag51_g12816 = temp_output_53_0_g12816;
				o.ase_texcoord.zw = vertexToFrag51_g12816;
				float Index58_g12815 = _MaskMap02UV;
				float2 Tiling60_g12815 = _MaskMap02_ST.xy;
				float2 Offset61_g12815 = _MaskMap02_ST.zw;
				float2 temp_output_2_0_g12811 = _AnimatedOffsetMaskMap02;
				float mulTime7_g12811 = _Time.y * (temp_output_2_0_g12811).x;
				float mulTime10_g12811 = _Time.y * (temp_output_2_0_g12811).y;
				float2 appendResult11_g12811 = (float2(mulTime7_g12811 , mulTime10_g12811));
				float2 temp_output_53_0_g12815 = ( ( 4.0 == Index58_g12815 ? (v.ase_texcoord4.xy*Tiling60_g12815 + Offset61_g12815) : ( 3.0 == Index58_g12815 ? (v.ase_texcoord3.xy*Tiling60_g12815 + Offset61_g12815) : ( 2.0 == Index58_g12815 ? (v.ase_texcoord2.xy*Tiling60_g12815 + Offset61_g12815) : ( 1.0 == Index58_g12815 ? (v.ase_texcoord1.xy*Tiling60_g12815 + Offset61_g12815) : (v.ase_texcoord.xy*Tiling60_g12815 + Offset61_g12815) ) ) ) ) + frac( appendResult11_g12811 ) );
				float2 vertexToFrag51_g12815 = temp_output_53_0_g12815;
				o.ase_texcoord1.xy = vertexToFrag51_g12815;
				float Index58_g12814 = _MaskMap01UV;
				float2 Tiling60_g12814 = _MaskMap01_ST.xy;
				float2 Offset61_g12814 = _MaskMap01_ST.zw;
				float2 temp_output_2_0_g12810 = _AnimatedOffsetMaskMap01;
				float mulTime7_g12810 = _Time.y * (temp_output_2_0_g12810).x;
				float mulTime10_g12810 = _Time.y * (temp_output_2_0_g12810).y;
				float2 appendResult11_g12810 = (float2(mulTime7_g12810 , mulTime10_g12810));
				float2 temp_output_53_0_g12814 = ( ( 4.0 == Index58_g12814 ? (v.ase_texcoord4.xy*Tiling60_g12814 + Offset61_g12814) : ( 3.0 == Index58_g12814 ? (v.ase_texcoord3.xy*Tiling60_g12814 + Offset61_g12814) : ( 2.0 == Index58_g12814 ? (v.ase_texcoord2.xy*Tiling60_g12814 + Offset61_g12814) : ( 1.0 == Index58_g12814 ? (v.ase_texcoord1.xy*Tiling60_g12814 + Offset61_g12814) : (v.ase_texcoord.xy*Tiling60_g12814 + Offset61_g12814) ) ) ) ) + frac( appendResult11_g12810 ) );
				float2 vertexToFrag51_g12814 = temp_output_53_0_g12814;
				o.ase_texcoord1.zw = vertexToFrag51_g12814;
				float Index58_g12809 = _MainTexUV;
				float2 Tiling60_g12809 = _MainTex_ST.xy;
				float2 Offset61_g12809 = _MainTex_ST.zw;
				float2 temp_output_2_0_g12808 = _AnimatedOffsetMainTex;
				float mulTime7_g12808 = _Time.y * (temp_output_2_0_g12808).x;
				float mulTime10_g12808 = _Time.y * (temp_output_2_0_g12808).y;
				float2 appendResult11_g12808 = (float2(mulTime7_g12808 , mulTime10_g12808));
				float2 temp_output_53_0_g12809 = ( ( 4.0 == Index58_g12809 ? (v.ase_texcoord4.xy*Tiling60_g12809 + Offset61_g12809) : ( 3.0 == Index58_g12809 ? (v.ase_texcoord3.xy*Tiling60_g12809 + Offset61_g12809) : ( 2.0 == Index58_g12809 ? (v.ase_texcoord2.xy*Tiling60_g12809 + Offset61_g12809) : ( 1.0 == Index58_g12809 ? (v.ase_texcoord1.xy*Tiling60_g12809 + Offset61_g12809) : (v.ase_texcoord.xy*Tiling60_g12809 + Offset61_g12809) ) ) ) ) + frac( appendResult11_g12808 ) );
				float2 vertexToFrag51_g12809 = temp_output_53_0_g12809;
				o.ase_texcoord2.xy = vertexToFrag51_g12809;
				float Index58_g12986 = _DirectionMapUV;
				float2 Tiling60_g12986 = _DirectionalMap_ST.xy;
				float2 Offset61_g12986 = _DirectionalMap_ST.zw;
				float2 temp_output_2_0_g12983 = _AnimatedOffsetDirectionalMap;
				float mulTime7_g12983 = _Time.y * (temp_output_2_0_g12983).x;
				float mulTime10_g12983 = _Time.y * (temp_output_2_0_g12983).y;
				float2 appendResult11_g12983 = (float2(mulTime7_g12983 , mulTime10_g12983));
				float2 temp_output_53_0_g12986 = ( ( 4.0 == Index58_g12986 ? (v.ase_texcoord4.xy*Tiling60_g12986 + Offset61_g12986) : ( 3.0 == Index58_g12986 ? (v.ase_texcoord3.xy*Tiling60_g12986 + Offset61_g12986) : ( 2.0 == Index58_g12986 ? (v.ase_texcoord2.xy*Tiling60_g12986 + Offset61_g12986) : ( 1.0 == Index58_g12986 ? (v.ase_texcoord1.xy*Tiling60_g12986 + Offset61_g12986) : (v.ase_texcoord.xy*Tiling60_g12986 + Offset61_g12986) ) ) ) ) + frac( appendResult11_g12983 ) );
				float2 vertexToFrag51_g12986 = temp_output_53_0_g12986;
				o.ase_texcoord3.xy = vertexToFrag51_g12986;
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord4.xyz = ase_positionWS;
				
				o.ase_texcoord2.zw = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.zw = 0;
				o.ase_texcoord4.w = 0;
				
				v.vertex.xyz += staticSwitch1953;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i ) : SV_Target
			{
				fixed4 finalColor;
				float OutlineChannel603_g12820 = _OutlineChannel;
				float OcclusionMap1292_g12820 = _OcclusionMap;
				float4 temp_cast_0 = (1.0).xxxx;
				float2 vertexToFrag51_g12817 = i.ase_texcoord.xy;
				float4 MaskMap041244 = tex2D( _MaskMap04, vertexToFrag51_g12817 );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float OutlineMap602_g12820 = _OutlineMask;
				float2 vertexToFrag51_g12816 = i.ase_texcoord.zw;
				float4 MaskMap031239 = tex2D( _MaskMap03, vertexToFrag51_g12816 );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float2 vertexToFrag51_g12815 = i.ase_texcoord1.xy;
				float4 MaskMap021234 = tex2D( _MaskMap02, vertexToFrag51_g12815 );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float2 vertexToFrag51_g12814 = i.ase_texcoord1.zw;
				float4 MaskMap011220 = tex2D( _MaskMap01, vertexToFrag51_g12814 );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 OutlineRGBA604_g12820 = ( 4.0 == OcclusionMap1292_g12820 ? temp_cast_0 : ( 3.0 == OcclusionMap1292_g12820 ? MM04RGBA8_g12820 : ( 2.0 == OutlineMap602_g12820 ? MM03RGBA7_g12820 : ( 1.0 == OutlineMap602_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float OutlineMask1789 = ( 3.0 == OutlineChannel603_g12820 ? (OutlineRGBA604_g12820).a : ( 2.0 == OutlineChannel603_g12820 ? (OutlineRGBA604_g12820).b : ( 1.0 == OutlineChannel603_g12820 ? (OutlineRGBA604_g12820).g : (OutlineRGBA604_g12820).r ) ) );
				float AlphaMap671_g12820 = _OpacityMap;
				float2 vertexToFrag51_g12809 = i.ase_texcoord2.xy;
				float4 temp_output_835_0 = ( _Color * tex2D( _MainTex, vertexToFrag51_g12809 ) );
				float Alpha847 = (temp_output_835_0).a;
				float temp_output_678_0_g12820 = Alpha847;
				float AlphaChannel670_g12820 = _OpacityChannel;
				float4 temp_cast_1 = (1.0).xxxx;
				float4 AlphaRGBA657_g12820 = ( 4.0 == AlphaMap671_g12820 ? temp_cast_1 : ( 3.0 == AlphaMap671_g12820 ? MM04RGBA8_g12820 : ( 2.0 == AlphaMap671_g12820 ? MM03RGBA7_g12820 : ( 1.0 == AlphaMap671_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_2995_674 = ( 5.0 == AlphaMap671_g12820 ? temp_output_678_0_g12820 : ( 3.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).a : ( 2.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).b : ( 1.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).g : (AlphaRGBA657_g12820).r ) ) ) );
				#if defined( _ALPHATEST_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _BLEND_OFF )
				float staticSwitch2920 = 1.0;
				#else
				float staticSwitch2920 = temp_output_2995_674;
				#endif
				float AlphaUnpacked2081 = staticSwitch2920;
				float4 appendResult1185 = (float4(1.0 , 1.0 , 1.0 , ( OutlineMask1789 * AlphaUnpacked2081 )));
				float3 temp_cast_2 = (1.0).xxx;
				float3 temp_cast_3 = (1.0).xxx;
				float mulTime6_g12980 = _Time.y * _RainbowSpeed;
				float temp_output_100_0_g12974 = fmod( mulTime6_g12980 , 7200.0 );
				float EmissionGlowAnimation67_g12974 = ( _Float1 * temp_output_100_0_g12974 );
				float2 texCoord1_g12974 = i.ase_texcoord2.zw * float2( 1,1 ) + float2( 0,0 );
				float temp_output_53_0_g12974 = radians( _RainbowRotation );
				float cos45_g12974 = cos( temp_output_53_0_g12974 );
				float sin45_g12974 = sin( temp_output_53_0_g12974 );
				float2 rotator45_g12974 = mul( texCoord1_g12974 - float2( 0.5,0.5 ) , float2x2( cos45_g12974 , -sin45_g12974 , sin45_g12974 , cos45_g12974 )) + float2( 0.5,0.5 );
				float2 temp_output_34_0_g12975 = ( texCoord1_g12974 - _RainbowRadialCenter );
				float2 break39_g12975 = temp_output_34_0_g12975;
				float2 appendResult50_g12975 = (float2(( _RainbowSpiralCurve * ( length( temp_output_34_0_g12975 ) * 2.0 ) ) , ( ( atan2( break39_g12975.x , break39_g12975.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float2 break50_g12974 = appendResult50_g12975;
				float lerpResult49_g12974 = lerp( rotator45_g12974.x , break50_g12974.x , (float)saturate( _RainbowUVMode ));
				int temp_output_60_0_g12974 = ( _RainbowUVMode - 1 );
				float lerpResult63_g12974 = lerp( lerpResult49_g12974 , ( break50_g12974.x + ( break50_g12974.y * ( 2.0 * UNITY_PI ) ) ) , (float)saturate( temp_output_60_0_g12974 ));
				float2 vertexToFrag51_g12986 = i.ase_texcoord3.xy;
				float Direction27_g12985 = tex2D( _DirectionalMap, vertexToFrag51_g12986 ).r;
				float temp_output_85_0_g12974 = Direction27_g12985;
				int temp_output_81_0_g12974 = ( temp_output_60_0_g12974 - 1 );
				float lerpResult79_g12974 = lerp( lerpResult63_g12974 , temp_output_85_0_g12974 , (float)saturate( temp_output_81_0_g12974 ));
				int temp_output_83_0_g12974 = ( temp_output_81_0_g12974 - 1 );
				float lerpResult80_g12974 = lerp( lerpResult79_g12974 , ( 1.0 - temp_output_85_0_g12974 ) , (float)saturate( temp_output_83_0_g12974 ));
				float3 ase_positionWS = i.ase_texcoord4.xyz;
				float3 rotatedValue134_g12974 = RotateAroundAxis( float3( 0,0,0 ), ase_positionWS, float3( 0,0,1 ), temp_output_53_0_g12974 );
				float lerpResult131_g12974 = lerp( lerpResult80_g12974 , (rotatedValue134_g12974).y , (float)saturate( ( temp_output_83_0_g12974 - 1 ) ));
				float temp_output_24_0_g12974 = ( ( 1.0 - _RainbowHueRange ) * 0.5 );
				float3 hsvTorgb3_g12974 = HSVToRGB( float3(( (temp_output_24_0_g12974 + (sin( ( EmissionGlowAnimation67_g12974 + ( lerpResult131_g12974 * _RainbowScale ) ) ) - -1.0) * (( 1.0 - temp_output_24_0_g12974 ) - temp_output_24_0_g12974) / (1.0 - -1.0)) + _RainbowHue ),_RainbowSaturation,_RainbowValue) );
				float3 Rainbow2089 = hsvTorgb3_g12974;
				float3 lerpResult2121 = lerp( temp_cast_3 , Rainbow2089 , _RainbowOutline);
				#ifdef _RAINBOW_ON
				float3 staticSwitch2126 = lerpResult2121;
				#else
				float3 staticSwitch2126 = temp_cast_2;
				#endif
				float4 appendResult2127 = (float4(staticSwitch2126 , 1.0));
				#ifdef _OUTLINE1_ON
				float4 staticSwitch1952 = ( appendResult1185 * _OutlineColor1 * appendResult2127 );
				#else
				float4 staticSwitch1952 = float4( 0,0,0,0 );
				#endif
				
				
				finalColor = staticSwitch1952;
				float Alpha = finalColor.a;
				#ifdef _ALPHATEST_ON
					clip( Alpha - 0.5 );
				#endif
				return finalColor;
			}
			ENDCG
		}

					
		Pass
		{
			Name "Shell"
			Tags { "RenderType"="TransparentCutout" "Queue"="AlphaTest-2" }
			CGINCLUDE
			#pragma target 5.0
			ENDCG
			Blend One One
			AlphaToMask Off
			Cull Off
			ColorMask RGBA
			ZWrite [_StarShellZwrite]
			ZTest LEqual
			
			CGPROGRAM
			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_VERSION 19801

			#pragma vertex vert
			#pragma fragment frag
			#include "UnityCG.cginc"

			#include "UnityShaderVariables.cginc"
			#include "UnityStandardUtils.cginc"
			#include "UnityStandardBRDF.cginc"
			#include "Lighting.cginc"
			#pragma shader_feature_local _LIGHTINGSTYLE_STANDARD _LIGHTINGSTYLE_TOON
			#pragma shader_feature _ALPHAPREMULTIPLY_ON
			#pragma shader_feature_local _STARSHELL_ON
			#pragma shader_feature_local _CONSTELLATION_ON
			#pragma shader_feature_local _RAINBOW_ON
			#pragma shader_feature_local _STARSHINE_ON
			#pragma shader_feature_local _DREAMWEAVE_ON
			#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"

			struct appdata
			{
				float4 vertex : POSITION;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord : TEXCOORD0;
				float3 ase_normal : NORMAL;
				float4 ase_tangent : TANGENT;
			};
			
			struct v2f
			{
				float4 vertex : SV_POSITION;
				UNITY_VERTEX_OUTPUT_STEREO
				float4 ase_texcoord : TEXCOORD0;
				float4 ase_texcoord1 : TEXCOORD1;
				float4 ase_texcoord2 : TEXCOORD2;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord5 : TEXCOORD5;
				float4 ase_texcoord6 : TEXCOORD6;
				float4 ase_texcoord7 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
			};

			uniform float _OutlineChannel;
			uniform float _OutlineMask;
			uniform float _DreamweaveMask;
			uniform float _DreamweaveChannel;
			uniform float _StarshellChannel;
			uniform float _StarshellMask;
			uniform float _StardustHeightMap;
			uniform float _StardustHeightCh;
			uniform float _RainbowChannel;
			uniform float _RainbowMask;
			uniform float _FabricLightChannel;
			uniform float _FabricLightMap;
			uniform float _ConstellationChannel;
			uniform float _ConstellationMask;
			uniform float _BlendModeIndex;
			uniform float _Culling;
			uniform float _BlendOPsrc;
			uniform float _BlendOPdst;
			uniform float _BlendOPIndex;
			uniform float _ShowMaps;
			uniform float _ShowLighting;
			uniform float _ShowEmission;
			uniform float _ShowEmission01;
			uniform float _ShowEmissionMain;
			uniform float _ShowEmission02;
			uniform float _ShowEmission03;
			uniform float _ShowEmission04;
			uniform float _ShowTileDiscard;
			uniform float _ShowEffects;
			uniform float _ShowStarshine;
			uniform float _ShowDreamweave;
			uniform float _ShowOutline;
			uniform float _ShowStarshell;
			uniform float _ZWrite;
			uniform float _BlendOpRGB;
			uniform float _StencilReference;
			uniform float3 _FavoriteColor;
			uniform float _DestinationBlendRGB;
			uniform float _SourceBlendRGB;
			uniform float _ShowRainbow;
			uniform float _ShowRedGlow;
			uniform float _ShowRedAL;
			uniform float _ShowEmissGlow;
			uniform float _ShowEmissAL;
			uniform float _ShowGreenGlow;
			uniform float _ShowGreenAL;
			uniform float _ShowBlueGlow;
			uniform float _ShowBlueAL;
			uniform float _ShowAlphaGlow;
			uniform float _ShowAlphaAL;
			uniform float _ShowMain;
			uniform float _ShowConstellation;
			uniform float _StardustZwrite;
			uniform float _TileDiscardUV;
			uniform float _UVTileDissolveAlpha_Row0_0;
			uniform float _UDIMDiscardRow0_0;
			uniform float _UVTileDissolveAlpha_Row0_1;
			uniform float _UDIMDiscardRow0_1;
			uniform float _UVTileDissolveAlpha_Row0_2;
			uniform float _UDIMDiscardRow0_2;
			uniform float _UVTileDissolveAlpha_Row0_3;
			uniform float _UDIMDiscardRow0_3;
			uniform float _UVTileDissolveAlpha_Row1_0;
			uniform float _UDIMDiscardRow1_0;
			uniform float _UVTileDissolveAlpha_Row1_1;
			uniform float _UDIMDiscardRow1_1;
			uniform float _UVTileDissolveAlpha_Row1_2;
			uniform float _UDIMDiscardRow1_2;
			uniform float _UVTileDissolveAlpha_Row1_3;
			uniform float _UDIMDiscardRow1_3;
			uniform float _UVTileDissolveAlpha_Row2_0;
			uniform float _UDIMDiscardRow2_0;
			uniform float _UVTileDissolveAlpha_Row2_1;
			uniform float _UDIMDiscardRow2_1;
			uniform float _UVTileDissolveAlpha_Row2_2;
			uniform float _UDIMDiscardRow2_2;
			uniform float _UVTileDissolveAlpha_Row2_3;
			uniform float _UDIMDiscardRow2_3;
			uniform float _UVTileDissolveAlpha_Row3_0;
			uniform float _UDIMDiscardRow3_0;
			uniform float _UVTileDissolveAlpha_Row3_1;
			uniform float _UDIMDiscardRow3_1;
			uniform float _UVTileDissolveAlpha_Row3_2;
			uniform float _UDIMDiscardRow3_2;
			uniform float _UVTileDissolveAlpha_Row3_3;
			uniform float _UDIMDiscardRow3_3;
			uniform sampler2D _MaskMap04;
			uniform float _MaskMap04UV;
			uniform float4 _MaskMap04_ST;
			uniform float2 _AnimatedOffsetMaskMap04;
			uniform sampler2D _MaskMap03;
			uniform float _MaskMap03UV;
			uniform float4 _MaskMap03_ST;
			uniform float2 _AnimatedOffsetMaskMap03;
			uniform sampler2D _MaskMap02;
			uniform float _MaskMap02UV;
			uniform float4 _MaskMap02_ST;
			uniform float2 _AnimatedOffsetMaskMap02;
			uniform sampler2D _MaskMap01;
			uniform float _MaskMap01UV;
			uniform float4 _MaskMap01_ST;
			uniform float2 _AnimatedOffsetMaskMap01;
			uniform float _StardustHeightScale;
			uniform float _ShellWidth;
			uniform float _EdgeFade;
			uniform sampler2D _BumpMap;
			uniform float _NormalMapUV;
			uniform float4 _BumpMap_ST;
			uniform float _BumpScale;
			uniform sampler2D _DetailNormal;
			uniform float _DetailUV;
			uniform float4 _DetailNormal_ST;
			uniform float _BumpScale1;
			uniform float _DetailNormalChannel;
			uniform float _DetailNormalMask;
			uniform float3 _StarshellColor;
			uniform float _Float1;
			uniform float _RainbowSpeed;
			uniform float _RainbowRotation;
			uniform float _RainbowSpiralCurve;
			uniform float2 _RainbowRadialCenter;
			uniform int _RainbowUVMode;
			uniform sampler2D _DirectionalMap;
			uniform float _DirectionMapUV;
			uniform float4 _DirectionalMap_ST;
			uniform float2 _AnimatedOffsetDirectionalMap;
			uniform float _RainbowScale;
			uniform float _RainbowHueRange;
			uniform float _RainbowHue;
			uniform float _RainbowSaturation;
			uniform float _RainbowValue;
			uniform float _RainbowStardust;
			uniform float4 _Color;
			uniform sampler2D _MainTex;
			uniform float _MainTexUV;
			uniform float4 _MainTex_ST;
			uniform float2 _AnimatedOffsetMainTex;
			uniform float3 _DreamweaveColor01;
			uniform float3 _DreamweaveColor02;
			uniform float _DreamweaveSoftness;
			uniform float3 _DreamweaveAngle;
			uniform float _DreamweavePos;
			uniform float _DreamweavePosSpeed;
			uniform float2 _DreamWeaveScale;
			uniform float2 _DreamWeaveOffset;
			uniform float2 _DreamweaveDistortionSpeed;
			uniform float _DreamweaveNormalScale;
			uniform float _DreamweaveColorOffset;
			uniform float _DreamweaveSwapFrequency;
			uniform float _DreamweaveSwapSpeed;
			uniform float _DreamweaveGridTile;
			uniform float _DreamweaveGridThickness;
			uniform float _Workflow;
			uniform float _OcclusionChannel;
			uniform float _OcclusionMap;
			uniform float _OcclusionPower;
			uniform float _EmissionMaskChannel;
			uniform float _EmissionMaskMap;
			uniform float3 _EmissionColor;
			uniform sampler2D _EmissionMap;
			uniform float _EmissionUV;
			uniform float4 _EmissionMap_ST;
			uniform float2 _AnimatedOffsetEmssion;
			uniform float _ReplaceBaseColor;
			uniform float _StarshineMetallic;
			uniform float3 _StarshineColor;
			uniform float _StarshineBaseColor;
			uniform float3 _SpecularTint;
			uniform float _SpecularTintMap;
			uniform float _StarshineChannel;
			uniform float _StarshineMask;
			uniform float _StardustBaseColor;
			uniform float _StarshellUV;
			uniform float2 _StarshellSpeed;
			uniform float _StarShellSparkleScale;
			uniform float _SizeClip;
			uniform float _SparkleSize;
			uniform float _StarShellSparkleSpeed;
			uniform float _StarshellDensity;
			uniform float3 _ConstellationColor;
			uniform sampler2D _Constellation;
			uniform float2 _ConstellationSpeed;
			uniform float4 _Constellation_ST;
			uniform float _SheetSize;
			uniform float _ConstellationAmount;
			uniform float _FadeFreqency;
			float3 ProbeDir(  )
			{
				return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
			}
			
			float3 getThemeData( int Zone )
			{
				float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
				return result;
			}
			
			float3 CenterEye1_g12832(  )
			{
				#if defined(USING_STEREO_MATRICES)
				float3 leftEye = unity_StereoWorldSpaceCameraPos[0];
				float3 rightEye = unity_StereoWorldSpaceCameraPos[1];
				float3 centerEye = lerp(leftEye, rightEye, 0.5);
				#else
				float3 centerEye = _WorldSpaceCameraPos;
				#endif
				return centerEye;
			}
			
			float3 HSVToRGB( float3 c )
			{
				float4 K = float4( 1.0, 2.0 / 3.0, 1.0 / 3.0, 3.0 );
				float3 p = abs( frac( c.xxx + K.xyz ) * 6.0 - K.www );
				return c.z * lerp( K.xxx, saturate( p - K.xxx ), c.y );
			}
			
			float3 RotateAroundAxis( float3 center, float3 original, float3 u, float angle )
			{
				original -= center;
				float C = cos( angle );
				float S = sin( angle );
				float t = 1 - C;
				float m00 = t * u.x * u.x + C;
				float m01 = t * u.x * u.y - S * u.z;
				float m02 = t * u.x * u.z + S * u.y;
				float m10 = t * u.x * u.y + S * u.z;
				float m11 = t * u.y * u.y + C;
				float m12 = t * u.y * u.z - S * u.x;
				float m20 = t * u.x * u.z - S * u.y;
				float m21 = t * u.y * u.z + S * u.x;
				float m22 = t * u.z * u.z + C;
				float3x3 finalMatrix = float3x3( m00, m01, m02, m10, m11, m12, m20, m21, m22 );
				return mul( finalMatrix, original ) + center;
			}
			
					float2 voronoihash1957( float2 p )
					{
						p = p - 256 * floor( p / 256 );
						p = float2( dot( p, float2( 127.1, 311.7 ) ), dot( p, float2( 269.5, 183.3 ) ) );
						return frac( sin( p ) *43758.5453);
					}
			
					float voronoi1957( float2 v, float time, inout float2 id, inout float2 mr, float smoothness, inout float2 smoothId )
					{
						float2 n = floor( v );
						float2 f = frac( v );
						float F1 = 8.0;
						float F2 = 8.0; float2 mg = 0;
						for ( int j = -1; j <= 1; j++ )
						{
							for ( int i = -1; i <= 1; i++ )
						 	{
						 		float2 g = float2( i, j );
						 		float2 o = voronoihash1957( n + g );
								o = ( sin( time + o * 6.2831 ) * 0.5 + 0.5 ); float2 r = f - g - o;
								float d = 0.5 * dot( r, r );
						 		if( d<F1 ) {
						 			F2 = F1;
						 			F1 = d; mg = g; mr = r; id = o;
						 		} else if( d<F2 ) {
						 			F2 = d;
						
						 		}
						 	}
						}
						return F1;
					}
			
			float3 mod2D289( float3 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float2 mod2D289( float2 x ) { return x - floor( x * ( 1.0 / 289.0 ) ) * 289.0; }
			float3 permute( float3 x ) { return mod2D289( ( ( x * 34.0 ) + 1.0 ) * x ); }
			float snoise( float2 v )
			{
				const float4 C = float4( 0.211324865405187, 0.366025403784439, -0.577350269189626, 0.024390243902439 );
				float2 i = floor( v + dot( v, C.yy ) );
				float2 x0 = v - i + dot( i, C.xx );
				float2 i1;
				i1 = ( x0.x > x0.y ) ? float2( 1.0, 0.0 ) : float2( 0.0, 1.0 );
				float4 x12 = x0.xyxy + C.xxzz;
				x12.xy -= i1;
				i = mod2D289( i );
				float3 p = permute( permute( i.y + float3( 0.0, i1.y, 1.0 ) ) + i.x + float3( 0.0, i1.x, 1.0 ) );
				float3 m = max( 0.5 - float3( dot( x0, x0 ), dot( x12.xy, x12.xy ), dot( x12.zw, x12.zw ) ), 0.0 );
				m = m * m;
				m = m * m;
				float3 x = 2.0 * frac( p * C.www ) - 1.0;
				float3 h = abs( x ) - 0.5;
				float3 ox = floor( x + 0.5 );
				float3 a0 = x - ox;
				m *= 1.79284291400159 - 0.85373472095314 * ( a0 * a0 + h * h );
				float3 g;
				g.x = a0.x * x0.x + h.x * x0.y;
				g.yz = a0.yz * x12.xz + h.yz * x12.yw;
				return 130.0 * dot( m, g );
			}
			

			
			v2f vert ( appdata v )
			{
				v2f o;
				UNITY_SETUP_INSTANCE_ID(v);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);
				float3 temp_cast_0 = (( 1.0 / 0.0 )).xxx;
				float2 _Vector4 = float2(0,0);
				float Index58_g12818 = _TileDiscardUV;
				float2 temp_output_53_0_g12818 = ( ( 4.0 == Index58_g12818 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12818 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12818 ? v.ase_texcoord2.xy : ( 1.0 == Index58_g12818 ? v.ase_texcoord1.xy : v.ase_texcoord.xy ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12818 = temp_output_53_0_g12818;
				float2 TileDiscardUVs18_g12819 = ( vertexToFrag51_g12818 + -1.0 );
				float2 break10_g12819 = TileDiscardUVs18_g12819;
				float Row0Col071_g12819 = saturate( ( max( max( step( _Vector4.x , break10_g12819.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g12819.x ) ) , max( step( _Vector4.y , break10_g12819.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
				float2 _Vector5 = float2(1,0);
				float2 break82_g12819 = TileDiscardUVs18_g12819;
				float Row0Col189_g12819 = saturate( ( max( max( step( _Vector5.x , break82_g12819.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g12819.x ) ) , max( step( _Vector5.y , break82_g12819.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
				float2 _Vector6 = float2(2,0);
				float2 break100_g12819 = TileDiscardUVs18_g12819;
				float Row0Col2106_g12819 = saturate( ( max( max( step( _Vector6.x , break100_g12819.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g12819.x ) ) , max( step( _Vector6.y , break100_g12819.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
				float2 _Vector7 = float2(3,0);
				float2 break118_g12819 = TileDiscardUVs18_g12819;
				float Row0Col3124_g12819 = saturate( ( max( max( step( _Vector7.x , break118_g12819.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g12819.x ) ) , max( step( _Vector7.y , break118_g12819.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
				float2 _Vector8 = float2(0,1);
				float2 break141_g12819 = TileDiscardUVs18_g12819;
				float Row1Col0148_g12819 = saturate( ( max( max( step( _Vector8.x , break141_g12819.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g12819.x ) ) , max( step( _Vector8.y , break141_g12819.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
				float2 _Vector9 = float2(1,1);
				float2 break159_g12819 = TileDiscardUVs18_g12819;
				float Row1Col1165_g12819 = saturate( ( max( max( step( _Vector9.x , break159_g12819.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g12819.x ) ) , max( step( _Vector9.y , break159_g12819.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
				float2 _Vector10 = float2(2,1);
				float2 break177_g12819 = TileDiscardUVs18_g12819;
				float Row1Col2183_g12819 = saturate( ( max( max( step( _Vector10.x , break177_g12819.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g12819.x ) ) , max( step( _Vector10.y , break177_g12819.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
				float2 _Vector11 = float2(3,1);
				float2 break195_g12819 = TileDiscardUVs18_g12819;
				float Row1Col3201_g12819 = saturate( ( max( max( step( _Vector11.x , break195_g12819.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g12819.x ) ) , max( step( _Vector11.y , break195_g12819.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
				float2 _Vector12 = float2(0,2);
				float2 break222_g12819 = TileDiscardUVs18_g12819;
				float Row2Col0229_g12819 = saturate( ( max( max( step( _Vector12.x , break222_g12819.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g12819.x ) ) , max( step( _Vector12.y , break222_g12819.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
				float2 _Vector13 = float2(1,2);
				float2 break239_g12819 = TileDiscardUVs18_g12819;
				float Row2Col1245_g12819 = saturate( ( max( max( step( _Vector13.x , break239_g12819.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g12819.x ) ) , max( step( _Vector13.y , break239_g12819.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
				float2 _Vector14 = float2(2,2);
				float2 break256_g12819 = TileDiscardUVs18_g12819;
				float Row2Col2262_g12819 = saturate( ( max( max( step( _Vector14.x , break256_g12819.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g12819.x ) ) , max( step( _Vector14.y , break256_g12819.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
				float2 _Vector15 = float2(3,2);
				float2 break273_g12819 = TileDiscardUVs18_g12819;
				float Row2Col3279_g12819 = saturate( ( max( max( step( _Vector15.x , break273_g12819.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g12819.x ) ) , max( step( _Vector15.y , break273_g12819.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
				float2 _Vector19 = float2(0,3);
				float2 break294_g12819 = TileDiscardUVs18_g12819;
				float Row3Col0352_g12819 = saturate( ( max( max( step( _Vector19.x , break294_g12819.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g12819.x ) ) , max( step( _Vector19.y , break294_g12819.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
				float2 _Vector16 = float2(1,3);
				float2 break309_g12819 = TileDiscardUVs18_g12819;
				float Row3Col1351_g12819 = saturate( ( max( max( step( _Vector16.x , break309_g12819.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g12819.x ) ) , max( step( _Vector16.y , break309_g12819.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
				float2 _Vector17 = float2(2,3);
				float2 break325_g12819 = TileDiscardUVs18_g12819;
				float Row3Col2350_g12819 = saturate( ( max( max( step( _Vector17.x , break325_g12819.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g12819.x ) ) , max( step( _Vector17.y , break325_g12819.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
				float2 _Vector18 = float2(3,3);
				float2 break341_g12819 = TileDiscardUVs18_g12819;
				float Row3Col3349_g12819 = saturate( ( max( max( step( _Vector18.x , break341_g12819.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g12819.x ) ) , max( step( _Vector18.y , break341_g12819.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
				float VertexDiscardOutput1202 = ( ( ( Row0Col071_g12819 * Row0Col189_g12819 * Row0Col2106_g12819 * Row0Col3124_g12819 ) * ( Row1Col0148_g12819 * Row1Col1165_g12819 * Row1Col2183_g12819 * Row1Col3201_g12819 ) ) * ( ( Row2Col0229_g12819 * Row2Col1245_g12819 * Row2Col2262_g12819 * Row2Col3279_g12819 ) * ( Row3Col0352_g12819 * Row3Col1351_g12819 * Row3Col2350_g12819 * Row3Col3349_g12819 ) ) );
				float3 temp_cast_1 = (( 0.0 / 0.0 )).xxx;
				float3 ase_normalWS = UnityObjectToWorldNormal( v.ase_normal );
				float3 worldToObjDir1973 = mul( unity_WorldToObject, float4( ase_normalWS, 0.0 ) ).xyz;
				float StardustHChannel741_g12820 = _StardustHeightCh;
				float StardustHMap743_g12820 = _StardustHeightMap;
				float4 temp_cast_2 = (1.0).xxxx;
				float Index58_g12817 = _MaskMap04UV;
				float2 Tiling60_g12817 = _MaskMap04_ST.xy;
				float2 Offset61_g12817 = _MaskMap04_ST.zw;
				float2 temp_output_2_0_g12813 = _AnimatedOffsetMaskMap04;
				float mulTime7_g12813 = _Time.y * (temp_output_2_0_g12813).x;
				float mulTime10_g12813 = _Time.y * (temp_output_2_0_g12813).y;
				float2 appendResult11_g12813 = (float2(mulTime7_g12813 , mulTime10_g12813));
				float2 temp_output_53_0_g12817 = ( ( 4.0 == Index58_g12817 ? (v.ase_texcoord4.xy*Tiling60_g12817 + Offset61_g12817) : ( 3.0 == Index58_g12817 ? (v.ase_texcoord3.xy*Tiling60_g12817 + Offset61_g12817) : ( 2.0 == Index58_g12817 ? (v.ase_texcoord2.xy*Tiling60_g12817 + Offset61_g12817) : ( 1.0 == Index58_g12817 ? (v.ase_texcoord1.xy*Tiling60_g12817 + Offset61_g12817) : (v.ase_texcoord.xy*Tiling60_g12817 + Offset61_g12817) ) ) ) ) + frac( appendResult11_g12813 ) );
				float2 vertexToFrag51_g12817 = temp_output_53_0_g12817;
				float4 MaskMap041244 = tex2Dlod( _MaskMap04, float4( vertexToFrag51_g12817, 0, 0.0) );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float Index58_g12816 = _MaskMap03UV;
				float2 Tiling60_g12816 = _MaskMap03_ST.xy;
				float2 Offset61_g12816 = _MaskMap03_ST.zw;
				float2 temp_output_2_0_g12812 = _AnimatedOffsetMaskMap03;
				float mulTime7_g12812 = _Time.y * (temp_output_2_0_g12812).x;
				float mulTime10_g12812 = _Time.y * (temp_output_2_0_g12812).y;
				float2 appendResult11_g12812 = (float2(mulTime7_g12812 , mulTime10_g12812));
				float2 temp_output_53_0_g12816 = ( ( 4.0 == Index58_g12816 ? (v.ase_texcoord4.xy*Tiling60_g12816 + Offset61_g12816) : ( 3.0 == Index58_g12816 ? (v.ase_texcoord3.xy*Tiling60_g12816 + Offset61_g12816) : ( 2.0 == Index58_g12816 ? (v.ase_texcoord2.xy*Tiling60_g12816 + Offset61_g12816) : ( 1.0 == Index58_g12816 ? (v.ase_texcoord1.xy*Tiling60_g12816 + Offset61_g12816) : (v.ase_texcoord.xy*Tiling60_g12816 + Offset61_g12816) ) ) ) ) + frac( appendResult11_g12812 ) );
				float2 vertexToFrag51_g12816 = temp_output_53_0_g12816;
				float4 MaskMap031239 = tex2Dlod( _MaskMap03, float4( vertexToFrag51_g12816, 0, 0.0) );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float Index58_g12815 = _MaskMap02UV;
				float2 Tiling60_g12815 = _MaskMap02_ST.xy;
				float2 Offset61_g12815 = _MaskMap02_ST.zw;
				float2 temp_output_2_0_g12811 = _AnimatedOffsetMaskMap02;
				float mulTime7_g12811 = _Time.y * (temp_output_2_0_g12811).x;
				float mulTime10_g12811 = _Time.y * (temp_output_2_0_g12811).y;
				float2 appendResult11_g12811 = (float2(mulTime7_g12811 , mulTime10_g12811));
				float2 temp_output_53_0_g12815 = ( ( 4.0 == Index58_g12815 ? (v.ase_texcoord4.xy*Tiling60_g12815 + Offset61_g12815) : ( 3.0 == Index58_g12815 ? (v.ase_texcoord3.xy*Tiling60_g12815 + Offset61_g12815) : ( 2.0 == Index58_g12815 ? (v.ase_texcoord2.xy*Tiling60_g12815 + Offset61_g12815) : ( 1.0 == Index58_g12815 ? (v.ase_texcoord1.xy*Tiling60_g12815 + Offset61_g12815) : (v.ase_texcoord.xy*Tiling60_g12815 + Offset61_g12815) ) ) ) ) + frac( appendResult11_g12811 ) );
				float2 vertexToFrag51_g12815 = temp_output_53_0_g12815;
				float4 MaskMap021234 = tex2Dlod( _MaskMap02, float4( vertexToFrag51_g12815, 0, 0.0) );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float Index58_g12814 = _MaskMap01UV;
				float2 Tiling60_g12814 = _MaskMap01_ST.xy;
				float2 Offset61_g12814 = _MaskMap01_ST.zw;
				float2 temp_output_2_0_g12810 = _AnimatedOffsetMaskMap01;
				float mulTime7_g12810 = _Time.y * (temp_output_2_0_g12810).x;
				float mulTime10_g12810 = _Time.y * (temp_output_2_0_g12810).y;
				float2 appendResult11_g12810 = (float2(mulTime7_g12810 , mulTime10_g12810));
				float2 temp_output_53_0_g12814 = ( ( 4.0 == Index58_g12814 ? (v.ase_texcoord4.xy*Tiling60_g12814 + Offset61_g12814) : ( 3.0 == Index58_g12814 ? (v.ase_texcoord3.xy*Tiling60_g12814 + Offset61_g12814) : ( 2.0 == Index58_g12814 ? (v.ase_texcoord2.xy*Tiling60_g12814 + Offset61_g12814) : ( 1.0 == Index58_g12814 ? (v.ase_texcoord1.xy*Tiling60_g12814 + Offset61_g12814) : (v.ase_texcoord.xy*Tiling60_g12814 + Offset61_g12814) ) ) ) ) + frac( appendResult11_g12810 ) );
				float2 vertexToFrag51_g12814 = temp_output_53_0_g12814;
				float4 MaskMap011220 = tex2Dlod( _MaskMap01, float4( vertexToFrag51_g12814, 0, 0.0) );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 StardustHRGBA742_g12820 = ( 4.0 == StardustHMap743_g12820 ? temp_cast_2 : ( 3.0 == StardustHMap743_g12820 ? MM04RGBA8_g12820 : ( 2.0 == StardustHMap743_g12820 ? MM03RGBA7_g12820 : ( 1.0 == StardustHMap743_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float StardustHeight2146 = ( 3.0 == StardustHChannel741_g12820 ? (StardustHRGBA742_g12820).a : ( 2.0 == StardustHChannel741_g12820 ? (StardustHRGBA742_g12820).b : ( 1.0 == StardustHChannel741_g12820 ? (StardustHRGBA742_g12820).g : (StardustHRGBA742_g12820).r ) ) );
				float lerpResult1967 = lerp( 0.0 , ( 0.001 * ( ( StardustHeight2146 * _StardustHeightScale ) + _ShellWidth ) ) , saturate( _ShellWidth ));
				#ifdef _STARSHELL_ON
				float3 staticSwitch1999 = ( VertexDiscardOutput1202 < 0.001 ? temp_cast_1 : ( worldToObjDir1973 * lerpResult1967 ) );
				#else
				float3 staticSwitch1999 = temp_cast_0;
				#endif
				
				float Index58_g12831 = _NormalMapUV;
				float2 Tiling60_g12831 = _BumpMap_ST.xy;
				float2 Offset61_g12831 = _BumpMap_ST.zw;
				float2 temp_output_53_0_g12831 = ( ( 4.0 == Index58_g12831 ? (v.ase_texcoord4.xy*Tiling60_g12831 + Offset61_g12831) : ( 3.0 == Index58_g12831 ? (v.ase_texcoord3.xy*Tiling60_g12831 + Offset61_g12831) : ( 2.0 == Index58_g12831 ? (v.ase_texcoord2.xy*Tiling60_g12831 + Offset61_g12831) : ( 1.0 == Index58_g12831 ? (v.ase_texcoord1.xy*Tiling60_g12831 + Offset61_g12831) : (v.ase_texcoord.xy*Tiling60_g12831 + Offset61_g12831) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12831 = temp_output_53_0_g12831;
				o.ase_texcoord.xy = vertexToFrag51_g12831;
				float Index58_g12829 = _DetailUV;
				float2 Tiling60_g12829 = _DetailNormal_ST.xy;
				float2 Offset61_g12829 = _DetailNormal_ST.zw;
				float2 temp_output_53_0_g12829 = ( ( 4.0 == Index58_g12829 ? (v.ase_texcoord4.xy*Tiling60_g12829 + Offset61_g12829) : ( 3.0 == Index58_g12829 ? (v.ase_texcoord3.xy*Tiling60_g12829 + Offset61_g12829) : ( 2.0 == Index58_g12829 ? (v.ase_texcoord2.xy*Tiling60_g12829 + Offset61_g12829) : ( 1.0 == Index58_g12829 ? (v.ase_texcoord1.xy*Tiling60_g12829 + Offset61_g12829) : (v.ase_texcoord.xy*Tiling60_g12829 + Offset61_g12829) ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12829 = temp_output_53_0_g12829;
				o.ase_texcoord.zw = vertexToFrag51_g12829;
				o.ase_texcoord1.xy = vertexToFrag51_g12817;
				o.ase_texcoord1.zw = vertexToFrag51_g12816;
				o.ase_texcoord2.xy = vertexToFrag51_g12815;
				o.ase_texcoord2.zw = vertexToFrag51_g12814;
				float3 ase_tangentWS = UnityObjectToWorldDir( v.ase_tangent );
				o.ase_texcoord3.xyz = ase_tangentWS;
				o.ase_texcoord4.xyz = ase_normalWS;
				float ase_tangentSign = v.ase_tangent.w * ( unity_WorldTransformParams.w >= 0.0 ? 1.0 : -1.0 );
				float3 ase_bitangentWS = cross( ase_normalWS, ase_tangentWS ) * ase_tangentSign;
				o.ase_texcoord5.xyz = ase_bitangentWS;
				float3 ase_positionWS = mul( unity_ObjectToWorld, float4( ( v.vertex ).xyz, 1 ) ).xyz;
				o.ase_texcoord6.xyz = ase_positionWS;
				float Index58_g12986 = _DirectionMapUV;
				float2 Tiling60_g12986 = _DirectionalMap_ST.xy;
				float2 Offset61_g12986 = _DirectionalMap_ST.zw;
				float2 temp_output_2_0_g12983 = _AnimatedOffsetDirectionalMap;
				float mulTime7_g12983 = _Time.y * (temp_output_2_0_g12983).x;
				float mulTime10_g12983 = _Time.y * (temp_output_2_0_g12983).y;
				float2 appendResult11_g12983 = (float2(mulTime7_g12983 , mulTime10_g12983));
				float2 temp_output_53_0_g12986 = ( ( 4.0 == Index58_g12986 ? (v.ase_texcoord4.xy*Tiling60_g12986 + Offset61_g12986) : ( 3.0 == Index58_g12986 ? (v.ase_texcoord3.xy*Tiling60_g12986 + Offset61_g12986) : ( 2.0 == Index58_g12986 ? (v.ase_texcoord2.xy*Tiling60_g12986 + Offset61_g12986) : ( 1.0 == Index58_g12986 ? (v.ase_texcoord1.xy*Tiling60_g12986 + Offset61_g12986) : (v.ase_texcoord.xy*Tiling60_g12986 + Offset61_g12986) ) ) ) ) + frac( appendResult11_g12983 ) );
				float2 vertexToFrag51_g12986 = temp_output_53_0_g12986;
				o.ase_texcoord7.zw = vertexToFrag51_g12986;
				float Index58_g12809 = _MainTexUV;
				float2 Tiling60_g12809 = _MainTex_ST.xy;
				float2 Offset61_g12809 = _MainTex_ST.zw;
				float2 temp_output_2_0_g12808 = _AnimatedOffsetMainTex;
				float mulTime7_g12808 = _Time.y * (temp_output_2_0_g12808).x;
				float mulTime10_g12808 = _Time.y * (temp_output_2_0_g12808).y;
				float2 appendResult11_g12808 = (float2(mulTime7_g12808 , mulTime10_g12808));
				float2 temp_output_53_0_g12809 = ( ( 4.0 == Index58_g12809 ? (v.ase_texcoord4.xy*Tiling60_g12809 + Offset61_g12809) : ( 3.0 == Index58_g12809 ? (v.ase_texcoord3.xy*Tiling60_g12809 + Offset61_g12809) : ( 2.0 == Index58_g12809 ? (v.ase_texcoord2.xy*Tiling60_g12809 + Offset61_g12809) : ( 1.0 == Index58_g12809 ? (v.ase_texcoord1.xy*Tiling60_g12809 + Offset61_g12809) : (v.ase_texcoord.xy*Tiling60_g12809 + Offset61_g12809) ) ) ) ) + frac( appendResult11_g12808 ) );
				float2 vertexToFrag51_g12809 = temp_output_53_0_g12809;
				o.ase_texcoord8.xy = vertexToFrag51_g12809;
				float Index58_g12830 = _EmissionUV;
				float2 Tiling60_g12830 = _EmissionMap_ST.xy;
				float2 Offset61_g12830 = _EmissionMap_ST.zw;
				float2 temp_output_2_0_g12952 = _AnimatedOffsetEmssion;
				float mulTime7_g12952 = _Time.y * (temp_output_2_0_g12952).x;
				float mulTime10_g12952 = _Time.y * (temp_output_2_0_g12952).y;
				float2 appendResult11_g12952 = (float2(mulTime7_g12952 , mulTime10_g12952));
				float2 temp_output_53_0_g12830 = ( ( 4.0 == Index58_g12830 ? (v.ase_texcoord4.xy*Tiling60_g12830 + Offset61_g12830) : ( 3.0 == Index58_g12830 ? (v.ase_texcoord3.xy*Tiling60_g12830 + Offset61_g12830) : ( 2.0 == Index58_g12830 ? (v.ase_texcoord2.xy*Tiling60_g12830 + Offset61_g12830) : ( 1.0 == Index58_g12830 ? (v.ase_texcoord1.xy*Tiling60_g12830 + Offset61_g12830) : (v.ase_texcoord.xy*Tiling60_g12830 + Offset61_g12830) ) ) ) ) + frac( appendResult11_g12952 ) );
				float2 vertexToFrag51_g12830 = temp_output_53_0_g12830;
				o.ase_texcoord8.zw = vertexToFrag51_g12830;
				float Index58_g12834 = _StarshellUV;
				float2 temp_output_2_0_g13106 = _StarshellSpeed;
				float mulTime7_g13106 = _Time.y * (temp_output_2_0_g13106).x;
				float mulTime10_g13106 = _Time.y * (temp_output_2_0_g13106).y;
				float2 appendResult11_g13106 = (float2(mulTime7_g13106 , mulTime10_g13106));
				float2 temp_output_53_0_g12834 = ( ( 4.0 == Index58_g12834 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12834 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12834 ? v.ase_texcoord2.xy : ( 1.0 == Index58_g12834 ? v.ase_texcoord1.xy : v.ase_texcoord.xy ) ) ) ) + fmod( appendResult11_g13106 , float2( 7200,7200 ) ) );
				float2 vertexToFrag51_g12834 = temp_output_53_0_g12834;
				o.ase_texcoord9.xy = vertexToFrag51_g12834;
				
				o.ase_texcoord7.xy = v.ase_texcoord.xy;
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord3.w = 0;
				o.ase_texcoord4.w = 0;
				o.ase_texcoord5.w = 0;
				o.ase_texcoord6.w = 0;
				o.ase_texcoord9.zw = 0;
				
				v.vertex.xyz += staticSwitch1999;
				o.vertex = UnityObjectToClipPos(v.vertex);
				return o;
			}
			
			fixed4 frag (v2f i , bool ase_vface : SV_IsFrontFace) : SV_Target
			{
				fixed4 finalColor;
				float2 _Vector21 = float2(0.1,0.5);
				float lerpResult2955 = lerp( _Vector21.x , _Vector21.y , _EdgeFade);
				float2 _Vector22 = float2(0.45,0.8);
				float lerpResult2954 = lerp( _Vector22.x , _Vector22.y , _EdgeFade);
				float2 vertexToFrag51_g12831 = i.ase_texcoord.xy;
				float3 NormalMap1174 = UnpackScaleNormal( tex2D( _BumpMap, vertexToFrag51_g12831 ), _BumpScale );
				float2 vertexToFrag51_g12829 = i.ase_texcoord.zw;
				float2 temp_output_2110_0 = vertexToFrag51_g12829;
				float4 DetailNormalPacked1228 = tex2D( _DetailNormal, temp_output_2110_0 );
				float DetailNormalScale1838 = _BumpScale1;
				float DetailNormalChannel361_g12820 = _DetailNormalChannel;
				float DetailNormalMap360_g12820 = _DetailNormalMask;
				float4 temp_cast_1 = (1.0).xxxx;
				float2 vertexToFrag51_g12817 = i.ase_texcoord1.xy;
				float4 MaskMap041244 = tex2D( _MaskMap04, vertexToFrag51_g12817 );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float2 vertexToFrag51_g12816 = i.ase_texcoord1.zw;
				float4 MaskMap031239 = tex2D( _MaskMap03, vertexToFrag51_g12816 );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float2 vertexToFrag51_g12815 = i.ase_texcoord2.xy;
				float4 MaskMap021234 = tex2D( _MaskMap02, vertexToFrag51_g12815 );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float2 vertexToFrag51_g12814 = i.ase_texcoord2.zw;
				float4 MaskMap011220 = tex2D( _MaskMap01, vertexToFrag51_g12814 );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 DetailNormalRGBA363_g12820 = ( 4.0 == DetailNormalMap360_g12820 ? temp_cast_1 : ( 3.0 == DetailNormalMap360_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DetailNormalMap360_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DetailNormalMap360_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DetailNormalMask1426 = ( 3.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).a : ( 2.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).b : ( 1.0 == DetailNormalChannel361_g12820 ? (DetailNormalRGBA363_g12820).g : (DetailNormalRGBA363_g12820).r ) ) );
				float3 lerpResult1472 = lerp( NormalMap1174 , BlendNormals( NormalMap1174 , UnpackScaleNormal( DetailNormalPacked1228, DetailNormalScale1838 ) ) , DetailNormalMask1426);
				float3 TangentNormal1479 = lerpResult1472;
				float2 temp_output_2069_0 = (TangentNormal1479).xy;
				float temp_output_2070_0 = (TangentNormal1479).z;
				float3 appendResult2073 = (float3(temp_output_2069_0 , temp_output_2070_0));
				float3 appendResult2074 = (float3(temp_output_2069_0 , -temp_output_2070_0));
				float3 switchResult2071 = (((ase_vface>0)?(appendResult2073):(appendResult2074)));
				float3 ase_tangentWS = i.ase_texcoord3.xyz;
				float3 ase_normalWS = i.ase_texcoord4.xyz;
				float3 ase_bitangentWS = i.ase_texcoord5.xyz;
				float3 tanToWorld0 = float3( ase_tangentWS.x, ase_bitangentWS.x, ase_normalWS.x );
				float3 tanToWorld1 = float3( ase_tangentWS.y, ase_bitangentWS.y, ase_normalWS.y );
				float3 tanToWorld2 = float3( ase_tangentWS.z, ase_bitangentWS.z, ase_normalWS.z );
				float3 tanNormal600 = switchResult2071;
				float3 worldNormal600 = normalize( float3( dot( tanToWorld0, tanNormal600 ), dot( tanToWorld1, tanNormal600 ), dot( tanToWorld2, tanNormal600 ) ) );
				float3 WorldNorm601 = worldNormal600;
				float3 ase_positionWS = i.ase_texcoord6.xyz;
				float3 ase_viewVectorWS = ( _WorldSpaceCameraPos.xyz - ase_positionWS );
				float3 ase_viewDirSafeWS = Unity_SafeNormalize( ase_viewVectorWS );
				float3 localCenterEye1_g12832 = CenterEye1_g12832();
				float3 normalizeResult5_g12832 = normalize( ( localCenterEye1_g12832 - ase_positionWS ) );
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float3 staticSwitch2210 = ase_viewDirSafeWS;
				#elif defined( _LIGHTINGSTYLE_TOON )
				float3 staticSwitch2210 = normalizeResult5_g12832;
				#else
				float3 staticSwitch2210 = ase_viewDirSafeWS;
				#endif
				float3 WorldView639 = staticSwitch2210;
				float dotResult2715 = dot( WorldNorm601 , WorldView639 );
				float smoothstepResult2716 = smoothstep( lerpResult2955 , lerpResult2954 , dotResult2715);
				float StarshellChannel636_g12820 = _StarshellChannel;
				float StarshellMap635_g12820 = _StarshellMask;
				float4 temp_cast_2 = (0.0).xxxx;
				float4 temp_cast_3 = (1.0).xxxx;
				float4 StarshellRGBA637_g12820 = ( 5.0 == StarshellMap635_g12820 ? temp_cast_2 : ( 4.0 == StarshellMap635_g12820 ? temp_cast_3 : ( 3.0 == StarshellMap635_g12820 ? MM04RGBA8_g12820 : ( 2.0 == StarshellMap635_g12820 ? MM03RGBA7_g12820 : ( 1.0 == StarshellMap635_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) ) );
				float StarshellMask2004 = ( 3.0 == StarshellChannel636_g12820 ? (StarshellRGBA637_g12820).a : ( 2.0 == StarshellChannel636_g12820 ? (StarshellRGBA637_g12820).b : ( 1.0 == StarshellChannel636_g12820 ? (StarshellRGBA637_g12820).g : (StarshellRGBA637_g12820).r ) ) );
				float3 temp_cast_4 = (1.0).xxx;
				float3 temp_cast_5 = (1.0).xxx;
				float mulTime6_g12980 = _Time.y * _RainbowSpeed;
				float temp_output_100_0_g12974 = fmod( mulTime6_g12980 , 7200.0 );
				float EmissionGlowAnimation67_g12974 = ( _Float1 * temp_output_100_0_g12974 );
				float2 texCoord1_g12974 = i.ase_texcoord7.xy * float2( 1,1 ) + float2( 0,0 );
				float temp_output_53_0_g12974 = radians( _RainbowRotation );
				float cos45_g12974 = cos( temp_output_53_0_g12974 );
				float sin45_g12974 = sin( temp_output_53_0_g12974 );
				float2 rotator45_g12974 = mul( texCoord1_g12974 - float2( 0.5,0.5 ) , float2x2( cos45_g12974 , -sin45_g12974 , sin45_g12974 , cos45_g12974 )) + float2( 0.5,0.5 );
				float2 temp_output_34_0_g12975 = ( texCoord1_g12974 - _RainbowRadialCenter );
				float2 break39_g12975 = temp_output_34_0_g12975;
				float2 appendResult50_g12975 = (float2(( _RainbowSpiralCurve * ( length( temp_output_34_0_g12975 ) * 2.0 ) ) , ( ( atan2( break39_g12975.x , break39_g12975.y ) * ( 1.0 / 6.28318548202515 ) ) * 1.0 )));
				float2 break50_g12974 = appendResult50_g12975;
				float lerpResult49_g12974 = lerp( rotator45_g12974.x , break50_g12974.x , (float)saturate( _RainbowUVMode ));
				int temp_output_60_0_g12974 = ( _RainbowUVMode - 1 );
				float lerpResult63_g12974 = lerp( lerpResult49_g12974 , ( break50_g12974.x + ( break50_g12974.y * ( 2.0 * UNITY_PI ) ) ) , (float)saturate( temp_output_60_0_g12974 ));
				float2 vertexToFrag51_g12986 = i.ase_texcoord7.zw;
				float Direction27_g12985 = tex2D( _DirectionalMap, vertexToFrag51_g12986 ).r;
				float temp_output_85_0_g12974 = Direction27_g12985;
				int temp_output_81_0_g12974 = ( temp_output_60_0_g12974 - 1 );
				float lerpResult79_g12974 = lerp( lerpResult63_g12974 , temp_output_85_0_g12974 , (float)saturate( temp_output_81_0_g12974 ));
				int temp_output_83_0_g12974 = ( temp_output_81_0_g12974 - 1 );
				float lerpResult80_g12974 = lerp( lerpResult79_g12974 , ( 1.0 - temp_output_85_0_g12974 ) , (float)saturate( temp_output_83_0_g12974 ));
				float3 rotatedValue134_g12974 = RotateAroundAxis( float3( 0,0,0 ), ase_positionWS, float3( 0,0,1 ), temp_output_53_0_g12974 );
				float lerpResult131_g12974 = lerp( lerpResult80_g12974 , (rotatedValue134_g12974).y , (float)saturate( ( temp_output_83_0_g12974 - 1 ) ));
				float temp_output_24_0_g12974 = ( ( 1.0 - _RainbowHueRange ) * 0.5 );
				float3 hsvTorgb3_g12974 = HSVToRGB( float3(( (temp_output_24_0_g12974 + (sin( ( EmissionGlowAnimation67_g12974 + ( lerpResult131_g12974 * _RainbowScale ) ) ) - -1.0) * (( 1.0 - temp_output_24_0_g12974 ) - temp_output_24_0_g12974) / (1.0 - -1.0)) + _RainbowHue ),_RainbowSaturation,_RainbowValue) );
				float3 Rainbow2089 = hsvTorgb3_g12974;
				float3 lerpResult2139 = lerp( temp_cast_5 , Rainbow2089 , _RainbowStardust);
				#ifdef _RAINBOW_ON
				float3 staticSwitch2140 = lerpResult2139;
				#else
				float3 staticSwitch2140 = temp_cast_4;
				#endif
				float2 vertexToFrag51_g12809 = i.ase_texcoord8.xy;
				float4 temp_output_835_0 = ( _Color * tex2D( _MainTex, vertexToFrag51_g12809 ) );
				float3 temp_output_845_0 = (temp_output_835_0).rgb;
				float3 temp_cast_11 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_4_0_g12960 = mul( pow( mul( _DreamweaveColor01, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_11 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 temp_cast_12 = (( 1.0 / 3.0 )).xxx;
				float3 temp_output_5_0_g12960 = mul( pow( mul( _DreamweaveColor02, float3x3(0.4121656,0.2118591,0.08830979,0.5362752,0.680719,0.2818474,0.05145757,0.1074066,0.6302614) ) , temp_cast_12 ), float3x3(0.2104543,1.977998,0.02590404,0.7936178,-2.428592,0.7827718,0.004072047,0.4505937,-0.8086758) );
				float3 normalizeResult59_g12960 = normalize( _DreamweaveAngle );
				float mulTime6_g12965 = _Time.y * _DreamweavePosSpeed;
				float DreamweaveSpeed80_g12960 = fmod( mulTime6_g12965 , 7200.0 );
				float2 temp_output_2_0_g12963 = _DreamweaveDistortionSpeed;
				float mulTime7_g12963 = _Time.y * (temp_output_2_0_g12963).x;
				float mulTime10_g12963 = _Time.y * (temp_output_2_0_g12963).y;
				float2 appendResult11_g12963 = (float2(mulTime7_g12963 , mulTime10_g12963));
				float3 tanNormal56_g12960 = BlendNormals( NormalMap1174 , UnpackScaleNormal( tex2D( _DetailNormal, ( (i.ase_texcoord7.xy*_DreamWeaveScale + _DreamWeaveOffset) + frac( appendResult11_g12963 ) ) ), _DreamweaveNormalScale ) );
				float3 worldNormal56_g12960 = float3( dot( tanToWorld0, tanNormal56_g12960 ), dot( tanToWorld1, tanNormal56_g12960 ), dot( tanToWorld2, tanNormal56_g12960 ) );
				float3 rotatedValue57_g12960 = RotateAroundAxis( float3( 0,0,0 ), worldNormal56_g12960, normalizeResult59_g12960, ( radians( _DreamweavePos ) + DreamweaveSpeed80_g12960 ) );
				float dotResult61_g12960 = dot( WorldView639 , rotatedValue57_g12960 );
				float temp_output_2_0_g12967 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - ( 21.0 - _DreamweaveSoftness ) ) * saturate( ( dotResult61_g12960 + _DreamweaveColorOffset ) ) ) , 2.0 ) );
				float temp_output_97_0_g12960 = temp_output_2_0_g12967;
				float3 lerpResult17_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , temp_output_97_0_g12960);
				float3 lerpResult85_g12960 = lerp( temp_output_4_0_g12960 , temp_output_5_0_g12960 , ( 1.0 - temp_output_97_0_g12960 ));
				float temp_output_117_0_g12960 = saturate( _DreamweaveSwapSpeed );
				float mulTime6_g12966 = _Time.y * _DreamweaveSwapFrequency;
				float smoothstepResult84_g12960 = smoothstep( (0.0 + (temp_output_117_0_g12960 - 0.0) * (0.5 - 0.0) / (1.0 - 0.0)) , (0.5 + (( 1.0 - temp_output_117_0_g12960 ) - 0.0) * (1.0 - 0.5) / (1.0 - 0.0)) , saturate( (0.0 + (sin( fmod( mulTime6_g12966 , 7200.0 ) ) - -1.0) * (1.0 - 0.0) / (1.0 - -1.0)) ));
				float3 lerpResult87_g12960 = lerp( lerpResult17_g12960 , lerpResult85_g12960 , ( step( 0.0001 , _DreamweaveSwapFrequency ) * smoothstepResult84_g12960 ));
				float3 temp_output_2_0_g12964 = mul( lerpResult87_g12960, float3x3(1,1,1,0.3963378,-0.1055613,-0.08948418,0.2158038,-0.06385417,-1.291486) );
				float3 temp_output_18_0_g12960 = mul( ( temp_output_2_0_g12964 * temp_output_2_0_g12964 * temp_output_2_0_g12964 ), float3x3(4.076742,-1.268438,-0.004196086,-3.307712,2.609757,-0.7034186,0.2309699,-0.3413194,1.707615) );
				float3 temp_output_123_0_g12960 = frac( (ase_positionWS*_DreamweaveGridTile + 0.0) );
				float2 appendResult10_g12968 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12968 = ( abs( ((temp_output_123_0_g12960).yz*2.0 + -1.0) ) - appendResult10_g12968 );
				float2 break16_g12968 = ( 1.0 - ( temp_output_11_0_g12968 / max( fwidth( temp_output_11_0_g12968 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult155_g12960 = dot( ase_normalWS , float3( 1,0,0 ) );
				float temp_output_2_0_g12973 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult155_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12969 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12969 = ( abs( ((temp_output_123_0_g12960).xy*2.0 + -1.0) ) - appendResult10_g12969 );
				float2 break16_g12969 = ( 1.0 - ( temp_output_11_0_g12969 / max( fwidth( temp_output_11_0_g12969 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult170_g12960 = dot( ase_normalWS , float3( 0,0,1 ) );
				float temp_output_2_0_g12971 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult170_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float2 appendResult10_g12970 = (float2(_DreamweaveGridThickness , _DreamweaveGridThickness));
				float2 temp_output_11_0_g12970 = ( abs( ((temp_output_123_0_g12960).xz*2.0 + -1.0) ) - appendResult10_g12970 );
				float2 break16_g12970 = ( 1.0 - ( temp_output_11_0_g12970 / max( fwidth( temp_output_11_0_g12970 ) , float2( 1E-05,1E-05 ) ) ) );
				float dotResult184_g12960 = dot( ase_normalWS , float3( 0,1,0 ) );
				float temp_output_2_0_g12972 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( abs( dotResult184_g12960 ) - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float temp_output_175_0_g12960 = saturate( ( ( ( saturate( min( break16_g12968.x , break16_g12968.y ) ) * ( 1.0 - temp_output_2_0_g12973 ) ) + ( saturate( min( break16_g12969.x , break16_g12969.y ) ) * ( 1.0 - temp_output_2_0_g12971 ) ) + ( saturate( min( break16_g12970.x , break16_g12970.y ) ) * ( 1.0 - temp_output_2_0_g12972 ) ) ) * 3.0 ) );
				float3 lerpResult120_g12960 = lerp( saturate( ( temp_output_18_0_g12960 + 0.25 ) ) , temp_output_18_0_g12960 , temp_output_175_0_g12960);
				float3 ase_viewDirWS = normalize( ase_viewVectorWS );
				float Workflow1249 = _Workflow;
				float OcclusionChannel1295_g12820 = _OcclusionChannel;
				float OcclusionMap1292_g12820 = _OcclusionMap;
				float4 temp_cast_13 = (1.0).xxxx;
				float4 Occlusion1RGBA301_g12820 = ( 4.0 == OcclusionMap1292_g12820 ? temp_cast_13 : ( 3.0 == OcclusionMap1292_g12820 ? MM04RGBA8_g12820 : ( 2.0 == OcclusionMap1292_g12820 ? MM03RGBA7_g12820 : ( 1.0 == OcclusionMap1292_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float OcclusionMapUnpacked1312 = ( 3.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).a : ( 2.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).b : ( 1.0 == OcclusionChannel1295_g12820 ? (Occlusion1RGBA301_g12820).g : (Occlusion1RGBA301_g12820).r ) ) );
				float lerpResult1311 = lerp( 1.0 , ( 1.0 <= Workflow1249 ? OcclusionMapUnpacked1312 : (MaskMap011220).g ) , _OcclusionPower);
				float Occlusion1309 = lerpResult1311;
				UnityGIInput data;
				UNITY_INITIALIZE_OUTPUT( UnityGIInput, data );
				data.worldPos = ase_positionWS;
				data.worldViewDir = ase_viewDirWS;
				data.probeHDR[0] = unity_SpecCube0_HDR;
				data.probeHDR[1] = unity_SpecCube1_HDR;
				#if UNITY_SPECCUBE_BLENDING || UNITY_SPECCUBE_BOX_PROJECTION //specdataif0
				data.boxMin[0] = unity_SpecCube0_BoxMin;
				#endif //specdataif0
				#if UNITY_SPECCUBE_BOX_PROJECTION //specdataif1
				data.boxMax[0] = unity_SpecCube0_BoxMax;
				data.probePosition[0] = unity_SpecCube0_ProbePosition;
				data.boxMax[1] = unity_SpecCube1_BoxMax;
				data.boxMin[1] = unity_SpecCube1_BoxMin;
				data.probePosition[1] = unity_SpecCube1_ProbePosition;
				#endif //specdataif1
				Unity_GlossyEnvironmentData g2463 = UnityGlossyEnvironmentSetup( 0.4, ase_viewDirWS, WorldNorm601, float3(0,0,0));
				float3 indirectSpecular2463 = UnityGI_IndirectSpecular( data, Occlusion1309, WorldNorm601, g2463 );
				float3 lerpResult2500 = lerp( float3( 0.5,0.5,0.5 ) , indirectSpecular2463 , 0.5);
				float dotResult2389 = dot( WorldNorm601 , WorldView639 );
				float temp_output_2_0_g12833 = pow( ( 1.0 / 2.71828 ) , pow( ( -( 1.0 - 2.0 ) * max( ( dotResult2389 - 0.4 ) , 0.0 ) ) , 2.0 ) );
				float smoothstepResult2413 = smoothstep( 0.65 , 0.655 , dotResult2389);
				#if defined( _LIGHTINGSTYLE_STANDARD )
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#elif defined( _LIGHTINGSTYLE_TOON )
				float staticSwitch2412 = smoothstepResult2413;
				#else
				float staticSwitch2412 = saturate( ( ( 1.0 - temp_output_2_0_g12833 ) * 3.5 ) );
				#endif
				float3 lerpResult2498 = lerp( lerpResult2500 , float3( 1.1,1.1,1.1 ) , staticSwitch2412);
				float3 Dreamweave1920 = ( lerpResult120_g12960 * lerpResult2498 );
				float DreamweaveChannel573_g12820 = _DreamweaveChannel;
				float DreamweaveMap572_g12820 = _DreamweaveMask;
				float4 temp_cast_14 = (1.0).xxxx;
				float4 DreamweaveRGBA574_g12820 = ( 4.0 == DreamweaveMap572_g12820 ? temp_cast_14 : ( 3.0 == DreamweaveMap572_g12820 ? MM04RGBA8_g12820 : ( 2.0 == DreamweaveMap572_g12820 ? MM03RGBA7_g12820 : ( 1.0 == DreamweaveMap572_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float DreamweaveMask1790 = ( 3.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).a : ( 2.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).b : ( 1.0 == DreamweaveChannel573_g12820 ? (DreamweaveRGBA574_g12820).g : (DreamweaveRGBA574_g12820).r ) ) );
				float3 lerpResult1918 = lerp( temp_output_845_0 , Dreamweave1920 , DreamweaveMask1790);
				#ifdef _DREAMWEAVE_ON
				float3 staticSwitch1780 = lerpResult1918;
				#else
				float3 staticSwitch1780 = temp_output_845_0;
				#endif
				float RainbowChannel704_g12820 = _RainbowChannel;
				float RainbowMap703_g12820 = _RainbowMask;
				float4 temp_cast_15 = (0.0).xxxx;
				float4 temp_cast_16 = (1.0).xxxx;
				float4 RainbowRGBA705_g12820 = ( 5.0 == RainbowMap703_g12820 ? temp_cast_15 : ( 4.0 == RainbowMap703_g12820 ? temp_cast_16 : ( 3.0 == RainbowMap703_g12820 ? MM04RGBA8_g12820 : ( 2.0 == RainbowMap703_g12820 ? MM03RGBA7_g12820 : ( 1.0 == RainbowMap703_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) ) );
				float RainbowMask2094 = ( 3.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).a : ( 2.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).b : ( 1.0 == RainbowChannel704_g12820 ? (RainbowRGBA705_g12820).g : (RainbowRGBA705_g12820).r ) ) );
				float3 lerpResult2095 = lerp( staticSwitch1780 , Rainbow2089 , RainbowMask2094);
				#ifdef _RAINBOW_ON
				float3 staticSwitch2098 = lerpResult2095;
				#else
				float3 staticSwitch2098 = staticSwitch1780;
				#endif
				float EmissionMaskChannel395_g12820 = _EmissionMaskChannel;
				float EmissionMaskMap394_g12820 = _EmissionMaskMap;
				float4 temp_cast_17 = (1.0).xxxx;
				float4 EmissionMaskRGBA396_g12820 = ( 4.0 == EmissionMaskMap394_g12820 ? temp_cast_17 : ( 3.0 == EmissionMaskMap394_g12820 ? MM04RGBA8_g12820 : ( 2.0 == EmissionMaskMap394_g12820 ? MM03RGBA7_g12820 : ( 1.0 == EmissionMaskMap394_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float EmissionMask1427 = ( 3.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).a : ( 2.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).b : ( 1.0 == EmissionMaskChannel395_g12820 ? (EmissionMaskRGBA396_g12820).g : (EmissionMaskRGBA396_g12820).r ) ) );
				float2 vertexToFrag51_g12830 = i.ase_texcoord8.zw;
				float3 EmissionColor849 = ( _EmissionColor * tex2D( _EmissionMap, vertexToFrag51_g12830 ).rgb );
				float3 temp_output_1514_0 = ( EmissionMask1427 * EmissionColor849 );
				float3 lerpResult1512 = lerp( staticSwitch2098 , ( ( staticSwitch2098 - temp_output_1514_0 ) + temp_output_1514_0 ) , ( _ReplaceBaseColor * EmissionMask1427 ));
				float3 MainTexMultiplied1688 = temp_output_845_0;
				float3 lerpResult54_g13099 = lerp( _StarshineColor , MainTexMultiplied1688 , _StarshineBaseColor);
				float SpecularTintMap2236 = _SpecularTintMap;
				float3 BaseColorB4Starshine2227 = lerpResult1512;
				float3 temp_cast_18 = (1.0).xxx;
				float3 SpecularTintUnpacked1444 = ( 5.0 == SpecularTintMap2236 ? BaseColorB4Starshine2227 : ( 4.0 == SpecularTintMap2236 ? temp_cast_18 : ( 3.0 == SpecularTintMap2236 ? (MaskMap041244).rgb : ( 2.0 == SpecularTintMap2236 ? (MaskMap031239).rgb : ( 1.0 == SpecularTintMap2236 ? (MaskMap021234).rgb : (MaskMap011220).rgb ) ) ) ) );
				float3 temp_cast_19 = (1.0).xxx;
				float3 SpecularTint1463 = ( _SpecularTint * ( 2.0 == Workflow1249 ? SpecularTintUnpacked1444 : ( 1.0 == Workflow1249 ? temp_cast_19 : (MaskMap011220).rgb ) ) );
				float3 temp_output_69_0_g13099 = ( lerpResult54_g13099 * SpecularTint1463 );
				float3 temp_output_28_0_g13099 = ( (1.0 + (_StarshineMetallic - 0.0) * (0.1 - 1.0) / (1.0 - 0.0)) * temp_output_69_0_g13099 );
				float3 StartColor64_g13099 = temp_output_28_0_g13099;
				float3 StarshineAlbedo1655 = StartColor64_g13099;
				float StarshineChannel541_g12820 = _StarshineChannel;
				float StarshineMap540_g12820 = _StarshineMask;
				float4 temp_cast_20 = (1.0).xxxx;
				float4 StarshineRGBA544_g12820 = ( 4.0 == StarshineMap540_g12820 ? temp_cast_20 : ( 3.0 == StarshineMap540_g12820 ? MM04RGBA8_g12820 : ( 2.0 == StarshineMap540_g12820 ? MM03RGBA7_g12820 : ( 1.0 == StarshineMap540_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float StarshineMask1660 = ( 3.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).a : ( 2.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).b : ( 1.0 == StarshineChannel541_g12820 ? (StarshineRGBA544_g12820).g : (StarshineRGBA544_g12820).r ) ) );
				float3 lerpResult1663 = lerp( lerpResult1512 , StarshineAlbedo1655 , StarshineMask1660);
				#ifdef _STARSHINE_ON
				float3 staticSwitch1765 = lerpResult1663;
				#else
				float3 staticSwitch1765 = lerpResult1512;
				#endif
				float3 BaseColor579 = staticSwitch1765;
				float3 lerpResult2141 = lerp( float3( 1,1,1 ) , BaseColor579 , _StardustBaseColor);
				float time1957 = 1.5;
				float2 voronoiSmoothId1957 = 0;
				float2 vertexToFrag51_g12834 = i.ase_texcoord9.xy;
				float2 StardustUV2746 = ( vertexToFrag51_g12834 * _StarShellSparkleScale );
				float2 coords1957 = StardustUV2746 * 1.0;
				float2 id1957 = 0;
				float2 uv1957 = 0;
				float voroi1957 = voronoi1957( coords1957, time1957, id1957, uv1957, 0, voronoiSmoothId1957 );
				float smoothstepResult2712 = smoothstep( 0.9 , 1.0 , ( 1.0 - voroi1957 ));
				float PixelSize2749 = ( ( ( length( ddx( StardustUV2746 ) ) + length( ddy( StardustUV2746 ) ) ) * 0.5 ) * ( 1.0 * 0.5 ) );
				float ScreenspaceSizeClip2756 = _SizeClip;
				float lerpResult2760 = lerp( 0.0 , PixelSize2749 , ScreenspaceSizeClip2756);
				float mulTime6_g13114 = _Time.y * _StarShellSparkleSpeed;
				float2 voronoiID2752 = id1957;
				float simplePerlin2D2671 = snoise( ( ( fmod( mulTime6_g13114 , 7200.0 ) / 64.0 ) + voronoiID2752 )*32.0 );
				simplePerlin2D2671 = simplePerlin2D2671*0.5 + 0.5;
				float temp_output_2680_0 = max( lerpResult2760 , ( _SparkleSize * simplePerlin2D2671 ) );
				float SparkleWidth2744 = temp_output_2680_0;
				float smoothstepResult2658 = smoothstep( ( 0.01 + temp_output_2680_0 ) , ( SparkleWidth2744 - 0.01 ) , length( uv1957 ));
				float smoothstepResult2682 = smoothstep( (2.0 + (_StarshellDensity - 0.0) * (0.0 - 2.0) / (2.0 - 0.0)) , 2.0 , ( 2.0 * simplePerlin2D2671 ));
				float smoothstepResult2694 = smoothstep( 0.25 , 1.0 , simplePerlin2D2671);
				float smoothstepResult2726 = smoothstep( 0.0 , 0.3 , ( 1.0 - saturate( ( PixelSize2749 + 0.75 ) ) ));
				float lerpResult2757 = lerp( 1.0 , smoothstepResult2726 , ScreenspaceSizeClip2756);
				float temp_output_2681_0 = ( smoothstepResult2712 * smoothstepResult2658 * smoothstepResult2682 * smoothstepResult2694 * lerpResult2757 );
				float4 appendResult1965 = (float4(( _StarshellColor * staticSwitch2140 * lerpResult2141 * temp_output_2681_0 ) , temp_output_2681_0));
				float4 temp_output_2005_0 = ( StarshellMask2004 * appendResult1965 );
				float4 lerpResult2754 = lerp( temp_output_2005_0 , ( SparkleWidth2744 > ( 0.25 + 0.05 ) ? float4( 0,0,0,0 ) : temp_output_2005_0 ) , ScreenspaceSizeClip2756);
				float2 temp_output_2_0_g13109 = _ConstellationSpeed;
				float mulTime7_g13109 = _Time.y * (temp_output_2_0_g13109).x;
				float mulTime10_g13109 = _Time.y * (temp_output_2_0_g13109).y;
				float2 appendResult11_g13109 = (float2(mulTime7_g13109 , mulTime10_g13109));
				float2 temp_output_2969_0 = fmod( appendResult11_g13109 , float2( 7200,7200 ) );
				float2 uv_Constellation = i.ase_texcoord7.xy * _Constellation_ST.xy + _Constellation_ST.zw;
				float2 temp_output_3003_0 = ( temp_output_2969_0 + uv_Constellation );
				float2 temp_output_2971_0 = floor( temp_output_3003_0 );
				float simplePerlin2D3005 = snoise( temp_output_2971_0 );
				float3 appendResult3042 = (float3(simplePerlin2D3005 , simplePerlin2D3005 , simplePerlin2D3005));
				float3 temp_output_3041_0 = frac( ( appendResult3042 * float3(0.1031,0.103,0.0973) ) );
				float dotResult3045 = dot( temp_output_3041_0 , ( (temp_output_3041_0).yzx + 33.33 ) );
				float3 temp_output_3049_0 = ( temp_output_3041_0 + dotResult3045 );
				float2 appendResult3037 = (float2(floor( (float2( 0,0 ) + (frac( ( ( (temp_output_3049_0).xx + (temp_output_3049_0).yz ) * (temp_output_3049_0).zy ) ) - float2( 0,0 )) * (float2( 2,2 ) - float2( 0,0 )) / (float2( 1,1 ) - float2( 0,0 ))) )));
				float cos3063 = cos( radians( (0.0 + (simplePerlin2D3005 - -1.0) * (360.0 - 0.0) / (1.0 - -1.0)) ) );
				float sin3063 = sin( radians( (0.0 + (simplePerlin2D3005 - -1.0) * (360.0 - 0.0) / (1.0 - -1.0)) ) );
				float2 rotator3063 = mul( ( appendResult3037 + frac( ( uv_Constellation + temp_output_2969_0 ) ) ) - ( appendResult3037 + float2( 0.5,0.5 ) ) , float2x2( cos3063 , -sin3063 , sin3063 , cos3063 )) + ( appendResult3037 + float2( 0.5,0.5 ) );
				float4 tex2DNode2972 = tex2D( _Constellation, ( rotator3063 / _SheetSize ) );
				float2 appendResult10_g13112 = (float2(0.8 , 0.8));
				float2 temp_output_11_0_g13112 = ( abs( (frac( ( temp_output_2969_0 + uv_Constellation ) )*2.0 + -1.0) ) - appendResult10_g13112 );
				float2 break16_g13112 = ( 1.0 - ( temp_output_11_0_g13112 / max( fwidth( temp_output_11_0_g13112 ) , float2( 1E-05,1E-05 ) ) ) );
				float temp_output_3021_0 = saturate( min( break16_g13112.x , break16_g13112.y ) );
				float mulTime6_g13113 = _Time.y * _FadeFreqency;
				float simplePerlin2D2975 = snoise( ( temp_output_2971_0 + fmod( mulTime6_g13113 , 7200.0 ) ) );
				float smoothstepResult2979 = smoothstep( ( 2.0 - _ConstellationAmount ) , 2.0 , ( simplePerlin2D2975 + 1.0 ));
				float smoothstepResult2986 = smoothstep( 0.0 , 0.1 , smoothstepResult2979);
				float smoothstepResult3091 = smoothstep( 0.0 , 0.3 , ( 1.0 - saturate( ( ( ( ( length( ddx( temp_output_3003_0 ) ) + length( ddy( temp_output_3003_0 ) ) ) * 0.5 ) * ( 1.0 * 0.5 ) ) + 0.875 ) ) ));
				float4 appendResult2982 = (float4(( ( _ConstellationColor * tex2DNode2972.rgb * temp_output_3021_0 ) * smoothstepResult2986 * smoothstepResult3091 ) , ( tex2DNode2972.a * smoothstepResult2986 * temp_output_3021_0 * smoothstepResult3091 )));
				float4 Constellation2981 = appendResult2982;
				#ifdef _CONSTELLATION_ON
				float4 staticSwitch2988 = ( lerpResult2754 + ( Constellation2981 * StarshellMask2004 ) );
				#else
				float4 staticSwitch2988 = lerpResult2754;
				#endif
				#ifdef _STARSHELL_ON
				float4 staticSwitch1998 = ( smoothstepResult2716 * staticSwitch2988 );
				#else
				float4 staticSwitch1998 = float4( 0,0,0,0 );
				#endif
				
				
				finalColor = staticSwitch1998;
				float Alpha = finalColor.a;
				//#ifdef _ALPHATEST_ON
					clip( Alpha - 0.001 );
				//#endif
				return finalColor;
			}
			ENDCG
		}


Pass
		{
			Name "shadowcaster"
			Tags { "LightMode"="shadowcaster" }
		ZWrite On
			ZTest LEqual
		
	CGPROGRAM




			#define ASE_NEEDS_FRAG_SHADOWCOORDS
			#pragma multi_compile_fog
			#define ASE_FOG 1
			#define ASE_ABSOLUTE_VERTEX_POS 1
			#define ASE_VERSION 19801





			#pragma vertex vert
			#pragma fragment frag
			#pragma multi_compile_shadowcaster
			#pragma multi_compile _ SHADOWS_SCREEN
			#pragma multi_compile _ VERTEXLIGHT_ON
		#ifndef UNITY_PASS_SHADOWCASTER
				#define UNITY_PASS_SHADOWCASTER
			#endif
			#include "HLSLSupport.cginc"
			#ifndef UNITY_INSTANCED_LOD_FADE
				#define UNITY_INSTANCED_LOD_FADE
			#endif
			#ifndef UNITY_INSTANCED_SH
				#define UNITY_INSTANCED_SH
			#endif
			#ifndef UNITY_INSTANCED_LIGHTMAPSTS
				#define UNITY_INSTANCED_LIGHTMAPSTS
			#endif
			
		
			#include "UnityShaderVariables.cginc"
			#include "UnityCG.cginc"
			#include "Lighting.cginc"
			#include "UnityPBSLighting.cginc"
			#include "AutoLight.cginc"
			//#include "UnityStandardCore.cginc"
			#include "UnityStandardBRDF.cginc"


			#define ASE_NEEDS_VERT_POSITION
			#pragma shader_feature_local _LIGHTINGSTYLE_STANDARD _LIGHTINGSTYLE_TOON
			#pragma shader_feature _ALPHAPREMULTIPLY_ON
			#include "Packages/com.llealloo.audiolink/Runtime/Shaders/AudioLink.cginc"

			struct appdata {
				float4 vertex : POSITION;
				float4 tangent : TANGENT;
				float3 normal : NORMAL;
				float4 texcoord1 : TEXCOORD1;
				float4 texcoord2 : TEXCOORD2;
		
				
				
				float4 ase_texcoord4 : TEXCOORD4;
				float4 ase_texcoord3 : TEXCOORD3;
				float4 ase_texcoord : TEXCOORD0;
				UNITY_VERTEX_INPUT_INSTANCE_ID
			};

			struct v2f {
				#if UNITY_VERSION >= 201810
					UNITY_POSITION(pos);
				#else
					float4 pos : SV_POSITION;
				#endif
				#if defined(UNITY_HALF_PRECISION_FRAGMENT_SHADER_REGISTERS) && UNITY_VERSION >= 201810 && defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHTING_COORDS(2,3)
				#elif defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					#if UNITY_VERSION >= 201710
						UNITY_SHADOW_COORDS(2)
					#else
						SHADOW_COORDS(2)
					#endif
				#endif
				#ifdef ASE_FOG
					UNITY_FOG_COORDS(4)
				#endif
				float4 tSpace0 : TEXCOORD5;
				float4 tSpace1 : TEXCOORD6;
				float4 tSpace2 : TEXCOORD7;
				float4 ase_texcoord8 : TEXCOORD8;
				float4 ase_texcoord9 : TEXCOORD9;
				float4 ase_texcoord10 : TEXCOORD10;
				UNITY_VERTEX_INPUT_INSTANCE_ID
				UNITY_VERTEX_OUTPUT_STEREO
			};

		
			uniform float _OutlineChannel;
			uniform float _OutlineMask;
			uniform float _DreamweaveMask;
			uniform float _DreamweaveChannel;
			uniform float _StarshellChannel;
			uniform float _StarshellMask;
			uniform float _StardustHeightMap;
			uniform float _StardustHeightCh;
			uniform float _RainbowChannel;
			uniform float _RainbowMask;
			uniform float _FabricLightChannel;
			uniform float _FabricLightMap;
			uniform float _ConstellationChannel;
			uniform float _ConstellationMask;
			uniform float _BlendModeIndex;
			uniform float _Culling;
			uniform float _BlendOPsrc;
			uniform float _BlendOPdst;
			uniform float _BlendOPIndex;
			uniform float _ShowMaps;
			uniform float _ShowLighting;
			uniform float _ShowEmission;
			uniform float _ShowEmission01;
			uniform float _ShowEmissionMain;
			uniform float _ShowEmission02;
			uniform float _ShowEmission03;
			uniform float _ShowEmission04;
			uniform float _ShowTileDiscard;
			uniform float _ShowEffects;
			uniform float _ShowStarshine;
			uniform float _ShowDreamweave;
			uniform float _ShowOutline;
			uniform float _ShowStarshell;
			uniform float _ZWrite;
			uniform float _BlendOpRGB;
			uniform float _StencilReference;
			uniform float3 _FavoriteColor;
			uniform float _DestinationBlendRGB;
			uniform float _SourceBlendRGB;
			uniform float _ShowRainbow;
			uniform float _ShowRedGlow;
			uniform float _ShowRedAL;
			uniform float _ShowEmissGlow;
			uniform float _ShowEmissAL;
			uniform float _ShowGreenGlow;
			uniform float _ShowGreenAL;
			uniform float _ShowBlueGlow;
			uniform float _ShowBlueAL;
			uniform float _ShowAlphaGlow;
			uniform float _ShowAlphaAL;
			uniform float _ShowMain;
			uniform float _ShowConstellation;
			uniform float _StardustZwrite;
			uniform float _TileDiscardUV;
			uniform float _UVTileDissolveAlpha_Row0_0;
			uniform float _UDIMDiscardRow0_0;
			uniform float _UVTileDissolveAlpha_Row0_1;
			uniform float _UDIMDiscardRow0_1;
			uniform float _UVTileDissolveAlpha_Row0_2;
			uniform float _UDIMDiscardRow0_2;
			uniform float _UVTileDissolveAlpha_Row0_3;
			uniform float _UDIMDiscardRow0_3;
			uniform float _UVTileDissolveAlpha_Row1_0;
			uniform float _UDIMDiscardRow1_0;
			uniform float _UVTileDissolveAlpha_Row1_1;
			uniform float _UDIMDiscardRow1_1;
			uniform float _UVTileDissolveAlpha_Row1_2;
			uniform float _UDIMDiscardRow1_2;
			uniform float _UVTileDissolveAlpha_Row1_3;
			uniform float _UDIMDiscardRow1_3;
			uniform float _UVTileDissolveAlpha_Row2_0;
			uniform float _UDIMDiscardRow2_0;
			uniform float _UVTileDissolveAlpha_Row2_1;
			uniform float _UDIMDiscardRow2_1;
			uniform float _UVTileDissolveAlpha_Row2_2;
			uniform float _UDIMDiscardRow2_2;
			uniform float _UVTileDissolveAlpha_Row2_3;
			uniform float _UDIMDiscardRow2_3;
			uniform float _UVTileDissolveAlpha_Row3_0;
			uniform float _UDIMDiscardRow3_0;
			uniform float _UVTileDissolveAlpha_Row3_1;
			uniform float _UDIMDiscardRow3_1;
			uniform float _UVTileDissolveAlpha_Row3_2;
			uniform float _UDIMDiscardRow3_2;
			uniform float _UVTileDissolveAlpha_Row3_3;
			uniform float _UDIMDiscardRow3_3;
			uniform float _OpacityMap;
			uniform float4 _Color;
			uniform sampler2D _MainTex;
			uniform float _MainTexUV;
			uniform float4 _MainTex_ST;
			uniform float2 _AnimatedOffsetMainTex;
			uniform float _OpacityChannel;
			uniform sampler2D _MaskMap04;
			uniform float _MaskMap04UV;
			uniform float4 _MaskMap04_ST;
			uniform float2 _AnimatedOffsetMaskMap04;
			uniform sampler2D _MaskMap03;
			uniform float _MaskMap03UV;
			uniform float4 _MaskMap03_ST;
			uniform float2 _AnimatedOffsetMaskMap03;
			uniform sampler2D _MaskMap02;
			uniform float _MaskMap02UV;
			uniform float4 _MaskMap02_ST;
			uniform float2 _AnimatedOffsetMaskMap02;
			uniform sampler2D _MaskMap01;
			uniform float _MaskMap01UV;
			uniform float4 _MaskMap01_ST;
			uniform float2 _AnimatedOffsetMaskMap01;
			uniform float _MaskClipValue;


			float3 ProbeDir(  )
			{
				return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b);
			}
			
			float3 getThemeData( int Zone )
			{
				float3 result = lerp(AudioLinkData(ALPASS_THEME_COLOR0),AudioLinkData(ALPASS_THEME_COLOR1),saturate(Zone));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR2),saturate(Zone-1));
				result = lerp(result,AudioLinkData(ALPASS_THEME_COLOR3),saturate(Zone-2));
				return result;
			}
			

			v2f VertexFunction (appdata v  ) {
				UNITY_SETUP_INSTANCE_ID(v);
				v2f o;
				UNITY_INITIALIZE_OUTPUT(v2f,o);
				UNITY_TRANSFER_INSTANCE_ID(v,o);
				UNITY_INITIALIZE_VERTEX_OUTPUT_STEREO(o);

				float2 _Vector4 = float2(0,0);
				float Index58_g12818 = _TileDiscardUV;
				float2 temp_output_53_0_g12818 = ( ( 4.0 == Index58_g12818 ? v.ase_texcoord4.xy : ( 3.0 == Index58_g12818 ? v.ase_texcoord3.xy : ( 2.0 == Index58_g12818 ? v.texcoord2.xyzw.xy : ( 1.0 == Index58_g12818 ? v.texcoord1.xyzw.xy : v.ase_texcoord.xy ) ) ) ) + float2( 0,0 ) );
				float2 vertexToFrag51_g12818 = temp_output_53_0_g12818;
				float2 TileDiscardUVs18_g12819 = ( vertexToFrag51_g12818 + -1.0 );
				float2 break10_g12819 = TileDiscardUVs18_g12819;
				float Row0Col071_g12819 = saturate( ( max( max( step( _Vector4.x , break10_g12819.x ) , step( -( _Vector4.x - 1.0 ) , -break10_g12819.x ) ) , max( step( _Vector4.y , break10_g12819.y ) , step( -( _Vector4.y - 1.0 ) , -break10_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_0 ) * ( 1.0 - _UDIMDiscardRow0_0 ) ) ) );
				float2 _Vector5 = float2(1,0);
				float2 break82_g12819 = TileDiscardUVs18_g12819;
				float Row0Col189_g12819 = saturate( ( max( max( step( _Vector5.x , break82_g12819.x ) , step( -( _Vector5.x - 1.0 ) , -break82_g12819.x ) ) , max( step( _Vector5.y , break82_g12819.y ) , step( -( _Vector5.y - 1.0 ) , -break82_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_1 ) * ( 1.0 - _UDIMDiscardRow0_1 ) ) ) );
				float2 _Vector6 = float2(2,0);
				float2 break100_g12819 = TileDiscardUVs18_g12819;
				float Row0Col2106_g12819 = saturate( ( max( max( step( _Vector6.x , break100_g12819.x ) , step( -( _Vector6.x - 1.0 ) , -break100_g12819.x ) ) , max( step( _Vector6.y , break100_g12819.y ) , step( -( _Vector6.y - 1.0 ) , -break100_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_2 ) * ( 1.0 - _UDIMDiscardRow0_2 ) ) ) );
				float2 _Vector7 = float2(3,0);
				float2 break118_g12819 = TileDiscardUVs18_g12819;
				float Row0Col3124_g12819 = saturate( ( max( max( step( _Vector7.x , break118_g12819.x ) , step( -( _Vector7.x - 1.0 ) , -break118_g12819.x ) ) , max( step( _Vector7.y , break118_g12819.y ) , step( -( _Vector7.y - 1.0 ) , -break118_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row0_3 ) * ( 1.0 - _UDIMDiscardRow0_3 ) ) ) );
				float2 _Vector8 = float2(0,1);
				float2 break141_g12819 = TileDiscardUVs18_g12819;
				float Row1Col0148_g12819 = saturate( ( max( max( step( _Vector8.x , break141_g12819.x ) , step( -( _Vector8.x - 1.0 ) , -break141_g12819.x ) ) , max( step( _Vector8.y , break141_g12819.y ) , step( -( _Vector8.y - 1.0 ) , -break141_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_0 ) * ( 1.0 - _UDIMDiscardRow1_0 ) ) ) );
				float2 _Vector9 = float2(1,1);
				float2 break159_g12819 = TileDiscardUVs18_g12819;
				float Row1Col1165_g12819 = saturate( ( max( max( step( _Vector9.x , break159_g12819.x ) , step( -( _Vector9.x - 1.0 ) , -break159_g12819.x ) ) , max( step( _Vector9.y , break159_g12819.y ) , step( -( _Vector9.y - 1.0 ) , -break159_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_1 ) * ( 1.0 - _UDIMDiscardRow1_1 ) ) ) );
				float2 _Vector10 = float2(2,1);
				float2 break177_g12819 = TileDiscardUVs18_g12819;
				float Row1Col2183_g12819 = saturate( ( max( max( step( _Vector10.x , break177_g12819.x ) , step( -( _Vector10.x - 1.0 ) , -break177_g12819.x ) ) , max( step( _Vector10.y , break177_g12819.y ) , step( -( _Vector10.y - 1.0 ) , -break177_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_2 ) * ( 1.0 - _UDIMDiscardRow1_2 ) ) ) );
				float2 _Vector11 = float2(3,1);
				float2 break195_g12819 = TileDiscardUVs18_g12819;
				float Row1Col3201_g12819 = saturate( ( max( max( step( _Vector11.x , break195_g12819.x ) , step( -( _Vector11.x - 1.0 ) , -break195_g12819.x ) ) , max( step( _Vector11.y , break195_g12819.y ) , step( -( _Vector11.y - 1.0 ) , -break195_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row1_3 ) * ( 1.0 - _UDIMDiscardRow1_3 ) ) ) );
				float2 _Vector12 = float2(0,2);
				float2 break222_g12819 = TileDiscardUVs18_g12819;
				float Row2Col0229_g12819 = saturate( ( max( max( step( _Vector12.x , break222_g12819.x ) , step( -( _Vector12.x - 1.0 ) , -break222_g12819.x ) ) , max( step( _Vector12.y , break222_g12819.y ) , step( -( _Vector12.y - 1.0 ) , -break222_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_0 ) * ( 1.0 - _UDIMDiscardRow2_0 ) ) ) );
				float2 _Vector13 = float2(1,2);
				float2 break239_g12819 = TileDiscardUVs18_g12819;
				float Row2Col1245_g12819 = saturate( ( max( max( step( _Vector13.x , break239_g12819.x ) , step( -( _Vector13.x - 1.0 ) , -break239_g12819.x ) ) , max( step( _Vector13.y , break239_g12819.y ) , step( -( _Vector13.y - 1.0 ) , -break239_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_1 ) * ( 1.0 - _UDIMDiscardRow2_1 ) ) ) );
				float2 _Vector14 = float2(2,2);
				float2 break256_g12819 = TileDiscardUVs18_g12819;
				float Row2Col2262_g12819 = saturate( ( max( max( step( _Vector14.x , break256_g12819.x ) , step( -( _Vector14.x - 1.0 ) , -break256_g12819.x ) ) , max( step( _Vector14.y , break256_g12819.y ) , step( -( _Vector14.y - 1.0 ) , -break256_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_2 ) * ( 1.0 - _UDIMDiscardRow2_2 ) ) ) );
				float2 _Vector15 = float2(3,2);
				float2 break273_g12819 = TileDiscardUVs18_g12819;
				float Row2Col3279_g12819 = saturate( ( max( max( step( _Vector15.x , break273_g12819.x ) , step( -( _Vector15.x - 1.0 ) , -break273_g12819.x ) ) , max( step( _Vector15.y , break273_g12819.y ) , step( -( _Vector15.y - 1.0 ) , -break273_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row2_3 ) * ( 1.0 - _UDIMDiscardRow2_3 ) ) ) );
				float2 _Vector19 = float2(0,3);
				float2 break294_g12819 = TileDiscardUVs18_g12819;
				float Row3Col0352_g12819 = saturate( ( max( max( step( _Vector19.x , break294_g12819.x ) , step( -( _Vector19.x - 1.0 ) , -break294_g12819.x ) ) , max( step( _Vector19.y , break294_g12819.y ) , step( -( _Vector19.y - 1.0 ) , -break294_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_0 ) * ( 1.0 - _UDIMDiscardRow3_0 ) ) ) );
				float2 _Vector16 = float2(1,3);
				float2 break309_g12819 = TileDiscardUVs18_g12819;
				float Row3Col1351_g12819 = saturate( ( max( max( step( _Vector16.x , break309_g12819.x ) , step( -( _Vector16.x - 1.0 ) , -break309_g12819.x ) ) , max( step( _Vector16.y , break309_g12819.y ) , step( -( _Vector16.y - 1.0 ) , -break309_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_1 ) * ( 1.0 - _UDIMDiscardRow3_1 ) ) ) );
				float2 _Vector17 = float2(2,3);
				float2 break325_g12819 = TileDiscardUVs18_g12819;
				float Row3Col2350_g12819 = saturate( ( max( max( step( _Vector17.x , break325_g12819.x ) , step( -( _Vector17.x - 1.0 ) , -break325_g12819.x ) ) , max( step( _Vector17.y , break325_g12819.y ) , step( -( _Vector17.y - 1.0 ) , -break325_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_2 ) * ( 1.0 - _UDIMDiscardRow3_2 ) ) ) );
				float2 _Vector18 = float2(3,3);
				float2 break341_g12819 = TileDiscardUVs18_g12819;
				float Row3Col3349_g12819 = saturate( ( max( max( step( _Vector18.x , break341_g12819.x ) , step( -( _Vector18.x - 1.0 ) , -break341_g12819.x ) ) , max( step( _Vector18.y , break341_g12819.y ) , step( -( _Vector18.y - 1.0 ) , -break341_g12819.y ) ) ) + ( ( 1.0 - _UVTileDissolveAlpha_Row3_3 ) * ( 1.0 - _UDIMDiscardRow3_3 ) ) ) );
				float VertexDiscardOutput1202 = ( ( ( Row0Col071_g12819 * Row0Col189_g12819 * Row0Col2106_g12819 * Row0Col3124_g12819 ) * ( Row1Col0148_g12819 * Row1Col1165_g12819 * Row1Col2183_g12819 * Row1Col3201_g12819 ) ) * ( ( Row2Col0229_g12819 * Row2Col1245_g12819 * Row2Col2262_g12819 * Row2Col3279_g12819 ) * ( Row3Col0352_g12819 * Row3Col1351_g12819 * Row3Col2350_g12819 * Row3Col3349_g12819 ) ) );
				float3 temp_cast_0 = (( 0.0 / 0.0 )).xxx;
				float3 VertexDiscard1197 = ( VertexDiscardOutput1202 < 0.001 ? temp_cast_0 : v.vertex.xyz );
				
				float Index58_g12809 = _MainTexUV;
				float2 Tiling60_g12809 = _MainTex_ST.xy;
				float2 Offset61_g12809 = _MainTex_ST.zw;
				float2 temp_output_2_0_g12808 = _AnimatedOffsetMainTex;
				float mulTime7_g12808 = _Time.y * (temp_output_2_0_g12808).x;
				float mulTime10_g12808 = _Time.y * (temp_output_2_0_g12808).y;
				float2 appendResult11_g12808 = (float2(mulTime7_g12808 , mulTime10_g12808));
				float2 temp_output_53_0_g12809 = ( ( 4.0 == Index58_g12809 ? (v.ase_texcoord4.xy*Tiling60_g12809 + Offset61_g12809) : ( 3.0 == Index58_g12809 ? (v.ase_texcoord3.xy*Tiling60_g12809 + Offset61_g12809) : ( 2.0 == Index58_g12809 ? (v.texcoord2.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : ( 1.0 == Index58_g12809 ? (v.texcoord1.xyzw.xy*Tiling60_g12809 + Offset61_g12809) : (v.ase_texcoord.xy*Tiling60_g12809 + Offset61_g12809) ) ) ) ) + frac( appendResult11_g12808 ) );
				float2 vertexToFrag51_g12809 = temp_output_53_0_g12809;
				o.ase_texcoord8.xy = vertexToFrag51_g12809;
				float Index58_g12817 = _MaskMap04UV;
				float2 Tiling60_g12817 = _MaskMap04_ST.xy;
				float2 Offset61_g12817 = _MaskMap04_ST.zw;
				float2 temp_output_2_0_g12813 = _AnimatedOffsetMaskMap04;
				float mulTime7_g12813 = _Time.y * (temp_output_2_0_g12813).x;
				float mulTime10_g12813 = _Time.y * (temp_output_2_0_g12813).y;
				float2 appendResult11_g12813 = (float2(mulTime7_g12813 , mulTime10_g12813));
				float2 temp_output_53_0_g12817 = ( ( 4.0 == Index58_g12817 ? (v.ase_texcoord4.xy*Tiling60_g12817 + Offset61_g12817) : ( 3.0 == Index58_g12817 ? (v.ase_texcoord3.xy*Tiling60_g12817 + Offset61_g12817) : ( 2.0 == Index58_g12817 ? (v.texcoord2.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : ( 1.0 == Index58_g12817 ? (v.texcoord1.xyzw.xy*Tiling60_g12817 + Offset61_g12817) : (v.ase_texcoord.xy*Tiling60_g12817 + Offset61_g12817) ) ) ) ) + frac( appendResult11_g12813 ) );
				float2 vertexToFrag51_g12817 = temp_output_53_0_g12817;
				o.ase_texcoord8.zw = vertexToFrag51_g12817;
				float Index58_g12816 = _MaskMap03UV;
				float2 Tiling60_g12816 = _MaskMap03_ST.xy;
				float2 Offset61_g12816 = _MaskMap03_ST.zw;
				float2 temp_output_2_0_g12812 = _AnimatedOffsetMaskMap03;
				float mulTime7_g12812 = _Time.y * (temp_output_2_0_g12812).x;
				float mulTime10_g12812 = _Time.y * (temp_output_2_0_g12812).y;
				float2 appendResult11_g12812 = (float2(mulTime7_g12812 , mulTime10_g12812));
				float2 temp_output_53_0_g12816 = ( ( 4.0 == Index58_g12816 ? (v.ase_texcoord4.xy*Tiling60_g12816 + Offset61_g12816) : ( 3.0 == Index58_g12816 ? (v.ase_texcoord3.xy*Tiling60_g12816 + Offset61_g12816) : ( 2.0 == Index58_g12816 ? (v.texcoord2.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : ( 1.0 == Index58_g12816 ? (v.texcoord1.xyzw.xy*Tiling60_g12816 + Offset61_g12816) : (v.ase_texcoord.xy*Tiling60_g12816 + Offset61_g12816) ) ) ) ) + frac( appendResult11_g12812 ) );
				float2 vertexToFrag51_g12816 = temp_output_53_0_g12816;
				o.ase_texcoord9.xy = vertexToFrag51_g12816;
				float Index58_g12815 = _MaskMap02UV;
				float2 Tiling60_g12815 = _MaskMap02_ST.xy;
				float2 Offset61_g12815 = _MaskMap02_ST.zw;
				float2 temp_output_2_0_g12811 = _AnimatedOffsetMaskMap02;
				float mulTime7_g12811 = _Time.y * (temp_output_2_0_g12811).x;
				float mulTime10_g12811 = _Time.y * (temp_output_2_0_g12811).y;
				float2 appendResult11_g12811 = (float2(mulTime7_g12811 , mulTime10_g12811));
				float2 temp_output_53_0_g12815 = ( ( 4.0 == Index58_g12815 ? (v.ase_texcoord4.xy*Tiling60_g12815 + Offset61_g12815) : ( 3.0 == Index58_g12815 ? (v.ase_texcoord3.xy*Tiling60_g12815 + Offset61_g12815) : ( 2.0 == Index58_g12815 ? (v.texcoord2.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : ( 1.0 == Index58_g12815 ? (v.texcoord1.xyzw.xy*Tiling60_g12815 + Offset61_g12815) : (v.ase_texcoord.xy*Tiling60_g12815 + Offset61_g12815) ) ) ) ) + frac( appendResult11_g12811 ) );
				float2 vertexToFrag51_g12815 = temp_output_53_0_g12815;
				o.ase_texcoord9.zw = vertexToFrag51_g12815;
				float Index58_g12814 = _MaskMap01UV;
				float2 Tiling60_g12814 = _MaskMap01_ST.xy;
				float2 Offset61_g12814 = _MaskMap01_ST.zw;
				float2 temp_output_2_0_g12810 = _AnimatedOffsetMaskMap01;
				float mulTime7_g12810 = _Time.y * (temp_output_2_0_g12810).x;
				float mulTime10_g12810 = _Time.y * (temp_output_2_0_g12810).y;
				float2 appendResult11_g12810 = (float2(mulTime7_g12810 , mulTime10_g12810));
				float2 temp_output_53_0_g12814 = ( ( 4.0 == Index58_g12814 ? (v.ase_texcoord4.xy*Tiling60_g12814 + Offset61_g12814) : ( 3.0 == Index58_g12814 ? (v.ase_texcoord3.xy*Tiling60_g12814 + Offset61_g12814) : ( 2.0 == Index58_g12814 ? (v.texcoord2.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : ( 1.0 == Index58_g12814 ? (v.texcoord1.xyzw.xy*Tiling60_g12814 + Offset61_g12814) : (v.ase_texcoord.xy*Tiling60_g12814 + Offset61_g12814) ) ) ) ) + frac( appendResult11_g12810 ) );
				float2 vertexToFrag51_g12814 = temp_output_53_0_g12814;
				o.ase_texcoord10.xy = vertexToFrag51_g12814;
				
				
				//setting value to unused interpolator channels and avoid initialization warnings
				o.ase_texcoord10.zw = 0;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					float3 defaultVertexValue = v.vertex.xyz;
				#else
					float3 defaultVertexValue = float3(0, 0, 0);
				#endif
				float3 vertexValue = VertexDiscard1197;
				#ifdef ASE_ABSOLUTE_VERTEX_POS
					v.vertex.xyz = vertexValue;
				#else
					v.vertex.xyz += vertexValue;
				#endif
				v.vertex.w = 1;
				v.normal = v.normal;
				v.tangent = v.tangent;
				

				o.pos = UnityObjectToClipPos(v.vertex);
				float3 worldPos = mul(unity_ObjectToWorld, v.vertex).xyz;
				fixed3 worldNormal = UnityObjectToWorldNormal(v.normal);
				fixed3 worldTangent = UnityObjectToWorldDir(v.tangent.xyz);
				fixed tangentSign = v.tangent.w * unity_WorldTransformParams.w;
				fixed3 worldBinormal = cross(worldNormal, worldTangent) * tangentSign;
				o.tSpace0 = float4(worldTangent.x, worldBinormal.x, worldNormal.x, worldPos.x);
				o.tSpace1 = float4(worldTangent.y, worldBinormal.y, worldNormal.y, worldPos.y);
				o.tSpace2 = float4(worldTangent.z, worldBinormal.z, worldNormal.z, worldPos.z);

				TRANSFER_SHADOW_CASTER_NORMALOFFSET(o)
				return o;
			}

			
		
			v2f vert ( appdata v )
			{
				return VertexFunction( v );
			}
			

			fixed4 frag (v2f IN 
				#ifdef _DEPTHOFFSET_ON
				, out float outputDepth : SV_Depth
				#endif
				) : SV_Target
			{
				UNITY_SETUP_INSTANCE_ID(IN);

					SurfaceOutputStandard o = (SurfaceOutputStandard)0;
			
				float3 WorldTangent = float3(IN.tSpace0.x,IN.tSpace1.x,IN.tSpace2.x);
				float3 WorldBiTangent = float3(IN.tSpace0.y,IN.tSpace1.y,IN.tSpace2.y);
				float3 WorldNormal = float3(IN.tSpace0.z,IN.tSpace1.z,IN.tSpace2.z);
				float3 worldPos = float3(IN.tSpace0.w,IN.tSpace1.w,IN.tSpace2.w);
				float3 worldViewDir = normalize(UnityWorldSpaceViewDir(worldPos));
				#if defined(ASE_NEEDS_FRAG_SHADOWCOORDS)
					UNITY_LIGHT_ATTENUATION(atten, IN, worldPos)
				#else
					half atten = 1;
				#endif

				float AlphaMap671_g12820 = _OpacityMap;
				float2 vertexToFrag51_g12809 = IN.ase_texcoord8.xy;
				float4 temp_output_835_0 = ( _Color * tex2D( _MainTex, vertexToFrag51_g12809 ) );
				float Alpha847 = (temp_output_835_0).a;
				float temp_output_678_0_g12820 = Alpha847;
				float AlphaChannel670_g12820 = _OpacityChannel;
				float4 temp_cast_0 = (1.0).xxxx;
				float2 vertexToFrag51_g12817 = IN.ase_texcoord8.zw;
				float4 MaskMap041244 = tex2D( _MaskMap04, vertexToFrag51_g12817 );
				float4 MM04RGBA8_g12820 = MaskMap041244;
				float2 vertexToFrag51_g12816 = IN.ase_texcoord9.xy;
				float4 MaskMap031239 = tex2D( _MaskMap03, vertexToFrag51_g12816 );
				float4 MM03RGBA7_g12820 = MaskMap031239;
				float2 vertexToFrag51_g12815 = IN.ase_texcoord9.zw;
				float4 MaskMap021234 = tex2D( _MaskMap02, vertexToFrag51_g12815 );
				float4 MM02RGBA6_g12820 = MaskMap021234;
				float2 vertexToFrag51_g12814 = IN.ase_texcoord10.xy;
				float4 MaskMap011220 = tex2D( _MaskMap01, vertexToFrag51_g12814 );
				float4 MM01RGBA5_g12820 = MaskMap011220;
				float4 AlphaRGBA657_g12820 = ( 4.0 == AlphaMap671_g12820 ? temp_cast_0 : ( 3.0 == AlphaMap671_g12820 ? MM04RGBA8_g12820 : ( 2.0 == AlphaMap671_g12820 ? MM03RGBA7_g12820 : ( 1.0 == AlphaMap671_g12820 ? MM02RGBA6_g12820 : MM01RGBA5_g12820 ) ) ) );
				float temp_output_2995_674 = ( 5.0 == AlphaMap671_g12820 ? temp_output_678_0_g12820 : ( 3.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).a : ( 2.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).b : ( 1.0 == AlphaChannel670_g12820 ? (AlphaRGBA657_g12820).g : (AlphaRGBA657_g12820).r ) ) ) );
				#if defined( _ALPHATEST_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2920 = temp_output_2995_674;
				#elif defined( _BLEND_OFF )
				float staticSwitch2920 = 1.0;
				#else
				float staticSwitch2920 = temp_output_2995_674;
				#endif
				float AlphaUnpacked2081 = staticSwitch2920;
				
				#if defined( _ALPHATEST_ON )
				float staticSwitch2905 = _MaskClipValue;
				#elif defined( _ALPHABLEND_ON )
				float staticSwitch2905 = 0.0001;
				#elif defined( _BLEND_OFF )
				float staticSwitch2905 = -0.1;
				#else
				float staticSwitch2905 = 0.0001;
				#endif
				float AlphaClip1179 = staticSwitch2905;
				
				float3 Color = fixed3( 0, 0, 0 );
				float Alpha = AlphaUnpacked2081;
				float AlphaClipThreshold = AlphaClip1179;

				float4 c = float4( Color, Alpha );

				#ifdef _ALPHATEST_ON
					clip( Alpha - AlphaClipThreshold );
				#endif

				#ifdef _DEPTHOFFSET_ON
					outputDepth = IN.pos.z;
				#endif

				#ifdef ASE_FOG
					UNITY_APPLY_FOG(IN.fogCoord, c);
				#endif
				return c;
			}
			ENDCG
			}

			


			



	}
	CustomEditor "SomnaShaderUI"
	
	Fallback Off
}/*ASEBEGIN
Version=19801
Node;AmplifyShaderEditor.CommentaryNode;2099;-2971.339,434.8195;Inherit;False;4325.101;735.9751;;38;848;847;1504;1509;1513;1514;1510;1511;1515;1512;579;1618;1617;830;834;558;835;1922;1923;1918;845;1212;1341;1688;2095;1919;1921;2096;2097;1780;2098;1662;1661;2057;1663;1765;2227;2496;Base Color;0.1843137,0.5019608,1,1;0;0
Node;AmplifyShaderEditor.Vector2Node;1341;-2921.34,1009.795;Inherit;False;Property;_AnimatedOffsetMainTex;AnimatedOffset MainTex;47;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.TexturePropertyNode;830;-2713.339,753.7946;Inherit;True;Property;_MainTex;Main Texture;44;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1212;-2681.339,945.7947;Inherit;False;Property;_MainTexUV;MainTexUV;50;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2936;-2681.339,1009.795;Inherit;False;BetterTime;-1;;12808;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;852;-3804.985,1424.144;Inherit;False;5251.926;2148.073;;56;1243;1224;1909;1908;1757;1841;1866;1865;1842;1228;1838;1229;1227;1237;1764;1759;1213;1349;832;1353;1351;837;833;842;1174;1235;1240;1357;1415;1414;1413;1412;1411;1410;1409;1408;1355;1242;1244;1239;1238;1232;1234;1233;1230;1220;1215;838;1218;843;849;844;1347;1225;831;836;Texture Samples;0.1845238,0.5,1,1;0;0
Node;AmplifyShaderEditor.FunctionNode;2103;-2425.338,817.7946;Inherit;False;UV Channel Select;-1;;12809;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;1355;-2057.488,3315.15;Inherit;False;Property;_AnimatedOffsetMaskMap03;AnimatedOffset MaskMap03;76;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1357;-244.5954,3307.15;Inherit;False;Property;_AnimatedOffsetMaskMap04;AnimatedOffset MaskMap04;79;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1351;-2067.445,2856.292;Inherit;False;Property;_AnimatedOffsetMaskMap01;AnimatedOffset MaskMap01;70;0;Create;False;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;1353;-280.7476,2869.44;Inherit;False;Property;_AnimatedOffsetMaskMap02;AnimatedOffset MaskMap02;73;0;Create;False;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SamplerNode;834;-2169.338,769.7946;Inherit;True;Property;_TextureSample0;Texture Sample 0;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.ColorNode;558;-2057.338,545.7945;Inherit;False;Property;_Color;Color;46;0;Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.CommentaryNode;2014;6039.03,2516.926;Inherit;False;6792.476;6096.007;;13;2206;2193;2192;2013;869;2010;2011;2017;1210;2959;2961;2988;3096;Special Effects;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1215;-1787.616,2771.365;Inherit;False;Property;_MaskMap01UV;MaskMap01UV;71;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1233;2.127351,2785.712;Inherit;False;Property;_MaskMap02UV;MaskMap02UV;74;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1232;-32.68958,2594.236;Inherit;True;Property;_MaskMap02;MaskMap02;72;0;Create;True;0;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1238;-1781.25,3202.153;Inherit;False;Property;_MaskMap03UV;MaskMap03UV;77;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;1242;-1.820647,3037.636;Inherit;True;Property;_MaskMap04;MaskMap04;78;0;Create;True;0;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;833;-1822.434,2579.889;Inherit;True;Property;_MaskMap01;Metallic;64;0;Create;False;0;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.TexturePropertyNode;1237;-1816.067,3010.677;Inherit;True;Property;_MaskMap03;MaskMap03;75;0;Create;True;0;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1243;32.99747,3229.114;Inherit;False;Property;_MaskMap04UV;MaskMap04UV;80;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;835;-1801.338,705.7944;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;2937;-1783.757,2855.526;Inherit;False;BetterTime;-1;;12810;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2938;2.940339,2868.676;Inherit;False;BetterTime;-1;;12811;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2939;-1773.801,3314.384;Inherit;False;BetterTime;-1;;12812;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2940;39.09244,3306.384;Inherit;False;BetterTime;-1;;12813;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;1210;10690.6,3353.075;Inherit;False;1450.354;404.3;;9;1190;1202;1191;1193;1194;1195;1196;1197;2108;Tile Discard;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1408;-1535.846,2578.47;Inherit;False;MaskMap01Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1409;-1527.846,3000.47;Inherit;False;MaskMap03Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1410;280.9066,3034.284;Inherit;False;MaskMap04Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1411;251.9066,2581.284;Inherit;False;MaskMap02Tex;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.FunctionNode;2104;-1533.638,2648.186;Inherit;False;UV Channel Select;-1;;12814;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2105;256.1065,2662.533;Inherit;False;UV Channel Select;-1;;12815;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2106;-1527.274,3078.973;Inherit;False;UV Channel Select;-1;;12816;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2107;286.9754,3105.935;Inherit;False;UV Channel Select;-1;;12817;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.WireNode;1922;-1529.338,849.7946;Inherit;False;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1190;10740.6,3407.601;Inherit;False;Property;_TileDiscardUV;TileDiscardUV;86;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;838;-1216.897,2577.796;Inherit;True;Property;_TextureSample2;Texture Sample 2;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;1230;572.8455,2592.143;Inherit;True;Property;_TextureSample5;Texture Sample 2;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;1240;579.7155,3067.544;Inherit;True;Property;_TextureSample7;Texture Sample 2;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;1235;-1210.533,3008.584;Inherit;True;Property;_TextureSample6;Texture Sample 2;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SwizzleNode;848;-1414.073,878.0886;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2108;10947.46,3412.236;Inherit;False;UV Channel Select;-1;;12818;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,0,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.CommentaryNode;2016;-3874.291,3843.262;Inherit;False;2030.3;2119.972;;24;2080;1245;1221;2228;2146;2004;1789;2094;1274;1790;1660;1312;1441;1427;1426;1402;1295;1265;2081;1247;1246;2574;2920;2991;Packed Map Selector;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1220;-905.8615,2577.675;Inherit;False;MaskMap01;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1234;883.8835,2592.022;Inherit;False;MaskMap02;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1239;-899.4955,3008.462;Inherit;False;MaskMap03;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1244;914.7535,3035.424;Inherit;False;MaskMap04;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;847;-1247.075,879.0886;Inherit;False;Alpha;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;827;-1986.056,-715.5157;Inherit;False;3400.507;987.2289;;66;2074;2073;2071;2072;2070;2069;1840;1468;1839;1470;1472;1471;1469;1467;1479;601;2068;2024;2007;1783;1171;1170;1172;1169;1817;1779;1680;1679;1502;1501;1500;1499;1497;1498;1496;1495;1493;1494;1491;1490;1489;1492;1488;1486;1487;1485;1166;1167;600;1168;928;919;638;639;1179;1180;2075;2085;2194;2210;2211;2766;2899;2900;2901;2987;MiscData;0.6,1,0.3137255,1;0;0
Node;AmplifyShaderEditor.RangedFloatNode;1191;11311.04,3627.374;Inherit;False;Constant;_Float37;Float 26;49;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1195;11178.02,3408.076;Inherit;False;UVTileDiscard;87;;12819;1105e365559373a4f8408fd20201dabd;0;1;19;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1246;-3177.704,4443.559;Inherit;False;1239;MaskMap03;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1247;-3178.704,4516.558;Inherit;False;1244;MaskMap04;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1221;-3184.384,4288.236;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1245;-3184.029,4362.235;Inherit;False;1234;MaskMap02;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;2080;-3185.935,4218.655;Inherit;False;847;Alpha;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.PosVertexDataNode;1193;11395.28,3475.244;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleDivideOpNode;1194;11454.04,3620.374;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1202;11378.64,3401.169;Inherit;False;VertexDiscardOutput;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2766;-1412.633,-529.828;Inherit;False;Constant;_Float67;Float 67;103;0;Create;True;0;0;0;False;0;False;0.0001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2901;-1645.184,-655.057;Inherit;False;Constant;_Float68;Float 68;106;0;Create;True;0;0;0;False;0;False;-0.1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2921;-2931.041,4119.112;Inherit;False;Constant;_Float69;Float 69;104;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1180;-1704.337,-560.2797;Inherit;False;Property;_MaskClipValue;MaskClipValue;58;0;Create;True;0;0;0;False;0;False;0.5;0.5;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2995;-2887.208,4289.791;Inherit;False;PackedMapSelector;153;;12820;f775d986e9c4a314ebf8b1acf4b9beff;0;14;754;FLOAT3;0,0,0;False;678;FLOAT;0;False;400;SAMPLER2D;0;False;401;SAMPLER2D;0;False;402;SAMPLER2D;0;False;403;SAMPLER2D;0;False;413;FLOAT;0;False;414;FLOAT;0;False;415;FLOAT;0;False;416;FLOAT;0;False;1;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;17;COLOR;271;FLOAT;0;FLOAT;674;FLOAT;132;FLOAT;303;FLOAT;335;FLOAT;367;FLOAT;399;FLOAT;476;FLOAT;545;FLOAT;577;FLOAT;710;FLOAT;793;FLOAT;828;FLOAT;642;FLOAT;751;FLOAT;609
Node;AmplifyShaderEditor.CommentaryNode;2023;6319.863,-652.7054;Inherit;False;3215.023;1552.581;;8;2565;685;2020;2021;2022;2569;2577;2578;Output;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2015;1667.106,-708.3369;Inherit;False;4181.931;5825.624;;9;612;634;542;543;617;825;826;1016;1080;Lighting;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1480;-1811.103,3857.319;Inherit;False;3287.3;1202.48;;7;1454;1298;1286;1273;1249;1248;2403;Workflow Selector;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.Compare;1196;11697.04,3405.376;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.001;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2905;-987.1387,-864.9473;Inherit;False;Property;_Blending;Blending;104;0;Create;True;0;0;0;False;0;False;0;1;1;False;;KeywordEnum;3;_ALPHATEST_ON;_ALPHABLEND_ON;_BLEND_OFF;Fetch;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2920;-2752.041,4055.112;Inherit;False;Property;_Blending1;Blending;104;0;Create;True;0;0;0;False;0;False;0;1;1;False;;KeywordEnum;3;_ALPHATEST_ON;_ALPHABLEND_ON;_BLEND_OFF;Fetch;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;2022;8585.062,-199.01;Inherit;False;651.4033;316.707;;4;1178;1184;1200;2224;Shadowcaster;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2021;8415.557,362.7379;Inherit;False;1003.83;442.1261;Comment;11;567;683;684;581;619;1177;1183;1199;2048;2062;2221;Add Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2020;6345.076,-460.1054;Inherit;False;1960.207;1338.554;;43;2129;2265;2263;1949;2564;2335;2329;2380;2330;2319;2261;2563;2268;2220;616;580;791;661;1176;2132;2130;562;2131;1948;1947;1951;1950;2128;2100;1648;1767;2019;1198;1182;792;559;575;2566;2567;2570;2571;2581;2580;Main Pass;1,1,1,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2017;10687.99,2835.122;Inherit;False;1475.863;428.4925;;10;2018;1429;850;1615;1503;1428;1296;1290;2089;2584;Luma Glow;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2011;8694.765,2798.063;Inherit;False;1485.689;507.6338;;15;1626;1622;1687;1776;1653;1654;1656;1667;1666;1647;1655;1691;1657;2170;2958;Starshine;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2010;6272.823,5785.787;Inherit;False;6244.336;2574.854;;109;1999;2001;1978;1975;1976;2150;2147;2148;1971;1968;2149;1970;1969;1967;1974;1973;1972;1977;1989;1979;2753;1987;2749;2685;1991;2113;2009;2746;2559;2597;2686;2672;2687;2679;2677;2676;2675;2674;1993;1986;2666;2681;2750;2724;2725;2719;2720;2726;2694;1994;2721;2682;2722;2684;2751;2718;2671;2670;2143;2142;2752;2748;2747;1957;2745;2651;2692;1988;2138;2136;2137;2140;2139;2660;2659;2658;2744;2680;2711;2712;2656;2141;1980;2006;1965;2005;2691;2716;2715;2714;2713;2717;1998;2754;2755;2756;2759;2761;2763;2951;2953;2954;2955;2957;2947;2984;2985;2993;2992;Stardust;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1273;-1761.103,3973.75;Inherit;False;1601.911;477.6196;;15;1267;1266;839;840;708;1271;1272;1270;1268;1252;1269;1676;1692;1768;1675;Metallics;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1080;1693.556,1230.2;Inherit;False;1853.695;634.3221;;19;2038;2037;2036;1062;1061;1157;1044;1047;1058;1052;1050;1046;1038;1037;1055;1054;1051;1042;1041;Light Color;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1016;1746.797,2592.798;Inherit;False;3222.884;2397.876;;103;920;916;929;931;940;935;877;930;932;950;949;936;926;925;944;922;532;923;924;885;951;952;953;954;955;956;957;959;960;961;963;964;965;966;967;969;970;972;968;971;958;974;975;976;977;978;979;980;981;982;984;985;986;987;988;989;990;991;992;993;994;995;996;997;998;999;1000;1001;1002;1003;1005;1006;1007;1008;1009;1010;1011;1012;973;1015;1014;1013;945;537;876;1081;1088;1089;1090;1092;1094;1106;1107;1108;2027;2028;2029;2030;2031;2032;2033;2034;2078;Vertex Lights;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;869;6130.835,2831.172;Inherit;False;2467.545;1021.695;;41;2127;2126;2121;2120;2123;2122;1953;1952;1186;2002;1208;1206;1203;1209;1139;1140;1141;1150;1149;1148;1151;1147;1154;1156;1143;1144;1152;1155;1153;1954;1187;1788;1787;1132;1188;1185;1146;1145;1142;2161;2222;Outline;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;826;2078.57,-436.2862;Inherit;False;821.0776;757.2961;;19;643;640;641;642;637;608;665;664;611;602;1064;1066;1078;1067;1068;1085;1086;2025;2040;Dot Products;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;825;2986.242,-481.4734;Inherit;False;2785.148;1509.387;;54;1399;645;1448;1446;810;1445;1406;1400;1079;1404;815;1316;1315;824;1130;1129;841;707;1114;1113;1116;1117;1115;706;1071;1075;1074;1073;1072;1022;822;806;812;2043;2044;2046;2064;2195;2196;2213;2214;2065;2410;2450;2452;2451;2847;2848;2846;2066;2855;2856;2872;2871;Specular;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;617;4014.159,2105.956;Inherit;False;844.899;394.2145;;9;570;578;615;572;609;526;599;2476;2477;Main Pass Light;1,0.9009901,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;543;3824.97,1325.993;Inherit;False;1221.285;537.1683;;12;514;511;1034;1033;571;512;513;1063;1087;2026;2050;2207;Pixel Lights;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;542;2767.507,2116.765;Inherit;False;854.1058;420.447;;13;577;1138;1137;1136;1135;1109;1120;1119;689;516;1313;1314;2035;Indirect Diffuse;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;634;1764.825,2220.625;Inherit;False;622.4464;230.7715;;4;573;614;618;613;Add Pass Light;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;612;1703.65,398.9239;Inherit;False;1227.069;490.0403;;14;1060;1035;1077;1069;610;1043;1039;1040;1036;1059;1057;1131;1173;2039;Light Dir;1,0.9019608,0,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1286;-1757.07,4531.189;Inherit;False;1601.875;469.9951;;14;650;647;651;1278;1283;1282;1281;1285;1284;1275;1277;1674;1673;1778;Gloss;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1298;-87.78969,4517.238;Inherit;False;1514.032;469.9951;;8;1302;1309;1311;1310;1301;1306;1300;1299;Occlusion;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;1454;-82.06068,3980.642;Inherit;False;1507.023;467.0767;;11;1465;1464;1463;1462;1460;1459;1458;1457;1456;1455;1449;SpecularTint;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2081;-2230.497,4154.396;Inherit;False;AlphaUnpacked;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CommentaryNode;2228;-3769.305,5288.788;Inherit;False;1790.468;577.238;;23;2249;2247;2245;2244;2243;2242;2241;2240;2239;2238;2237;2236;2235;2234;2233;2232;2231;2230;2229;2246;2248;2226;1444;Specular Tint;0.6901961,0.4509804,0.8431373,1;0;0
Node;AmplifyShaderEditor.CommentaryNode;2013;6204.46,4157.09;Inherit;False;2993.105;865.4341;;22;2458;2456;2460;2461;2459;2389;2413;2412;1920;2467;1910;1895;1904;2498;2464;2463;2465;2391;2394;2390;2500;2501;Dreamweave;1,0.4,0,1;0;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1197;11898.96,3406.667;Inherit;False;VertexDiscard;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1179;-513.0369,-629.9798;Inherit;False;AlphaClip;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2899;-1090.741,-634.0999;Inherit;False;Property;_ALPHATEST;_ALPHATEST;122;0;Create;False;0;0;0;False;0;False;0;0;0;False;_ALPHABLEND_ON;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1490;-1060.081,-533.1054;Inherit;False;Property;_BlendModeIndex;_BlendModeIndex;370;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;2085;-716.6736,-635.2517;Inherit;False;0;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;836;571.8975,1667.215;Inherit;True;Property;_TextureSample1;Texture Sample 0;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;True;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.TexturePropertyNode;831;-50.92564,1664.889;Inherit;True;Property;_BumpMap;Normal;56;1;[Normal];Create;False;0;0;0;False;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1225;-1757.492,2304.133;Inherit;False;Property;_DetailUV;DetailUV;63;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;1347;-2048.885,2381.378;Inherit;False;Property;_AnimatedOffsetDetailNormal;AnimatedOffset Detail Normal;62;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;844;948.5056,2128.138;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;849;1150.795,2128.457;Inherit;False;EmissionColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SamplerNode;843;567.5056,2132.138;Inherit;True;Property;_TextureSample3;Texture Sample 3;9;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;1218;-19.59167,2316.948;Inherit;False;Property;_EmissionUV;EmissionUV;55;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1412;-1534.311,2770.594;Inherit;False;MM01UVIndex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1413;-1525.311,3202.594;Inherit;False;MM03UVIndex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1414;287.6895,3230.594;Inherit;False;MM04UVIndex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1415;245.6895,2784.594;Inherit;False;MM02UVIndex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1174;867.3375,1667.67;Inherit;False;NormalMap;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.PosVertexDataNode;919;528.2911,-658.3928;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RegisterLocalVarNode;928;722.9484,-657.2728;Inherit;False;VertexPos;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1168;940.6688,-340.1686;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1167;648.9684,-440.2688;Inherit;False;Constant;_Float36;Float 27;49;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1166;617.7551,-507.1527;Inherit;False;1057;DetectLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1488;-702.9025,-52.66433;Inherit;False;Property;_Culling;Culling;54;1;[Enum];Create;True;0;0;1;UnityEngine.Rendering.CullMode;True;0;False;2;2;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1492;-535.5989,-52.20193;Inherit;False;Property;_BlendOPsrc;_BlendOPsrc;371;0;Create;True;0;0;0;True;0;False;5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1489;-343.4846,-51.6553;Inherit;False;Property;_BlendOPdst;_BlendOPdst;374;0;Create;True;0;0;0;True;0;False;10;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1491;81.1232,-49.44082;Inherit;False;Property;_BlendOPIndex;_BlendOPIndex;372;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1493;449.1993,-57.25369;Inherit;False;Property;_ShowMaps;ShowMaps;354;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1495;599.2941,-59.56472;Inherit;False;Property;_ShowLighting;ShowLighting;355;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1496;782.6057,-57.45272;Inherit;False;Property;_ShowEmission;ShowEmission;357;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1498;975.0275,-61.46469;Inherit;False;Property;_ShowEmission01;ShowEmission01;367;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1497;1186.915,-60.57803;Inherit;False;Property;_ShowEmissionMain;ShowEmissionMain;356;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1499;-83.68388,52.14113;Inherit;False;Property;_ShowEmission02;ShowEmission02;365;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1500;126.3162,56.80117;Inherit;False;Property;_ShowEmission03;ShowEmission03;366;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1501;345.7921,53.66713;Inherit;False;Property;_ShowEmission04;ShowEmission04;364;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;842;611.2396,1981.359;Inherit;False;Property;_EmissionColor;EmissionColor;52;1;[HDR];Create;True;0;0;0;False;0;False;0,0,0,0;0,0,0,1;True;False;0;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;837;266.8985,1856.716;Inherit;False;Property;_BumpScale;BumpScale;57;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.TexturePropertyNode;832;-46.1776,2128.76;Inherit;True;Property;_EmissionMap;EmissionMap;51;0;Create;True;0;0;0;True;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.Vector2Node;1349;-256.1274,2395.989;Inherit;False;Property;_AnimatedOffsetEmssion;AnimatedOffset Emssion;53;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1502;558.5822,49.78909;Inherit;False;Property;_ShowTileDiscard;ShowTileDiscard;363;0;Create;False;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1679;781.593,47.54409;Inherit;False;Property;_ShowEffects;ShowEffects;358;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1213;31.55045,1861.765;Inherit;False;Property;_NormalMapUV;NormalMapUV;59;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1759;-2936.625,2310.217;Inherit;False;Property;_NoiseUV;NoiseUV;49;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1764;-2721.221,2307.986;Inherit;False;NoiseUVIndex;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1680;978.5286,46.97707;Inherit;False;Property;_ShowStarshine;ShowStarshine;359;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1779;1193.51,44.51711;Inherit;False;Property;_ShowDreamweave;ShowDreamweave;362;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SamplerNode;1227;-1217.699,2111.705;Inherit;True;Property;_TextureSample4;Texture Sample 0;8;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;1229;-1172.499,2354.604;Inherit;False;Property;_BumpScale1;Detail Normal Scale;61;0;Create;False;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1838;-865.3315,2353.139;Inherit;False;DetailNormalScale;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1228;-909.6005,2111.704;Inherit;False;DetailNormalPacked;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1842;-2838.811,2441.539;Inherit;False;1228;DetailNormalPacked;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.BlendNormalsNode;1865;-2319.941,2441.513;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1866;-2529.941,2594.513;Inherit;False;1174;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.UnpackScaleNormalNode;1841;-2562.206,2442.355;Inherit;False;Tangent;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;3;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RotateAboutAxisNode;1169;522.735,-370.0755;Inherit;False;False;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RadiansOpNode;1172;351.4352,-340.0661;Inherit;False;1;0;FLOAT;65;False;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1170;345.858,-411.9056;Inherit;False;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1171;161.3,-413.0917;Inherit;False;Constant;_Vector4;Vector 0;11;0;Create;True;0;0;0;False;0;False;-0.05,1,0;-0.05,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.TexturePropertyNode;1757;-3047.567,2120.378;Inherit;True;Property;_MainTex1;Noise;45;0;Create;False;0;0;0;False;0;False;None;None;False;white;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RegisterLocalVarNode;1908;-1534.288,2313.638;Inherit;False;DetailUVs;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1909;-1531.087,2116.838;Inherit;False;DetailTEX;-1;True;1;0;SAMPLER2D;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.TexturePropertyNode;1224;-1822.124,2109.233;Inherit;True;Property;_DetailNormal;DetailNormal;60;2;[Header];[Normal];Create;False;1;Detail Normal;0;0;True;0;False;None;None;True;bump;Auto;Texture2D;-1;0;2;SAMPLER2D;0;SAMPLERSTATE;1
Node;AmplifyShaderEditor.RangedFloatNode;1783;-290.5488,52.40407;Inherit;False;Property;_ShowOutline;ShowOutline;360;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2007;-496.9587,58.06008;Inherit;False;Property;_ShowStarshell;ShowStarshell;361;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1142;7442.222,3291.125;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.UnityObjToClipPosHlpNode;1145;6826.498,3503.631;Inherit;False;1;0;FLOAT3;0,0,0;False;5;FLOAT4;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.PosVertexDataNode;1146;6637.132,3504.816;Inherit;False;0;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;1185;7619.646,2913.789;Inherit;False;COLOR;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1188;7825.839,3119.613;Inherit;False;3;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT4;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RangedFloatNode;1132;7415.702,2910.391;Inherit;False;Constant;_Float32;Float 32;10;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1787;7226.033,2915.766;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1788;7045.033,2874.766;Inherit;False;1789;OutlineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1954;7835.228,3024.555;Inherit;False;Constant;_Float53;Float 53;79;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1153;6869.853,3316.605;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1155;6654.632,3416.719;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1152;6655.693,3321.819;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1144;7084.105,3239.855;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1143;7256.621,3171.907;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1156;6390.039,3361.351;Inherit;False;Constant;_Float35;Float 10;26;0;Create;True;0;0;0;False;0;False;0.0001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1147;6865.682,3163.927;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1151;6665.461,3243.042;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1148;6653.816,3146.587;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1149;6371.011,3123.177;Inherit;False;Constant;_Float34;Float 10;26;0;Create;True;0;0;0;False;0;False;0.0001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1141;7600.532,3261.064;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformDirectionNode;1140;7155.745,3021.838;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1139;6977.622,3020.654;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1209;7525.662,3396.486;Inherit;False;1202;VertexDiscardOutput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1203;7500.519,3497.482;Inherit;False;Constant;_Float38;Float 26;49;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1206;7643.519,3490.482;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1208;7881.519,3393.481;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.001;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;2002;7905.674,3293.565;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1622;8772.908,3074.143;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1687;8744.765,2848.063;Inherit;False;1688;MainTexMultiplied;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1776;8776.261,2928.682;Inherit;False;1463;SpecularTint;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1653;9410.532,3081.775;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1654;9019.532,3116.775;Inherit;False;Constant;_Float39;Float 39;69;0;Create;True;0;0;0;False;0;False;0.05;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1666;9521.723,3140.171;Inherit;False;1660;StarshineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1691;9608.209,2889.752;Inherit;False;StarshineMetallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1277;-1539.272,4626.763;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1284;-1510.292,4777.217;Inherit;False;FLOAT;3;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1285;-1210.648,4648.84;Inherit;False;0;4;0;FLOAT;2;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;1281;-1055.63,4726.146;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1282;-836.5699,4650.105;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1283;-1092.63,4802.146;Inherit;False;Property;_InvertGloss;Invert Gloss;68;1;[ToggleUI];Create;False;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1278;-1697.738,4784.842;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1300;69.87245,4687.915;Inherit;False;1312;OcclusionMapUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1306;-24.45667,4764.891;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;1301;154.9884,4764.266;Inherit;False;FLOAT;1;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1311;848.3892,4611.269;Inherit;False;3;0;FLOAT;1;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1269;-1513.061,4170.491;Inherit;False;Constant;_Float0;Float 0;30;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1252;-1711.104,4250.004;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1268;-1553.061,4093.491;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1270;-974.3328,4179.749;Inherit;False;0;4;0;FLOAT;2;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1272;-1337.335,4111.749;Inherit;False;1265;MetallicMapUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1271;-1275.333,4023.75;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;1266;-1511.859,4251.329;Inherit;False;FLOAT;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1267;-1245.826,4180.539;Inherit;False;0;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1455;165.9814,4177.383;Inherit;False;Constant;_Float1;Float 0;30;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1456;-32.06067,4256.897;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.Compare;1458;704.7082,4186.642;Inherit;False;0;4;0;FLOAT;2;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1460;403.7094,4030.642;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1462;1033.253,4190.208;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;1464;167.1845,4258.223;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;1465;433.2175,4187.432;Inherit;False;0;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1457;125.9813,4100.384;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;708;-963.0298,4327.825;Inherit;False;Property;_MetallicMult;Metallic;65;0;Create;False;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1310;457.0882,4780.266;Inherit;False;Property;_OcclusionPower;Occlusion Power;69;0;Create;True;0;0;0;False;0;False;1;1;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1673;-477.8249,4819.102;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1778;-364.7399,4725.473;Inherit;False;Property;_StarShine4;StarShine;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1765;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;647;-568.205,4649.475;Inherit;False;2;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1674;-715.8248,4916.102;Inherit;False;1660;StarshineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1249;-890.8983,3903.588;Inherit;False;Workflow;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;516;2988.887,2183.209;Inherit;False;World;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;613;2016.586,2289.395;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;599;4276.159,2238.614;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;526;4507.182,2213.934;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;609;4054.86,2343.747;Inherit;False;608;NdotLBase;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;572;4052.333,2232.073;Inherit;False;571;PixelLightsBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;615;4649.731,2216.521;Inherit;False;MainPassLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;578;4261.228,2162.156;Inherit;False;577;IndDiffuse;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;570;4268.981,2348.876;Inherit;False;876;VertexLights;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;512;4624.814,1430.37;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1033;4624.562,1654.776;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;689;2806.166,2184.789;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;511;4134.689,1707.627;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleSubtractOpNode;920;2302.79,2743.537;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;916;2465.789,2741.537;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;931;2228.933,2936.448;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;940;2045.477,2882.559;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;935;2552.698,2973.074;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;930;2032.932,2990.448;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;932;2369.932,2936.448;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;936;2681.607,2971.01;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;926;2618.434,2736.062;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;925;2607.434,2664.062;Inherit;False;Constant;_Float5;Float 5;12;0;Create;True;0;0;0;False;0;False;1;1.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;922;2992.588,2713.936;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;532;2968.022,2642.798;Inherit;False;return unity_LightColor[0]@;3;Create;0;LightColorZero;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;923;2813.889,2683.635;Inherit;False;Constant;_Float4;Float 4;12;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;924;2853.434,2749.062;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;885;2445.409,2841.7;Inherit;False;return unity_4LightAtten0.x@;1;Create;0;LightAttenZero;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;951;2445.35,2666.522;Inherit;False;Constant;_Float14;Float 14;12;0;Create;True;0;0;0;False;0;False;16;16;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;952;2312.465,3353.368;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;953;2475.464,3351.368;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;954;2115.627,3430.088;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;955;2238.607,3546.28;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;956;2055.152,3492.392;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;957;2562.373,3582.906;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;959;2042.607,3600.28;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;960;2379.607,3546.28;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;963;2691.282,3580.843;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;964;2628.109,3345.893;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;965;2617.109,3273.893;Inherit;False;Constant;_Float20;Float 5;12;0;Create;True;0;0;0;False;0;False;1;1.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;967;3002.264,3323.768;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;969;2823.563,3293.469;Inherit;False;Constant;_Float21;Float 4;12;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;970;2863.108,3358.893;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;968;2977.697,3252.631;Inherit;False;return unity_LightColor[1]@;3;Create;0;LightColorOne;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;971;2456.084,3451.532;Inherit;False;return unity_4LightAtten0.y@;1;Create;0;LightAttenOne;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;958;1806.472,3354.005;Inherit;False;return float3(unity_4LightPosX0.y, unity_4LightPosY0.y, unity_4LightPosZ0.y)@;3;Create;0;LightPosOne;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;974;2340.008,3903.626;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;975;2503.007,3901.626;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;976;2143.169,3980.345;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;977;2266.15,4096.537;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;978;2082.694,4042.651;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;979;2589.916,4133.163;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;980;2070.149,4150.536;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;981;2407.149,4096.537;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;984;2718.824,4131.1;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;985;2655.652,3896.152;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;986;2644.651,3824.152;Inherit;False;Constant;_Float23;Float 5;12;0;Create;True;0;0;0;False;0;False;1;1.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;988;3029.806,3874.027;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;989;2851.106,3843.726;Inherit;False;Constant;_Float24;Float 4;12;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;990;2890.651,3909.152;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;991;2482.568,3826.613;Inherit;False;Constant;_Float25;Float 25;14;0;Create;True;0;0;0;False;0;False;16;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;994;1834.015,3904.262;Inherit;False;return float3(unity_4LightPosX0.z, unity_4LightPosY0.z, unity_4LightPosZ0.z)@;3;Create;0;LightPosTwo;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;995;2350.209,4485.287;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;996;2513.209,4483.287;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;998;2276.352,4678.197;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WireNode;999;2092.896,4624.31;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;1000;2600.117,4714.824;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1001;2080.351,4732.197;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalizeNode;1002;2417.351,4678.197;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1005;2729.026,4712.76;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1006;2665.853,4477.811;Inherit;False;3;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1007;2654.853,4405.811;Inherit;False;Constant;_Float26;Float 5;12;0;Create;True;0;0;0;False;0;False;1;1.1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1009;3040.007,4455.686;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1010;2861.307,4425.386;Inherit;False;Constant;_Float27;Float 4;12;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1011;2900.853,4490.811;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;973;4118.096,3418.789;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;537;4476.3,3406.588;Inherit;False;Property;_Keyword3;Keyword+1;16;0;Create;True;0;0;0;False;0;False;0;0;0;False;VERTEXLIGHT_ON;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;972;2455.025,3276.354;Inherit;False;Constant;_Float22;Float 22;13;0;Create;True;0;0;0;False;0;False;16;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1012;2492.77,4408.272;Inherit;False;Constant;_Float28;Float 28;15;0;Create;True;0;0;0;False;0;False;16;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1059;2231.199,528.8079;Inherit;False;Constant;_Float30;Float 27;49;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.NormalizeNode;1036;1998.238,603.2216;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1040;1935.459,682.1207;Inherit;False;True;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.FunctionNode;1039;1901.775,453.9095;Inherit;False;Detect Light;-1;;12826;976aa32ddd5e6584b9a434b4812ae32b;0;0;2;FLOAT;0;FLOAT;10
Node;AmplifyShaderEditor.Compare;1043;2463.472,559.7383;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;610;2669.276,560.7805;Inherit;False;LightDirBase;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;664;2328.91,-355.4637;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;665;2450.368,-353.8118;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;608;2575.387,-352.388;Inherit;False;NdotLBase;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WorldSpaceLightDirHlpNode;1069;2422.729,709.1678;Inherit;False;False;1;0;FLOAT;0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1077;2653.496,704.0689;Inherit;False;LightDirAdd;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1041;2862.641,1446.621;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightColorNode;1042;2864.265,1571.165;Inherit;False;0;3;COLOR;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;1051;2206.045,1595.522;Inherit;False;Constant;_Float52;Float 52;119;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMinOpNode;1054;2599.041,1624.522;Inherit;False;2;0;INT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1055;2449.041,1476.522;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.IndirectDiffuseLighting;1037;1911.915,1374.063;Inherit;False;World;1;0;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1038;2190.611,1373.556;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1046;3305.25,1378.827;Inherit;False;LightColBase;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;993;2483.627,4001.79;Inherit;False;return unity_4LightAtten0.z@;1;Create;0;LightAttenTwo;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;992;3005.24,3802.888;Inherit;False;return unity_LightColor[2]@;3;Create;0;LightColorTwo;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1013;3015.441,4384.548;Inherit;False;return unity_LightColor[3]@;3;Create;0;LightColorThree;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1014;2495.129,4583.451;Inherit;False;return unity_4LightAtten0.w@;1;Create;0;LightAttenThree;False;False;0;;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;997;2153.371,4562.005;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1015;1844.216,4485.922;Inherit;False;return float3(unity_4LightPosX0.w, unity_4LightPosY0.w, unity_4LightPosZ0.w)@;3;Create;0;LightPosThree;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformDirectionNode;949;1993.224,3064.922;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1081;2213.063,3065.739;Inherit;False;ObjectNorm;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;961;2232.299,3649.656;Inherit;False;1081;ObjectNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;982;2258.842,4198.912;Inherit;False;1081;ObjectNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1003;2288.043,4777.573;Inherit;False;1081;ObjectNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;637;2362.36,153.7551;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;642;2492.147,150.4098;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;641;2126.481,122.4068;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;640;2130.8,208.4769;Inherit;False;2211;WorldViewStereo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;643;2627.498,155.145;Inherit;False;NdotV;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;1066;2339.398,-104.3602;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1078;2145.502,-27.80475;Inherit;False;1077;LightDirAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1067;2456.957,-105.3083;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1107;3107.658,4008.829;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.01;False;2;FLOAT;0.0101;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1119;2810.62,2256.419;Inherit;False;610;LightDirBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;1120;2983.62,2256.419;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;1;False;1;FLOAT4;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;1137;3279.607,2256.281;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1138;3104.607,2346.281;Inherit;False;Constant;_Float33;Float 33;11;0;Create;True;0;0;0;False;0;False;0.01;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.CustomExpressionNode;1035;1893.625,603.2465;Inherit;False;return half3(unity_SHAr.r,unity_SHAg.g,unity_SHAb.b)@;3;Create;0;ProbeDir;False;True;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1060;2169.347,604.3112;Inherit;False;ProbeDir;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1050;2168.782,1527.345;Inherit;False;half4 skyData = UNITY_SAMPLE_TEXCUBE_LOD(unity_SpecCube0, uvw, 5)@ //('cubemap', 'sample coordinate', 'map-map level')$         half3 skyColor = DecodeHDR (skyData, unity_SpecCube0_HDR)@$         return half4(skyColor, 1.0)@;3;Create;1;True;uvw;FLOAT3;0,0,0;In;;Inherit;False;sampleReflectionProbe;True;False;0;;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1052;2400.042,1604.522;Inherit;False;IsLumaGlow;-1;;12827;308e9b8eaf7ff094f828718d933e2c7d;0;0;1;INT;0
Node;AmplifyShaderEditor.CustomExpressionNode;877;1796.797,2744.172;Inherit;False;return float3(unity_4LightPosX0.x, unity_4LightPosY0.x, unity_4LightPosZ0.x)@;3;Create;0;LightPosZero;False;False;0;;False;0;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;929;2105.952,2820.256;Inherit;False;928;VertexPos;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1057;2190.661,452.0551;Inherit;False;DetectLight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1058;2835.768,1280.2;Inherit;False;1057;DetectLight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1047;2859.181,1365.284;Inherit;False;Constant;_Float29;Float 27;49;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1044;3130.081,1380.884;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;611;2128.57,-298.8351;Inherit;False;610;LightDirBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1313;3276.523,2348.06;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1314;3075.522,2423.06;Inherit;False;1309;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;806;3979.461,-132.1611;Inherit;False;610;LightDirBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;822;3979.945,-68.57416;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1022;3979.601,-199.8472;Inherit;False;608;NdotLBase;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1315;3993.412,164.688;Inherit;False;1309;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1399;4875.398,-155.4011;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1406;5122.31,394.9601;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1129;3982.604,-277.3674;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1445;4594.068,189.6641;Inherit;False;1441;SpecularMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;645;5338.023,-19.22809;Inherit;False;SpecularBase;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;810;3775.77,110.9431;Inherit;False;650;Smoothness ;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.VertexToFragmentNode;945;4262.159,3418.261;Inherit;False;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;876;4727.682,3416.587;Inherit;False;VertexLights;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;1157;2396.774,1688.546;Inherit;False;IsAudioLink;-1;;12828;e83fef6181013ba4bacf30a3d9a31d37;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;575;7011.059,-410.1053;Inherit;False;815;IndSpec;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;559;6990.44,-333.3774;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;792;7002.461,-169.2367;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1182;7523.843,199.0128;Inherit;False;1179;AlphaClip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1198;7525.952,284.1794;Inherit;False;1197;VertexDiscard;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1177;8868.32,536.3293;Inherit;False;2081;AlphaUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1199;8852.108,691.8644;Inherit;False;1197;VertexDiscard;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1178;8661.44,-149.01;Inherit;False;2081;AlphaUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1068;2700.876,-114.2844;Inherit;False;NdotLAdd;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;944;3515.318,2686.264;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1089;3042.712,2836.365;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.01;False;2;FLOAT;0.0101;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1088;2845.693,3083.512;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2027;3080.589,2963.066;Inherit;False;Property;_Keyword4;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1106;3049.057,3417.33;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.01;False;2;FLOAT;0.0101;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;966;3445.492,3289.896;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1090;2857.793,3631.385;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2030;3247.699,3552.643;Inherit;False;Property;_Keyword7;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1092;2891.093,4212.384;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;987;3662.936,3819.154;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2031;3331.207,3890.932;Inherit;False;Property;_Keyword8;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2032;3147.207,4142.132;Inherit;False;Property;_Keyword9;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1108;3119.458,4554.229;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.01;False;2;FLOAT;0.0101;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1008;3612.236,4436.915;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1094;2911.492,4798.583;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2034;3384.761,4677.534;Inherit;False;Property;_Keyword11;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2028;3195.389,2724.866;Inherit;False;Property;_Keyword5;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector3Node;1135;2784.213,2348.624;Inherit;False;Constant;_Vector3;Vector 3;11;0;Create;True;0;0;0;False;0;False;-1.5,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;1136;2955.213,2350.624;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;2037;1710.436,1706.474;Inherit;False;Constant;_Vector20;Vector 3;11;0;Create;True;0;0;0;False;0;False;-1.5,1,0;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.NormalizeNode;2038;1881.436,1708.474;Inherit;False;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1062;1704.786,1538.128;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1061;1725.556,1375.255;Inherit;False;1060;ProbeDir;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2025;2689.425,-18.76434;Inherit;False;Property;_Keyword1;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1400;4651.928,-188.9243;Inherit;False;1402;ReflectionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1404;4902.4,-14.29706;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1073;3997.992,457.075;Inherit;False;1077;LightDirAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1075;3998.132,389.389;Inherit;False;1068;NdotLAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1316;3999.31,804.2768;Inherit;False;1309;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1130;3993.22,313.935;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2046;4676.705,387.6306;Inherit;False;Property;_Keyword18;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2044;4650.174,-1.055817;Inherit;False;Property;_Keyword17;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2029;3157.575,3310.967;Inherit;False;Property;_Keyword6;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2035;3325.38,2157.037;Inherit;False;Property;_Keyword12;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.CustomExpressionNode;1109;3120.787,2255.351;Inherit;False;ShadeSH9(uvw);3;Create;1;True;uvw;FLOAT4;0,0,0,0;In;;Inherit;False;getProbes;False;False;0;;False;1;0;FLOAT4;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2033;3342.961,4472.335;Inherit;False;Property;_Keyword10;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2036;1937.678,1609.298;Inherit;False;Property;_Keyword13;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1173;1755.806,797.0287;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;1131;1720.197,603.5585;Inherit;False;Constant;_Vector222;Vector 222;9;0;Create;True;0;0;0;False;0;False;1.5,1,0.2;-1.5,1,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.RegisterLocalVarNode;1034;4768.862,1658.676;Inherit;False;PixelLightsAdd;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2050;4508.337,1574.196;Inherit;False;Constant;_Float54;Float 54;88;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;614;1815.587,2338.395;Inherit;False;1068;NdotLAdd;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;685;8965.591,-545.2532;Inherit;False;1034;PixelLightsAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;684;8641.485,562.3613;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;567;8695.942,425.7531;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2062;8863.46,426.4311;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1079;5299.39,393.4511;Inherit;False;SpecularAdd;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2048;8422.105,634.8406;Inherit;False;1034;PixelLightsAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;618;2164.271,2293.096;Inherit;False;AddPassLight;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;683;8451.148,561.1202;Inherit;False;1079;SpecularAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;2063;3259.556,285.9837;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2067;3596.462,310.1308;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2064;3040.855,269.9837;Inherit;False;2057;AttenBaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1087;4295.268,1598.387;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.15;False;2;FLOAT;0.151;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;514;4122.268,1579.404;Inherit;False;FLOAT;0;0;0;0;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;573;1803.825,2270.624;Inherit;False;1034;PixelLightsAdd;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2039;2157.455,758.3726;Inherit;False;Property;_Keyword14;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2068;1125.258,-239.3919;Inherit;False;Property;_Keyword19;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1086;2482.052,13.99915;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1479;-936.9974,-284.0283;Inherit;False;TangentNormal;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1467;-1592.568,-280.9513;Inherit;False;1174;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.BlendNormalsNode;1469;-1385.568,-261.9513;Inherit;False;0;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1471;-1355.568,-334.9511;Inherit;False;1174;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1472;-1083.569,-281.9513;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1470;-1381.568,-164.9511;Inherit;False;1426;DetailNormalMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.UnpackScaleNormalNode;1839;-1621.963,-217.1344;Inherit;False;Tangent;2;0;FLOAT4;0,0,0,0;False;1;FLOAT;1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;1468;-1898.569,-217.9511;Inherit;False;1228;DetailNormalPacked;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1840;-1871.964,-146.1344;Inherit;False;1838;DetailNormalScale;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;2069;-699.6475,-285.6397;Inherit;False;FLOAT2;0;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode;2070;-706.1475,-216.7397;Inherit;False;FLOAT;2;1;2;3;1;0;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NegateNode;2072;-541.97,-174.4455;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;2073;-348.97,-336.4455;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;2074;-346.97,-235.4455;Inherit;False;FLOAT3;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1183;8880.365,604.1904;Inherit;False;1179;AlphaClip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwitchByFaceNode;2071;-119.6472,-292.4396;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.WorldNormalVector;600;154.2341,-262.2638;Inherit;False;True;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.GetLocalVarNode;950;1807.624,3063.823;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.NormalVertexDataNode;2078;1801.384,3145.76;Inherit;False;0;5;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.RangedFloatNode;2075;-672.0978,64.4341;Inherit;False;Property;_ZWrite;ZWrite;137;0;Create;True;0;0;0;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1186;7008.546,2945.988;Inherit;False;2081;AlphaUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;1923;-1241.338,593.7945;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;845;-1465.338,609.7944;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1688;-1129.338,529.7944;Inherit;False;MainTexMultiplied;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;2095;-790.0286,702.7587;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2096;-1049.522,789.0737;Inherit;False;2094;RainbowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2097;-1033.522,709.0734;Inherit;False;2089;Rainbow;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2098;-576.4171,611.8286;Inherit;False;Property;_RainbowEnable;Rainbow;152;0;Create;False;0;0;0;True;0;False;0;0;0;True;_RAINBOW_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1509;-553.6384,795.5155;Inherit;False;849;EmissionColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1513;-556.8875,717.6786;Inherit;False;1427;EmissionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1514;-336.8876,771.6786;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;1510;-178.6385,723.5145;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RelayNode;1515;-312.028,646.7014;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1511;14.96141,755.5156;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1512;217.0763,644.7532;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1504;-117.6534,857.3249;Inherit;False;Property;_ReplaceBaseColor;Replace Base Color;352;1;[ToggleUI];Create;True;1;Emission;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1618;-113.7774,931.9666;Inherit;False;1427;EmissionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1617;98.22235,860.9667;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1662;356.0581,739.9092;Inherit;False;1655;StarshineAlbedo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1661;358.0581,811.6084;Inherit;False;1660;StarshineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1663;644.9757,719.9417;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1765;854.9905,636.8346;Inherit;False;Property;_StarShineEnable;StarShine;149;0;Create;False;0;0;0;False;0;False;0;0;0;True;_STARSHINE_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1767;7054.091,140.7032;Inherit;False;Property;_StarShine2;StarShine;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1765;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1647;9938.453,3041.181;Inherit;False;Starshine;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1648;6781.973,193.0647;Inherit;False;1647;Starshine;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2100;6804.092,110.6889;Inherit;False;Constant;_Float38;Float 38;91;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1063;4378.07,1423.816;Inherit;False;1046;LightColBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2057;861.8284,562.6196;Inherit;False;AttenBaseColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;2110;-1536.014,2193.955;Inherit;False;UV Channel Select;-1;;12829;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2111;246.0875,2197.67;Inherit;False;UV Channel Select;-1;;12830;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2112;285.5274,1738.587;Inherit;False;UV Channel Select;-1;;12831;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,1,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.StaticSwitch;1953;8165.559,3303.897;Inherit;False;Property;_OutlineEnable1;_OutlineEnable;144;0;Create;True;0;0;0;True;0;False;0;0;0;True;_OUTLINE_ON;Toggle;2;Key0;Key1;Reference;1952;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DynamicAppendNode;2127;8012.567,3553.732;Inherit;False;FLOAT4;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.StaticSwitch;2128;7034.227,396.6812;Inherit;False;Property;_StarShineEnable2;StarShine;152;0;Create;False;0;0;0;False;0;False;0;0;0;True;_STARSHINE_ON;Toggle;2;Key0;Key1;Reference;2098;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1950;6782.796,308.0583;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1951;6412.752,424.1222;Inherit;False;Property;_DreamweaveEmission;Dreamweave Emission;147;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1947;6479.742,354.6665;Inherit;False;1790;DreamweaveMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1948;6493.848,283.4503;Inherit;False;1920;Dreamweave;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2131;6477.685,599.7733;Inherit;False;2094;RainbowMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;562;7535.125,-129.5666;Inherit;False;9;9;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT4;0,0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;2130;6410.694,669.229;Inherit;False;Property;_RainbowEmission;Rainbow Emission;148;0;Create;True;0;0;0;False;0;False;0;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2132;6491.791,528.5571;Inherit;False;2089;Rainbow;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2123;7081.767,3688.932;Inherit;False;2089;Rainbow;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2122;7305.366,3573.233;Inherit;False;Constant;_Float56;Float 56;92;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2120;7593.966,3755.232;Inherit;False;Property;_RainbowOutline;Rainbow Outline;135;1;[ToggleUI];Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2121;7634.268,3604.432;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2126;7809.767,3544.632;Inherit;False;Property;_OutlineEnable2;_OutlineEnable;152;0;Create;True;0;0;0;True;0;False;0;0;0;True;_OUTLINE_ON;Toggle;2;Key0;Key1;Reference;2098;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LightAttenuation;2192;8696.46,2683.47;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;2193;8975.961,2697.77;Inherit;False;FLOAT;0;1;2;3;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;602;2114.53,-384.9859;Inherit;False;2194;WorldNormToon;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1064;2106.818,-136.4824;Inherit;False;2194;WorldNormToon;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;812;3979.41,-0.9298706;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;601;1106.327,-147.4557;Inherit;False;WorldNorm;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2196;3957.522,660.2498;Inherit;False;2194;WorldNormToon;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1072;3997.941,588.3049;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2195;3975.522,74.24982;Inherit;False;2194;WorldNormToon;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2170;9041.152,2843.231;Inherit;False;608;NdotLBase;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2206;9245.564,2721.115;Inherit;False;Constant;_Float1;Float 1;97;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LightAttenuation;513;3878.058,1579.016;Inherit;False;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2026;4371.542,1486.597;Inherit;False;Property;_Keyword2;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2207;4686.593,1535.879;Inherit;False;Attenuation;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;1817;-231.0839,-655.0128;Inherit;False;VR_Center_Eye;-1;;12832;6a5fa12a130419d48a65f3bc6d3cdd19;0;0;2;FLOAT3;0;FLOAT3;2
Node;AmplifyShaderEditor.ViewDirInputsCoordNode;638;-393.992,-544.0718;Inherit;False;World;True;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.StaticSwitch;2210;-130.5244,-497.1266;Inherit;False;Property;_Keyword20;Keyword 20;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2211;-149.1714,-399.5369;Inherit;False;WorldViewStereo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;639;-22.45198,-627.2587;Inherit;False;WorldView;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1074;4006.476,519.6609;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2213;3965.981,241.1226;Inherit;False;2211;WorldViewStereo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2214;3948.296,-354.7993;Inherit;False;2211;WorldViewStereo;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1487;957.8737,-658.5838;Inherit;False;Property;_BlendOpRGB;Blend Op RGB;373;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendOp;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1176;7519.198,121.9514;Inherit;False;2081;AlphaUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2161;8325.861,2999.088;Inherit;False;Property;_StencilReference;Stencil Reference;132;0;Create;True;0;0;0;True;0;False;1;0;1;255;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1265;-2233.705,4053.567;Inherit;False;MetallicMapUnpacked;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1295;-2224.626,3901.716;Inherit;False;GlowMaskRGBA;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1402;-2229.948,4404.139;Inherit;False;ReflectionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1426;-2233.462,4470.51;Inherit;False;DetailNormalMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1427;-2230.462,4542.511;Inherit;False;EmissionMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1441;-2228.807,4616.468;Inherit;False;SpecularMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1660;-2229.32,4694.883;Inherit;False;StarshineMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1790;-2225.451,4781.404;Inherit;False;DreamweaveMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1274;-2235.09,4256.661;Inherit;False;GlossMapUnpacked;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2094;-2227.568,4858.164;Inherit;False;RainbowMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2229;-3027.868,5428.683;Inherit;False;1244;MaskMap04;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;2230;-3401.781,5345.106;Inherit;False;2236;SpecularTintMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2231;-2683.511,5431.181;Inherit;False;Constant;_Float49;Float 29;58;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;2232;-3361.333,5497.632;Inherit;False;0;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;2233;-3000.385,5499.668;Inherit;False;0;4;0;FLOAT;2;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;2234;-2685.205,5501.193;Inherit;False;0;4;0;FLOAT;3;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2235;-3688.874,5428.206;Inherit;False;2236;SpecularTintMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2236;-3438.454,5696.661;Inherit;False;SpecularTintMap;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2237;-3052.716,5357.081;Inherit;False;2236;SpecularTintMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SwizzleNode;2238;-3573.352,5598.069;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2240;-3752.461,5594.099;Inherit;False;1220;MaskMap01;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;2241;-3571.352,5521.069;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2242;-3439.368,5423.285;Inherit;False;1239;MaskMap03;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SwizzleNode;2243;-3246.353,5438.069;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;2244;-2850.353,5444.069;Inherit;False;FLOAT3;0;1;2;3;1;0;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;2245;-2417.011,5503.98;Inherit;False;0;4;0;FLOAT;4;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2247;-2748.513,5358.38;Inherit;False;2236;SpecularTintMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2249;-3640.082,5695.93;Inherit;False;Property;_SpecularTintMap;Specular Tint Map;19;2;[Header];[Enum];Create;True;0;6;Map 01;0;Map 02;1;Map 03;2;Map 04;3;None;4;Base Color;5;0;False;0;False;4;4;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2239;-3753.455,5522.327;Inherit;False;1234;MaskMap02;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;1459;341.7084,4118.642;Inherit;False;1444;SpecularTintUnpacked;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1463;1182.96,4193.077;Inherit;False;SpecularTint;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.ColorNode;1449;704.4343,4033.948;Inherit;False;Property;_SpecularTint;Specular Tint;67;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,1;1,1,1,1;True;False;0;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.Compare;2246;-2252.887,5673.452;Inherit;False;0;4;0;FLOAT;5;False;1;FLOAT;1;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2248;-2562.886,5666.452;Inherit;False;2236;SpecularTintMap;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1444;-2235.744,5582.378;Inherit;False;SpecularTintUnpacked;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2226;-2559.733,5741.042;Inherit;False;2227;BaseColorB4Starshine;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2227;419.6491,496.8243;Inherit;False;BaseColorB4Starshine;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;577;3420.659,2255.716;Inherit;False;IndDiffuse;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1299;130.0084,4612.812;Inherit;False;1249;Workflow;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1248;-1048.245,3902.323;Inherit;False;Property;_Workflow;Workflow;43;2;[Header];[Enum];Create;True;0;3;Metallic;0;Specular;1;Packed;2;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1309;1010.41,4611.535;Inherit;False;Occlusion;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1312;-2229.028,4332.834;Inherit;False;OcclusionMapUnpacked;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1302;458.6323,4634.888;Inherit;False;5;4;0;FLOAT;1;False;1;FLOAT;1;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1071;3980.399,731.778;Inherit;False;650;Smoothness ;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;661;6779.861,-195.3644;Inherit;False;645;SpecularBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;791;6771.995,-111.2367;Inherit;False;571;PixelLightsBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;651;-862.4048,4797.087;Half;False;Property;_GlossMult;Smoothness;66;0;Create;False;0;0;0;False;0;False;0.5;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;580;6790.795,-275.3176;Inherit;False;824;DiffuseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;1918;-1241.338,689.7944;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1919;-1481.338,769.7946;Inherit;False;1790;DreamweaveMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1780;-1081.338,609.7944;Inherit;False;Property;_DreamweaveEnable;Dreamweave;150;0;Create;False;0;0;0;True;0;False;0;0;0;True;_DREAMWEAVE_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2065;3063.06,346.9807;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1675;-614.4449,4365.814;Inherit;False;1660;StarshineMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1676;-376.445,4268.814;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1692;-620.4537,4297.051;Inherit;False;1691;StarshineMetallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;840;-645.788,4183.314;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2043;4650.691,-111.0012;Inherit;False;Property;_Keyword16;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;824;3778.535,-179.4262;Inherit;False;DiffuseColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2040;2669.159,-269.7522;Inherit;False;Property;_Keyword15;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;1085;2470.507,-244.8757;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1116;3415.612,-97.67804;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2453;3200.67,-254.2653;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;1113;3636.612,-181.6782;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;616;6756.428,-353.6517;Inherit;False;615;MainPassLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2476;4619.686,2330.977;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2477;4437.686,2410.977;Inherit;False;Constant;_Float11;Float 11;102;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2478;2019.044,2398.224;Inherit;False;Constant;_Float12;Float 12;102;0;Create;True;0;0;0;False;0;False;0.9;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2406;-113.3552,3763.222;Inherit;False;Property;_StarShine5;StarShine;150;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1780;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1114;3365.612,-174.6782;Inherit;False;579;BaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2491;-569.4788,3733.384;Inherit;False;2;2;0;FLOAT;0.35;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;579;1119.761,652.2094;Inherit;False;BaseColor;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2496;-1723.013,855.3993;Inherit;False;Constant;_Float7;Float 7;103;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1921;-1465.338,689.7944;Inherit;False;1920;Dreamweave;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2481;-772.332,3753.407;Inherit;False;-1;;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1768;-671.1969,4052.092;Inherit;False;Property;_StarShine3;StarShine;149;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1765;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2404;-385.5858,3820.276;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.65;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2410;3639.783,-313.1148;Inherit;False;Property;_Keyword21;Keyword 1;150;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;1780;True;True;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2501;7990.704,4582.181;Inherit;False;Constant;_Float0;Float 0;102;0;Create;True;0;0;0;False;0;False;0.5;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2500;8137.604,4487.281;Inherit;False;3;0;FLOAT3;0.5,0.5,0.5;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2394;6282.427,4882.143;Inherit;False;Constant;_DreamweaveShine;Dreamweave Shine;118;0;Create;True;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2465;7502.303,4564.01;Inherit;False;1309;Occlusion;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.IndirectSpecularLight;2463;7727.895,4501.012;Inherit;False;World;3;0;FLOAT3;0,0,1;False;1;FLOAT;0.4;False;2;FLOAT;1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;2498;8357.553,4482.046;Inherit;False;3;0;FLOAT3;0.5,0.5,0.5;False;1;FLOAT3;1.1,1.1,1.1;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1904;8109.144,4402.02;Inherit;False;1174;NormalMap;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1895;8096.474,4324.91;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1910;8094.994,4247.407;Inherit;False;1909;DetailTEX;1;0;OBJECT;;False;1;SAMPLER2D;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2467;8766.394,4452.634;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1920;8941.803,4453.068;Inherit;False;Dreamweave;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2412;7957.234,4767.199;Inherit;False;Property;_Keyword22;Keyword 1;138;0;Create;True;0;0;0;False;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Reference;2024;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2413;6807.774,4794.318;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.65;False;2;FLOAT;0.655;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;2461;7750.074,4685.413;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2456;7199.114,4656.99;Inherit;False;ExponentialSquared_Blend;-1;;12833;efb3460b844852b4dbb4ae0ca3ca7cf2;1,7,1;2;12;FLOAT;0;False;9;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2403;-623.5856,3917.276;Inherit;False;1790;DreamweaveMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1949;7019.93,279.2756;Inherit;False;Property;_StarShineEnable1;StarShine;150;0;Create;False;0;0;0;False;0;False;0;0;0;True;_STARSHINE_ON;Toggle;2;Key0;Key1;Reference;1780;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2129;6777.538,457.1653;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;2268;7187.887,470.0976;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;2563;7351.346,507.0931;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.0001;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2261;7060.601,635.7178;Inherit;False;Constant;_Fuzz;Fuzz;121;0;Create;True;0;0;0;False;0;False;-1.5;0;-2;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;2319;7335.951,634.6353;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2330;7527.984,658.4441;Inherit;False;615;MainPassLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2380;7559.464,726.2753;Inherit;False;824;DiffuseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;2335;7751.155,547.1978;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2564;7524.206,810.553;Inherit;False;1790;DreamweaveMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2263;6962.287,500.5977;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2265;6955.886,570.7975;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2566;8109.869,698.3774;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;581;8419.301,406.3031;Inherit;False;2057;AttenBaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;619;8424.557,484.1519;Inherit;False;618;AddPassLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2567;7848.148,772.1019;Inherit;False;2057;AttenBaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2568;7853.404,849.9507;Inherit;False;618;AddPassLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2569;8508.878,713.217;Inherit;False;Property;_StarShineEnable4;StarShine;150;0;Create;False;0;0;0;False;0;False;0;0;0;True;_STARSHINE_ON;Toggle;2;Key0;Key1;Reference;1780;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2565;8126.393,495.5902;Inherit;False;Property;_StarShineEnable3;StarShine;150;0;Create;False;0;0;0;False;0;False;0;0;0;True;_STARSHINE_ON;Toggle;2;Key0;Key1;Reference;1780;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2570;7980.179,266.9109;Inherit;False;Property;_FabricLightEnable;Fabric Lighting;151;0;Create;False;0;0;0;False;0;False;0;0;0;True;_FABRICLIGHT_ON;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;1789;-2234.471,5211.569;Inherit;False;OutlineMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2146;-2244.26,5126.617;Inherit;False;StardustHeight;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2004;-2234.733,5045.298;Inherit;False;StarshellMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2574;-2237.372,4949.828;Inherit;False;FabricLightMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2329;7942.942,521.2604;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2576;8132.412,601.1658;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2571;7980.177,374.8109;Inherit;False;Property;_FabricLightEnable1;Fabric Lighting;137;0;Create;False;0;0;0;False;0;False;0;0;0;True;_FABRICLIGHT_ON;Toggle;2;Key0;Key1;Reference;-1;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2577;8508.03,810.9363;Inherit;False;Property;_FabricLightEnable2;Fabric Lighting;138;0;Create;False;0;0;0;False;0;False;0;0;0;True;_FABRICLIGHT_ON;Toggle;2;Key0;Key1;Reference;-1;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2578;8261.031,721.2364;Inherit;False;Property;_FabricLightEnable3;Fabric Lighting;137;0;Create;False;0;0;0;False;0;False;0;0;0;True;_FABRICLIGHT_ON;Toggle;2;Key0;Key1;Reference;-1;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2579;8358.53,849.9364;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2580;7820.331,352.0364;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2581;7599.331,380.8364;Inherit;False;2574;FabricLightMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2575;8060.813,922.9659;Inherit;False;2574;FabricLightMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2464;7502.093,4481.616;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2194;1116.179,-418.8336;Inherit;False;WorldNormToon;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;1154;6267.585,3433.059;Inherit;False;Property;_MaxOutlineWidth1;Max Outline Width;85;0;Create;False;0;0;0;True;0;False;350;250;0;1000;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1187;7542.436,3066.314;Inherit;False;Property;_OutlineColor1;Outline Color;82;0;Create;False;0;0;0;True;0;False;0,0,0,1;0,0,0,1;True;True;0;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RangedFloatNode;1150;6233.416,3196.382;Inherit;False;Property;_OutlineWidth1;Outline Width;83;0;Create;False;0;0;0;True;0;False;20;20;0;1000;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1952;8139.062,3141.875;Inherit;False;Property;_Outline1Enable;_OutlineEnable;144;0;Create;False;0;0;0;True;0;False;0;0;0;True;_OUTLINE1_ON;Toggle;2;_OUTLINE_OFF;_OUTLINE_ON;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2460;7532.874,4666.214;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;3.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;2459;7016.774,4662.314;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;2458;6821.794,4663.828;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.4;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2390;6388.526,4678.302;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2391;6403.167,4757.091;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;2389;6606.704,4703.333;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2713;11019.62,5969.283;Inherit;False;601;WorldNorm;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2714;11034.26,6048.072;Inherit;False;639;WorldView;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.DotProductOpNode;2715;11237.8,5994.314;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DynamicAppendNode;1965;10976.37,6403.575;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1980;10722.48,6391.284;Inherit;False;4;4;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LerpOp;2141;10399.72,6443.729;Inherit;False;3;0;FLOAT3;1,1,1;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.LengthOpNode;2656;9706.16,6648.638;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2712;9936.926,6500.59;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.9;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;2711;9762.78,6504.108;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2658;10106.86,6660.197;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;2660;9884.378,6817.637;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0.01;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2139;10179.96,6317.741;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;2140;10345.05,6257.94;Inherit;False;Property;_OutlineEnable3;_OutlineEnable;152;0;Create;True;0;0;0;True;0;False;0;0;0;True;_OUTLINE_ON;Toggle;2;Key0;Key1;Reference;2098;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2137;9849.759,6235.841;Inherit;False;Constant;_Float57;Float 56;92;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2136;9847.158,6309.939;Inherit;False;2089;Rainbow;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2138;9831.558,6385.342;Inherit;False;Property;_RainbowStardust;Rainbow Stardust;136;1;[ToggleUI];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;1988;10344.88,6066.333;Inherit;False;Property;_StarshellColor;Starshell Color;143;1;[HDR];Create;True;0;0;0;True;0;False;5.992157,5.992157,5.992157,0;5.992157,5.992157,5.992157,0;True;False;0;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SimpleAddOpNode;2692;11181.04,6227.654;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.05;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2651;10983.45,6222.655;Inherit;False;Constant;_dotRadius;dotRadius;100;0;Create;True;0;0;0;False;0;False;0.25;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2745;11051.63,6140.455;Inherit;False;2744;SparkleWidth;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2747;8943.849,6578.359;Inherit;False;2746;StardustUV;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.GetLocalVarNode;2142;10163.63,6433.529;Inherit;False;579;BaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2143;10144.13,6507.628;Inherit;False;Property;_StardustBaseColor;StardustBaseColor;134;1;[ToggleUI];Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2670;9195.32,6904.602;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2684;9474.376,6921.796;Inherit;False;Constant;_Float62;Float 62;100;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2722;9655.989,6928.646;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2682;9885.841,6923.36;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;2;False;2;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;2721;9651.19,7054.702;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;2;False;3;FLOAT;2;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1994;9355.547,7065.492;Inherit;False;Property;_StarshellDensity;Starshell Density;139;0;Create;True;0;0;0;True;0;False;0.4;1.8;0.2;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2694;9656.98,7234.131;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.25;False;2;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2681;10531.42,6660.734;Inherit;False;5;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2666;8828.209,7016.223;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1986;8664.355,6981.386;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1993;8177.111,7001.112;Inherit;False;Property;_StarShellSparkleSpeed;StarShell SparkleSpeed;142;0;Create;True;0;0;0;True;0;False;0.3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2597;7299.694,7358.208;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;2559;6887.442,7413.042;Inherit;False;Property;_StarShellSparkleScale;StarShell Sparkle Scale;131;0;Create;True;0;0;0;True;0;False;64;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2746;7491.863,7371.143;Inherit;False;StardustUV;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;2009;6419.249,7235.888;Inherit;False;Property;_StarshellUV;StarshellUV;81;1;[Enum];Create;True;0;5;UV0;0;UV1;1;UV2;2;UV3;3;UV4;4;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2113;6901.129,7291.889;Inherit;False;UV Channel Select;-1;;12834;36e8c8f20cc04d74c8de55cbffb0df3c;2,50,0,120,0;3;2;SAMPLER2D;0;False;14;FLOAT;0;False;52;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1987;8483.645,7076.087;Inherit;False;Constant;_Float6;Float 6;80;0;Create;True;0;0;0;False;0;False;64;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2753;8462.166,7159.9;Inherit;False;2752;voronoiID;1;0;OBJECT;;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;1979;8643.828,6910.799;Inherit;False;Constant;_Float3;Float 3;80;0;Create;True;0;0;0;False;0;False;1024;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1989;8764.673,6832.027;Inherit;False;1463;SpecularTint;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;1977;9260.007,7804.304;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1972;9246.399,7904.065;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.TransformDirectionNode;1973;8850.991,7825.303;Inherit;False;World;Object;False;Fast;False;1;0;FLOAT3;0,0,0;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.WorldNormalVector;1974;8669.087,7834.4;Inherit;False;False;1;0;FLOAT3;0,0,1;False;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.LerpOp;1967;8972.808,7977.444;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1969;8748.808,7961.444;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1970;8476.808,7945.444;Inherit;False;Constant;_Float40;Float 10;26;0;Create;True;0;0;0;False;0;False;0.001;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2149;8604.808,7993.444;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;1968;8763.331,8070.731;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1971;8265.854,8085.975;Inherit;False;Property;_ShellWidth;Shell Width;84;0;Create;True;0;0;0;True;0;False;1;20;0;256;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2148;8293.761,7986.452;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2147;8026.938,7963.158;Inherit;False;2146;StardustHeight;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2150;8034.938,8047.158;Inherit;False;Property;_StardustHeightScale;Stardust HeightScale;133;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1976;9117.007,7811.304;Inherit;False;Constant;_Float41;Float 26;49;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1975;9142.151,7710.311;Inherit;False;1202;VertexDiscardOutput;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.Compare;1978;9498.007,7707.306;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0.001;False;2;FLOAT;0;False;3;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;2001;9485.149,7591.517;Inherit;False;2;0;FLOAT;1;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;1290;11799.91,2993.402;Inherit;False;2;2;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.GetLocalVarNode;1296;11189.14,2989.235;Inherit;False;1295;GlowMaskRGBA;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1428;11261.06,3067.506;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.StaticSwitch;1503;10980.07,3040.928;Inherit;False;Property;_EnableEmission;Emission;353;0;Create;False;0;0;0;False;0;False;0;0;0;True;_EMISSION;Toggle;2;Key0;Key1;Create;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;850;10737.99,3064.973;Inherit;False;849;EmissionColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1429;11051.06,3138.506;Inherit;False;1427;EmissionMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2018;11914.41,2991.739;Inherit;False;LumaGlow;-1;True;1;0;FLOAT4;0,0,0,0;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2089;11894.98,2887.438;Inherit;False;Rainbow;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Compare;2691;11368.63,6238.195;Inherit;False;2;4;0;FLOAT;0;False;1;FLOAT;0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2005;11174.05,6337.238;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2756;11413.88,6391.267;Inherit;False;ScreenspaceSizeClip;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2754;11693.38,6246.966;Inherit;False;3;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;2;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.LerpOp;2757;10223.38,7164.107;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2758;10018.19,7191.758;Inherit;False;Constant;_Float65;Float 65;102;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2759;9951.244,7338.741;Inherit;False;2756;ScreenspaceSizeClip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2760;8791.39,6712.972;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2751;8466.368,6713.13;Inherit;False;2749;PixelSize;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2761;8522.164,6634.387;Inherit;False;Constant;_Float66;Float 66;102;0;Create;True;0;0;0;False;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2763;8455.588,6806.109;Inherit;False;2756;ScreenspaceSizeClip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2750;9012.317,7359.353;Inherit;False;2749;PixelSize;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2744;9644.102,6834.192;Inherit;False;SparkleWidth;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2718;8880.792,6906.015;Inherit;False;Property;_SparkleSize;Sparkle Size;130;0;Create;True;0;0;0;False;0;False;0.03;0.001;0;0.25;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2755;11165.59,6448.467;Inherit;False;Property;_SizeClip;Screenspace Size Clip;129;1;[ToggleUI];Create;False;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.ColorNode;2764;5927.42,-679.3826;Inherit;False;Property;_FavoriteColor;Favorite Color;128;0;Create;False;0;0;0;True;0;False;0.5,0.5,0.5,0;0,0,0,0;True;False;0;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.GetLocalVarNode;1200;8644.062,66.50999;Inherit;False;1197;VertexDiscard;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1184;8669.102,-70.76048;Inherit;False;1179;AlphaClip;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2024;-1352.083,-448.412;Inherit;False;Property;_LightingStyle;Lighting Style;138;0;Create;True;0;0;0;True;0;False;0;0;0;True;;KeywordEnum;2;Standard;Toon;Create;True;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;650;-364.07,4614.786;Inherit;False;Smoothness ;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;1275;-1599.409,4701.866;Inherit;False;1274;GlossMapUnpacked;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2659;9900.046,6705.22;Inherit;False;2;2;0;FLOAT;0.01;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;2680;9495.561,6745.709;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2452;3024.67,-198.2643;Inherit;False;Constant;_Float59;Float 31;12;0;Create;True;0;0;0;False;0;False;0.8;0.15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2451;2989.67,-268.2654;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2450;3451.67,-295.265;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;815;5051.354,-154.4911;Inherit;False;IndSpec;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1115;3204.612,-111.6782;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;839;-438.08,4139.185;Inherit;False;Metallic;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2848;3553.614,477.8585;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2019;7116.471,8.322705;Inherit;False;2018;LumaGlow;1;0;OBJECT;;False;1;FLOAT4;0
Node;AmplifyShaderEditor.RangedFloatNode;1117;3239.612,-41.67706;Inherit;False;Constant;_Float31;Float 31;12;0;Create;True;0;0;0;False;0;False;0.025;0.15;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2849;3459.5,-631.4267;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2066;3334.271,404.5757;Inherit;False;1463;SpecularTint;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1448;3343.019,153.796;Inherit;False;1463;SpecularTint;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2855;3596.406,-56.69849;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1446;3650.511,42.45107;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.OneMinusNode;2856;3158.306,135.7015;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;841;2899.108,135.001;Inherit;False;839;Metallic;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.TFHCRemapNode;2871;3047.614,478.269;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.85;False;3;FLOAT;0;False;4;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;2872;3241.314,487.369;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2888;7484.674,534.2138;Inherit;False;NDF GGX;-1;;12921;188193def285b4249aa21de449cf0c25;2,675,0,676,1;2;571;FLOAT;0;False;705;FLOAT;0.5;False;1;FLOAT;272
Node;AmplifyShaderEditor.FunctionNode;2893;4283.503,585.0919;Inherit;False;GGX_Specular_Light;-1;;12923;d8a67d11c3dffde4eb8ff8f5fa698803;8,322,1,326,1,329,0,354,1,362,1,318,1,364,1,366,1;14;381;FLOAT;0;False;365;FLOAT3;0,0,0;False;358;FLOAT;0;False;353;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;335;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;3;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.FunctionNode;2894;4280.314,331.8553;Inherit;False;GGX_Specular_Light;-1;;12930;d8a67d11c3dffde4eb8ff8f5fa698803;8,322,1,326,1,329,0,354,0,362,0,318,1,364,1,366,0;14;381;FLOAT;0;False;365;FLOAT3;0,0,0;False;358;FLOAT;0;False;353;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;335;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;3;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.FunctionNode;2895;4258.878,-343.2452;Inherit;False;GGX_Specular_Light;-1;;12937;d8a67d11c3dffde4eb8ff8f5fa698803;8,322,1,326,1,329,0,354,0,362,0,318,1,364,1,366,0;14;381;FLOAT;0;False;365;FLOAT3;0,0,0;False;358;FLOAT;0;False;353;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;335;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;3;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.FunctionNode;2896;4271.632,-80.22626;Inherit;False;GGX_Specular_Light;-1;;12944;d8a67d11c3dffde4eb8ff8f5fa698803;8,322,1,326,1,329,0,354,1,362,1,318,1,364,1,366,1;14;381;FLOAT;0;False;365;FLOAT3;0,0,0;False;358;FLOAT;0;False;353;FLOAT;0;False;328;FLOAT3;0,0,0;False;327;FLOAT3;0,0,0;False;335;FLOAT3;0,0,0;False;286;FLOAT3;0,0,0;False;30;FLOAT3;0,0,0;False;317;FLOAT3;0,0,0;False;359;FLOAT3;0,0,0;False;146;FLOAT3;0,0,0;False;147;FLOAT;0;False;302;FLOAT;0;False;3;FLOAT3;315;FLOAT3;0;FLOAT;316
Node;AmplifyShaderEditor.StaticSwitch;2898;-1592.741,-844.0999;Inherit;False;Property;_ALPHAPREMULTIPLY;_ALPHAPREMULTIPLY;127;0;Create;True;0;0;0;True;0;False;0;0;0;True;;Toggle;2;Key0;Key1;Create;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2900;-1377.841,-643.9999;Inherit;False;Property;_ALHPATEST;_ALHPATEST;120;0;Create;True;0;0;0;False;0;False;0;0;0;False;_ALPHATEST_ON;Toggle;2;Key0;Key1;Fetch;False;True;All;9;1;FLOAT;0;False;0;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;4;FLOAT;0;False;5;FLOAT;0;False;6;FLOAT;0;False;7;FLOAT;0;False;8;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1486;968.4836,-576.2839;Inherit;False;Property;_DestinationBlendRGB;Destination Blend RGB;375;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;0;10;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1485;974.6735,-497.3667;Inherit;False;Property;_SourceBlendRGB;Source Blend RGB;376;1;[Enum];Create;False;0;0;1;UnityEngine.Rendering.BlendMode;True;0;False;1;1;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2942;-1782.088,2382.911;Inherit;False;BetterTime;-1;;12951;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2943;-15.33774,2396.523;Inherit;False;BetterTime;-1;;12952;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FunctionNode;2945;8427.745,4293.928;Inherit;False;Somna Dreamweave;20;;12960;b5202a056bc85e34c945b414075beee4;0;5;153;FLOAT3;0,0,0;False;70;SAMPLER2D;0;False;76;FLOAT2;0,0;False;62;FLOAT3;0,0,0;False;65;FLOAT3;0,0,1;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;2946;11655.91,2882.757;Inherit;False;ScrollingRainbow;0;;12974;15d541e469abe47428e2321d561d83a8;0;2;85;FLOAT;0;False;37;COLOR;0,0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FunctionNode;2948;11179.27,2886.656;Inherit;False;BetterTime;-1;;12983;156331faf21cfaf4799ef311c5ff7fdd;3,33,1,5,1,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;2950;11702.97,6170.635;Inherit;False;Constant;_Float70;Float 70;104;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2716;11912.15,5894.712;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0.5;False;2;FLOAT;0.8;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2955;11690.97,5863.635;Inherit;False;3;0;FLOAT;0.1;False;1;FLOAT;0.5;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2954;11693.97,5998.635;Inherit;False;3;0;FLOAT;0.45;False;1;FLOAT;0.8;False;2;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2951;11143.97,5724.635;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0.1;False;2;FLOAT;0.45;False;1;FLOAT;0
Node;AmplifyShaderEditor.Vector2Node;2956;11406.97,5805.635;Inherit;False;Constant;_Vector21;Vector 21;105;0;Create;True;0;0;0;False;0;False;0.1,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.Vector2Node;2957;11389.97,5975.635;Inherit;False;Constant;_Vector22;Vector 21;105;0;Create;True;0;0;0;False;0;False;0.45,0.8;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;2953;11316.97,6134.635;Inherit;False;Property;_EdgeFade;Edge Hide;126;0;Create;False;0;0;0;False;0;False;1;0;0;1;0;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2584;11475.66,2970.732;Inherit;False;Luma Glow Properties;196;;12985;f1c8dbacdb2c38742addb3835176585b;1,260,0;4;316;FLOAT2;0,0;False;266;FLOAT4;0,0,0,0;False;1;FLOAT3;0,0,0;False;155;FLOAT3;0,0,0;False;3;FLOAT;244;FLOAT4;183;FLOAT4;0
Node;AmplifyShaderEditor.Vector2Node;1615;10892.58,2885.122;Inherit;False;Property;_AnimatedOffsetDirectionalMap;AnimatedOffset DirectionalMap;48;0;Create;True;0;0;0;False;0;False;0,0;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RegisterLocalVarNode;1655;9604.23,2961.788;Inherit;False;StarshineAlbedo;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2959;9560.72,3281.856;Inherit;False;608;NdotLBase;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1667;9787.723,3070.171;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;2958;9554.72,3210.856;Inherit;False;2207;Attenuation;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;1656;9593.074,3041.697;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1626;8745.235,2996.584;Inherit;False;571;PixelLightsBase;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;571;4773.428,1429.286;Inherit;False;PixelLightsBase;-1;True;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;1657;8727.767,3193.806;Inherit;False;615;MainPassLight;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMaxOpNode;2961;9773.418,3227.437;Inherit;False;2;0;FLOAT;0.2;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2965;9009.908,2924.143;Inherit;False;Somna Starshine;36;;13099;dd86d69408a750349b7058ea20713790;0;6;82;FLOAT;0;False;85;FLOAT;0;False;53;FLOAT3;0,0,0;False;67;FLOAT3;0,0,0;False;43;FLOAT3;0,0,0;False;26;FLOAT3;0,0,0;False;3;FLOAT;59;FLOAT3;51;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;2748;8976.065,6649.877;Inherit;False;Constant;_Float64;Float 64;101;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2966;8954.845,6771.036;Inherit;False;Constant;_Float71;Float 71;105;0;Create;True;0;0;0;False;0;False;0.14;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.VoronoiNode;1957;9189.56,6596.592;Inherit;True;0;0;1;0;1;True;256;False;False;False;4;0;FLOAT2;0,0;False;1;FLOAT;1.5;False;2;FLOAT;512;False;3;FLOAT;0;False;3;FLOAT;0;FLOAT2;1;FLOAT2;2
Node;AmplifyShaderEditor.DiffuseAndSpecularFromMetallicNode;706;3269.305,26.20398;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;3;FLOAT3;0;FLOAT3;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;2847;3163.177,211.1882;Inherit;False;Constant;_Float10;Float 10;103;0;Create;True;0;0;0;False;0;False;0.04;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.LerpOp;2846;3608.677,172.1882;Inherit;False;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.GetLocalVarNode;707;2895.504,25.70398;Inherit;False;579;BaseColor;1;0;OBJECT;;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;1991;6428.945,7342.757;Inherit;False;Property;_StarshellSpeed;Starshell Speed;140;0;Create;True;0;0;0;True;0;False;0.0025,0.0025;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.FunctionNode;2947;6672.295,7338.984;Inherit;False;BetterTime;-1;;13106;156331faf21cfaf4799ef311c5ff7fdd;3,33,2,5,1,34,1;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2980;7504.882,9249.615;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2979;7623.882,9242.615;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;1.72;False;2;FLOAT;2;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2986;7850.225,9253.279;Inherit;True;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;1494;285.1354,-51.03463;Inherit;False;Property;_ShowMain;ShowMain;369;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2987;372.4396,146.1985;Inherit;False;Property;_ShowConstellation;ShowConstellation;368;0;Create;True;0;0;0;True;0;False;0;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2991;-2766.551,4783.007;Inherit;False;ConstellationMask;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;2975;7269.882,9455.615;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.FloorOpNode;2971;7008.382,9244.415;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2977;7159.882,9242.615;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2981;9944.452,8998.921;Inherit;False;Constellation;-1;True;1;0;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.DynamicAppendNode;2982;9748.452,8996.921;Inherit;False;COLOR;4;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;2969;6131.557,9059.929;Inherit;False;BetterTime;-1;;13109;156331faf21cfaf4799ef311c5ff7fdd;3,33,2,5,1,34,1;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3012;8146.756,8961.931;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;3015;8276.419,8958.749;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.ColorNode;2997;8810.939,8627.655;Inherit;False;Property;_ConstellationColor;ConstellationColor;124;1;[HDR];Create;True;0;0;0;False;0;False;1,1,1,0;1,1,1,0;True;False;0;6;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.FractNode;3022;8202.322,8752.05;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;3023;8197.122,8840.449;Inherit;False;Constant;_Float73;Float 73;110;0;Create;True;0;0;0;False;0;False;0.8;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;3018;7911.121,8762.45;Inherit;False;0;2972;2;3;2;SAMPLER2D;;False;0;FLOAT2;3,3;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.FunctionNode;3021;8423.323,8732.55;Inherit;True;Rectangle;-1;;13112;6b23e0c975270fb4084c354b2c83366a;0;3;1;FLOAT2;0,0;False;2;FLOAT;0.5;False;3;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2985;11650.7,6501.596;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;2984;11269.7,6567.596;Inherit;False;2981;Constellation;1;0;OBJECT;;False;1;COLOR;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2992;11490.01,6568.256;Inherit;False;2;2;0;COLOR;0,0,0,0;False;1;FLOAT;0;False;1;COLOR;0
Node;AmplifyShaderEditor.GetLocalVarNode;2993;11276.01,6639.256;Inherit;False;2004;StarshellMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;2988;11794.43,6465.229;Inherit;False;Property;_ConstellationEnable;_ConstellationEnable;146;0;Create;True;0;0;0;True;0;False;0;0;0;True;_CONSTELLATION_ON;Toggle;2;_OUTLINE_OFF;_OUTLINE_ON;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.FunctionNode;2976;6947.381,9340.215;Inherit;False;BetterTime;-1;;13113;156331faf21cfaf4799ef311c5ff7fdd;3,33,2,5,0,34,0;4;1;FLOAT;0.035;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;3014;7324.459,8913.831;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.DynamicAppendNode;3042;7568.552,9624.281;Inherit;False;FLOAT3;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector3Node;3043;7554.552,9751.281;Inherit;False;Constant;_Vector23;Vector 23;110;0;Create;True;0;0;0;False;0;False;0.1031,0.103,0.0973;0,0,0;0;4;FLOAT3;0;FLOAT;1;FLOAT;2;FLOAT;3
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3044;7745.552,9678.281;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.FractNode;3041;7904.552,9680.281;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3047;8173.552,9769.281;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.RangedFloatNode;3048;7982.552,9840.281;Inherit;False;Constant;_Float72;Float 72;110;0;Create;True;0;0;0;False;0;False;33.33;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.DotProductOpNode;3045;8320.552,9679.281;Inherit;False;2;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.WireNode;3050;8131.552,9636.281;Inherit;False;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3049;8490.552,9600.281;Inherit;False;2;2;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SwizzleNode;3046;8020.552,9768.281;Inherit;False;FLOAT3;1;2;0;3;1;0;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3052;8818.552,9539.281;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode;3051;8657.552,9518.281;Inherit;False;FLOAT2;0;0;0;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode;3053;8657.552,9603.281;Inherit;False;FLOAT2;1;2;0;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3055;8942.552,9560.281;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SwizzleNode;3054;8650.552,9683.281;Inherit;False;FLOAT2;2;1;0;3;1;0;FLOAT3;0,0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;3056;9234.253,9559.981;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;3029;9364.359,10184.36;Inherit;False;0;-1;2;3;2;SAMPLER2D;;False;0;FLOAT2;3,3;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.DynamicAppendNode;3037;9844.148,9560.431;Inherit;False;FLOAT2;4;0;FLOAT2;0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;3036;9487.85,9554.229;Inherit;False;5;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT2;1,1;False;3;FLOAT2;0,0;False;4;FLOAT2;2,2;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FloorOpNode;3038;9686.849,9551.53;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleDivideOpNode;3030;10224.91,9582.339;Inherit;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3035;10088.47,9560.966;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SamplerNode;3028;10482.61,9255.741;Inherit;True;Property;_TextureSample8;Texture Sample 8;121;0;Create;True;0;0;0;False;0;False;-1;None;None;True;0;False;white;Auto;False;Instance;2972;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.SamplerNode;2972;10396.77,9546.512;Inherit;True;Property;_Constellation;Constellation;125;0;Create;True;0;0;0;False;0;False;-1;8aeb5c28dc9d8bc46885382013e946b2;8aeb5c28dc9d8bc46885382013e946b2;True;0;False;white;Auto;False;Object;-1;Auto;Texture2D;8;0;SAMPLER2D;;False;1;FLOAT2;0,0;False;2;FLOAT;0;False;3;FLOAT2;0,0;False;4;FLOAT2;0,0;False;5;FLOAT;1;False;6;FLOAT;0;False;7;SAMPLERSTATE;;False;6;COLOR;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4;FLOAT3;5
Node;AmplifyShaderEditor.RelayNode;3010;7326.938,8988.116;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3060;9773.621,9694.513;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.FractNode;3062;9898.375,9681.955;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;3031;10585.71,9850.541;Inherit;False;Constant;_Float74;Float 74;110;0;Create;True;0;0;0;False;0;False;3;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RotatorNode;3063;10147.17,9826.184;Inherit;True;3;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;2;FLOAT;1;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3068;9998.15,9854.085;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.Vector2Node;3064;9717.15,9889.085;Inherit;False;Constant;_Vector24;Vector 24;110;0;Create;True;0;0;0;False;0;False;0.5,0.5;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.NoiseGeneratorNode;3005;7276.071,9686.758;Inherit;True;Simplex2D;False;False;2;0;FLOAT2;0,0;False;1;FLOAT;1;False;1;FLOAT;0
Node;AmplifyShaderEditor.RelayNode;3039;7302.601,9905.36;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RelayNode;3061;7283.082,10116.14;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.TFHCRemapNode;3008;8182.574,10074.85;Inherit;False;5;0;FLOAT;0;False;1;FLOAT;-1;False;2;FLOAT;1;False;3;FLOAT;0;False;4;FLOAT;360;False;1;FLOAT;0
Node;AmplifyShaderEditor.RadiansOpNode;3009;9718.45,10056;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2998;9327.161,9197.39;Inherit;False;4;4;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0;False;3;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2996;9141.038,8878.554;Inherit;True;3;3;0;FLOAT3;0,0,0;False;1;FLOAT3;0,0,0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2978;9428.587,9006.095;Inherit;False;3;3;0;FLOAT3;0,0,0;False;1;FLOAT;0;False;2;FLOAT;0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.Vector2Node;2968;5888.207,9063.702;Inherit;False;Property;_ConstellationSpeed;Constellation Speed;141;0;Create;True;0;0;0;True;0;False;0.2,0.2;0,0;0;3;FLOAT2;0;FLOAT;1;FLOAT;2
Node;AmplifyShaderEditor.RangedFloatNode;3070;6733.243,9373.85;Inherit;False;Property;_FadeFreqency;Fade Freqency;123;0;Create;True;0;0;0;False;0;False;0.035;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3059;9883.634,9754.989;Inherit;False;Property;_SheetSize;Sheet Size (square);121;0;Create;False;0;0;0;False;0;False;3;3;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleSubtractOpNode;3072;7783.727,9500.323;Inherit;False;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3073;7607.727,9497.323;Inherit;False;Constant;_Float2;Float 2;113;0;Create;True;0;0;0;False;0;False;2;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2752;9467.31,6441.221;Inherit;False;voronoiID;-1;True;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.NoiseGeneratorNode;2671;8943.634,7012.097;Inherit;False;Simplex2D;True;True;2;0;FLOAT2;0,0;False;1;FLOAT;32;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3071;7512.727,9414.323;Inherit;False;Property;_ConstellationAmount;Amount;122;0;Create;False;0;0;0;False;0;False;0.3;0;0.25;2;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3081;10750.4,7001.393;Inherit;False;Constant;_Float77;Float 77;113;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.StaticSwitch;1999;9710.839,7552.384;Inherit;False;Property;_StarshellEnable1;_StarshellEnable;145;0;Create;True;0;0;0;True;0;False;0;0;0;True;_STARSHELL_ON;Toggle;2;_OUTLINE_OFF;_OUTLINE_ON;Reference;1998;True;False;All;9;1;FLOAT3;0,0,0;False;0;FLOAT3;0,0,0;False;2;FLOAT3;0,0,0;False;3;FLOAT3;0,0,0;False;4;FLOAT3;0,0,0;False;5;FLOAT3;0,0,0;False;6;FLOAT3;0,0,0;False;7;FLOAT3;0,0,0;False;8;FLOAT3;0,0,0;False;1;FLOAT3;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2717;12249.38,6211.517;Inherit;False;2;2;0;FLOAT;0;False;1;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.StaticSwitch;1998;12409.34,6195.619;Inherit;False;Property;_StarshellEnable;_StarshellEnable;145;0;Create;True;0;0;0;True;0;False;0;0;0;True;_STARSHELL_ON;Toggle;2;_OUTLINE_OFF;_OUTLINE_ON;Create;True;False;All;9;1;COLOR;0,0,0,0;False;0;COLOR;0,0,0,0;False;2;COLOR;0,0,0,0;False;3;COLOR;0,0,0,0;False;4;COLOR;0,0,0,0;False;5;COLOR;0,0,0,0;False;6;COLOR;0,0,0,0;False;7;COLOR;0,0,0,0;False;8;COLOR;0,0,0,0;False;1;COLOR;0
Node;AmplifyShaderEditor.RegisterLocalVarNode;2749;8701.906,7383.966;Inherit;False;PixelSize;-1;True;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.GetLocalVarNode;2006;10887.89,6316.705;Inherit;False;2004;StarshellMask;1;0;OBJECT;;False;1;FLOAT;0
Node;AmplifyShaderEditor.FunctionNode;2949;8473.088,6995.456;Inherit;False;BetterTime;-1;;13114;156331faf21cfaf4799ef311c5ff7fdd;3,33,2,5,0,34,0;4;1;FLOAT;1;False;2;FLOAT2;1,1;False;3;FLOAT3;1,1,1;False;4;FLOAT4;1,1,1,1;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;2674;7804.145,7391.167;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LengthOpNode;2675;7935.368,7303.439;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LengthOpNode;2676;7945.99,7407.535;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2677;8132.939,7341.677;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2679;8261.095,7337.566;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2687;8238.544,7469.953;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;2672;7802.223,7319.851;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;2686;8072.543,7470.954;Inherit;False;Constant;_Float63;Float 63;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;2685;8528.626,7381.969;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdyOpNode;3082;6168.883,8787.27;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.LengthOpNode;3083;6300.106,8699.541;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.LengthOpNode;3084;6310.728,8803.638;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3085;6497.677,8737.779;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3086;6625.833,8733.668;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3087;6603.282,8866.056;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0.5;False;1;FLOAT;0
Node;AmplifyShaderEditor.DdxOpNode;3088;6166.961,8715.953;Inherit;False;1;0;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.RangedFloatNode;3089;6437.281,8867.057;Inherit;False;Constant;_Float75;Float 63;100;0;Create;True;0;0;0;False;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TextureCoordinatesNode;2967;6107.929,9172.829;Inherit;False;0;2972;2;3;2;SAMPLER2D;;False;0;FLOAT2;3,3;False;1;FLOAT2;0,0;False;5;FLOAT2;0;FLOAT;1;FLOAT;2;FLOAT;3;FLOAT;4
Node;AmplifyShaderEditor.SimpleAddOpNode;3003;6598.154,9243.168;Inherit;False;2;2;0;FLOAT2;0,0;False;1;FLOAT2;0,0;False;1;FLOAT2;0
Node;AmplifyShaderEditor.SmoothstepOpNode;2726;9660.285,7383.187;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.3;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;2720;9505.863,7389.812;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;2719;9353.264,7387.012;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;2725;9241.892,7379.171;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;2724;9026.223,7433.524;Inherit;False;Constant;_Float61;Float 61;101;0;Create;True;0;0;0;False;0;False;0.75;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleMultiplyOpNode;3090;6880.364,8663.072;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SmoothstepOpNode;3091;7492.432,8710.313;Inherit;False;3;0;FLOAT;0;False;1;FLOAT;0;False;2;FLOAT;0.3;False;1;FLOAT;0
Node;AmplifyShaderEditor.OneMinusNode;3092;7338.01,8716.938;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SaturateNode;3093;7185.41,8714.137;Inherit;False;1;0;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.SimpleAddOpNode;3094;7074.038,8706.296;Inherit;False;2;2;0;FLOAT;0;False;1;FLOAT;0;False;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3095;6858.369,8760.648;Inherit;False;Constant;_Float76;Float 61;101;0;Create;True;0;0;0;False;0;False;0.875;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.RangedFloatNode;3096;12566.42,6340.885;Inherit;False;Property;_StardustZwrite;StardustZwrite;120;1;[ToggleUI];Create;True;0;0;0;True;0;False;1;0;0;0;0;1;FLOAT;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2220;8031.287,-50.64004;Float;False;True;-1;3;SomnaShaderUI;0;12;Furality/Somna Shader;088ce90f5f78914459e55515008cbb32;True;FORWARD;0;0;FORWARD;6;True;True;1;0;True;_SourceBlendRGB;0;True;_DestinationBlendRGB;0;1;False;;0;False;;True;0;False;_SourceBlendRGB;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;0;True;_Culling;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;False;;255;False;;7;False;;3;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_ZWrite;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;7;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;LightMode=ForwardBase;False;False;0;;0;0;Standard;3;Vertex Position,InvertActionOnDeselection;0;638787892626673367;Receive Shadows;1;0;Built-in Fog;1;0;0;5;True;True;True;True;True;False;;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2224;8948.45,-130.9668;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;12;New Amplify Shader;088ce90f5f78914459e55515008cbb32;True;shadowcaster;0;4;shadowcaster;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;1;False;;True;3;False;;False;True;1;LightMode=shadowcaster;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2221;9135.833,462.9228;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;12;New Amplify Shader;088ce90f5f78914459e55515008cbb32;True;forwardad;0;1;forwardad;6;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;False;True;4;1;False;;1;False;;0;1;False;;0;False;;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;False;True;2;False;;False;False;True;1;LightMode=forwardadd;False;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2222;8399.846,3212.804;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;12;New Amplify Shader;088ce90f5f78914459e55515008cbb32;True;Outline;0;2;Outline;2;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;True;True;2;5;True;_SourceBlendRGB;10;True;_DestinationBlendRGB;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;True;True;True;0;True;_StencilReference;255;False;;255;False;;6;False;;1;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;False;;True;3;False;;True;False;0;False;;0;False;;True;1;Queue=Transparent=Queue=1;True;2;False;0;;0;0;Standard;0;False;0
Node;AmplifyShaderEditor.TemplateMultiPassMasterNode;2223;12865.54,6197.946;Float;False;False;-1;3;AmplifyShaderEditor.MaterialInspector;0;12;New Amplify Shader;088ce90f5f78914459e55515008cbb32;True;Shell;0;3;Shell;2;False;True;0;1;False;;0;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;False;True;0;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;False;True;1;False;;True;3;False;;False;True;3;RenderType=Opaque=RenderType;Queue=Geometry=Queue=0;DisableBatching=False=DisableBatching;True;2;False;0;True;True;4;1;False;;1;False;;0;1;False;;0;False;;True;0;False;;0;False;;False;False;False;False;False;False;False;False;False;True;0;False;;True;True;2;False;;False;True;True;True;True;True;0;False;;False;False;False;False;False;False;False;True;False;0;False;;255;False;;255;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;0;False;;True;True;1;True;_StarShellZwrite;True;0;False;;True;False;0;False;;0;False;;True;2;RenderType=TransparentCutout=RenderType;Queue=AlphaTest=Queue=-2;True;7;False;0;;0;0;Standard;0;False;0
WireConnection;2936;2;1341;0
WireConnection;2103;2;830;0
WireConnection;2103;14;1212;0
WireConnection;2103;52;2936;0
WireConnection;834;0;830;0
WireConnection;834;1;2103;0
WireConnection;835;0;558;0
WireConnection;835;1;834;0
WireConnection;2937;2;1351;0
WireConnection;2938;2;1353;0
WireConnection;2939;2;1355;0
WireConnection;2940;2;1357;0
WireConnection;1408;0;833;0
WireConnection;1409;0;1237;0
WireConnection;1410;0;1242;0
WireConnection;1411;0;1232;0
WireConnection;2104;2;833;0
WireConnection;2104;14;1215;0
WireConnection;2104;52;2937;0
WireConnection;2105;2;1232;0
WireConnection;2105;14;1233;0
WireConnection;2105;52;2938;0
WireConnection;2106;2;1237;0
WireConnection;2106;14;1238;0
WireConnection;2106;52;2939;0
WireConnection;2107;2;1242;0
WireConnection;2107;14;1243;0
WireConnection;2107;52;2940;0
WireConnection;1922;0;835;0
WireConnection;838;0;1408;0
WireConnection;838;1;2104;0
WireConnection;1230;0;1411;0
WireConnection;1230;1;2105;0
WireConnection;1240;0;1410;0
WireConnection;1240;1;2107;0
WireConnection;1235;0;1409;0
WireConnection;1235;1;2106;0
WireConnection;848;0;1922;0
WireConnection;2108;14;1190;0
WireConnection;1220;0;838;0
WireConnection;1234;0;1230;0
WireConnection;1239;0;1235;0
WireConnection;1244;0;1240;0
WireConnection;847;0;848;0
WireConnection;1195;19;2108;0
WireConnection;1194;0;1191;0
WireConnection;1194;1;1191;0
WireConnection;1202;0;1195;0
WireConnection;2995;678;2080;0
WireConnection;2995;1;1221;0
WireConnection;2995;2;1245;0
WireConnection;2995;3;1246;0
WireConnection;2995;4;1247;0
WireConnection;1196;0;1202;0
WireConnection;1196;2;1194;0
WireConnection;1196;3;1193;0
WireConnection;2905;1;1180;0
WireConnection;2905;0;2766;0
WireConnection;2905;2;2901;0
WireConnection;2920;1;2995;674
WireConnection;2920;0;2995;674
WireConnection;2920;2;2921;0
WireConnection;2081;0;2920;0
WireConnection;1197;0;1196;0
WireConnection;1179;0;2905;0
WireConnection;2899;1;1180;0
WireConnection;2899;0;2766;0
WireConnection;2085;1;1490;0
WireConnection;2085;2;2901;0
WireConnection;2085;3;2899;0
WireConnection;836;0;831;0
WireConnection;836;1;2112;0
WireConnection;836;5;837;0
WireConnection;844;0;842;0
WireConnection;844;1;843;5
WireConnection;849;0;844;0
WireConnection;843;0;832;0
WireConnection;843;1;2111;0
WireConnection;1412;0;1215;0
WireConnection;1413;0;1238;0
WireConnection;1414;0;1243;0
WireConnection;1415;0;1233;0
WireConnection;1174;0;836;0
WireConnection;928;0;919;0
WireConnection;1168;0;1166;0
WireConnection;1168;1;1167;0
WireConnection;1168;2;1169;0
WireConnection;1168;3;600;0
WireConnection;1764;0;1759;0
WireConnection;1227;0;1909;0
WireConnection;1227;1;2110;0
WireConnection;1838;0;1229;0
WireConnection;1228;0;1227;0
WireConnection;1865;0;1841;0
WireConnection;1865;1;1866;0
WireConnection;1841;0;1842;0
WireConnection;1169;0;1170;0
WireConnection;1169;1;1172;0
WireConnection;1169;3;600;0
WireConnection;1170;0;1171;0
WireConnection;1908;0;2110;0
WireConnection;1909;0;1224;0
WireConnection;1142;0;1143;0
WireConnection;1142;1;1153;0
WireConnection;1145;0;1146;0
WireConnection;1185;0;1132;0
WireConnection;1185;1;1132;0
WireConnection;1185;2;1132;0
WireConnection;1185;3;1787;0
WireConnection;1188;0;1185;0
WireConnection;1188;1;1187;0
WireConnection;1188;2;2127;0
WireConnection;1787;0;1788;0
WireConnection;1787;1;1186;0
WireConnection;1153;1;1152;0
WireConnection;1153;2;1155;0
WireConnection;1155;0;1154;0
WireConnection;1152;0;1156;0
WireConnection;1152;1;1154;0
WireConnection;1144;0;1147;0
WireConnection;1144;1;1145;4
WireConnection;1143;0;1147;0
WireConnection;1143;1;1144;0
WireConnection;1147;1;1148;0
WireConnection;1147;2;1151;0
WireConnection;1151;0;1150;0
WireConnection;1148;0;1149;0
WireConnection;1148;1;1150;0
WireConnection;1141;0;1140;0
WireConnection;1141;1;1142;0
WireConnection;1140;0;1139;0
WireConnection;1206;0;1203;0
WireConnection;1206;1;1203;0
WireConnection;1208;0;1209;0
WireConnection;1208;2;1206;0
WireConnection;1208;3;1141;0
WireConnection;1653;0;1654;0
WireConnection;1691;0;2965;59
WireConnection;1284;0;1278;0
WireConnection;1285;1;1277;0
WireConnection;1285;2;1275;0
WireConnection;1285;3;1284;0
WireConnection;1281;0;1285;0
WireConnection;1282;0;1285;0
WireConnection;1282;1;1281;0
WireConnection;1282;2;1283;0
WireConnection;1301;0;1306;0
WireConnection;1311;1;1302;0
WireConnection;1311;2;1310;0
WireConnection;1270;1;1271;0
WireConnection;1270;2;1272;0
WireConnection;1270;3;1267;0
WireConnection;1266;0;1252;0
WireConnection;1267;1;1268;0
WireConnection;1267;2;1269;0
WireConnection;1267;3;1266;0
WireConnection;1458;1;1460;0
WireConnection;1458;2;1459;0
WireConnection;1458;3;1465;0
WireConnection;1462;0;1449;0
WireConnection;1462;1;1458;0
WireConnection;1464;0;1456;0
WireConnection;1465;1;1457;0
WireConnection;1465;2;1455;0
WireConnection;1465;3;1464;0
WireConnection;1673;0;647;0
WireConnection;1673;2;1674;0
WireConnection;1778;1;647;0
WireConnection;1778;0;1673;0
WireConnection;647;0;1282;0
WireConnection;647;1;651;0
WireConnection;1249;0;1248;0
WireConnection;516;0;689;0
WireConnection;613;0;573;0
WireConnection;613;1;614;0
WireConnection;613;2;2478;0
WireConnection;599;0;572;0
WireConnection;599;1;609;0
WireConnection;526;0;578;0
WireConnection;526;1;599;0
WireConnection;526;2;570;0
WireConnection;615;0;2476;0
WireConnection;512;0;1063;0
WireConnection;512;1;2026;0
WireConnection;1033;0;2026;0
WireConnection;1033;1;511;1
WireConnection;920;0;877;0
WireConnection;920;1;929;0
WireConnection;916;0;920;0
WireConnection;916;1;920;0
WireConnection;931;0;940;0
WireConnection;931;1;930;0
WireConnection;940;0;877;0
WireConnection;935;0;932;0
WireConnection;935;1;1081;0
WireConnection;932;0;931;0
WireConnection;936;0;935;0
WireConnection;926;0;951;0
WireConnection;926;1;916;0
WireConnection;926;2;885;0
WireConnection;922;0;923;0
WireConnection;922;1;924;0
WireConnection;924;0;925;0
WireConnection;924;1;926;0
WireConnection;952;0;958;0
WireConnection;952;1;954;0
WireConnection;953;0;952;0
WireConnection;953;1;952;0
WireConnection;955;0;956;0
WireConnection;955;1;959;0
WireConnection;956;0;958;0
WireConnection;957;0;960;0
WireConnection;957;1;961;0
WireConnection;960;0;955;0
WireConnection;963;0;957;0
WireConnection;964;0;972;0
WireConnection;964;1;953;0
WireConnection;964;2;971;0
WireConnection;967;0;969;0
WireConnection;967;1;970;0
WireConnection;970;0;965;0
WireConnection;970;1;964;0
WireConnection;974;0;994;0
WireConnection;974;1;976;0
WireConnection;975;0;974;0
WireConnection;975;1;974;0
WireConnection;977;0;978;0
WireConnection;977;1;980;0
WireConnection;978;0;994;0
WireConnection;979;0;981;0
WireConnection;979;1;982;0
WireConnection;981;0;977;0
WireConnection;984;0;979;0
WireConnection;985;0;991;0
WireConnection;985;1;975;0
WireConnection;985;2;993;0
WireConnection;988;0;989;0
WireConnection;988;1;990;0
WireConnection;990;0;986;0
WireConnection;990;1;985;0
WireConnection;995;0;1015;0
WireConnection;995;1;997;0
WireConnection;996;0;995;0
WireConnection;996;1;995;0
WireConnection;998;0;999;0
WireConnection;998;1;1001;0
WireConnection;999;0;1015;0
WireConnection;1000;0;1002;0
WireConnection;1000;1;1003;0
WireConnection;1002;0;998;0
WireConnection;1005;0;1000;0
WireConnection;1006;0;1012;0
WireConnection;1006;1;996;0
WireConnection;1006;2;1014;0
WireConnection;1009;0;1010;0
WireConnection;1009;1;1011;0
WireConnection;1011;0;1007;0
WireConnection;1011;1;1006;0
WireConnection;973;0;944;0
WireConnection;973;1;966;0
WireConnection;973;2;987;0
WireConnection;973;3;1008;0
WireConnection;537;0;945;0
WireConnection;1036;0;1131;0
WireConnection;1043;0;1057;0
WireConnection;1043;1;1059;0
WireConnection;1043;2;2039;0
WireConnection;1043;3;1040;0
WireConnection;610;0;1043;0
WireConnection;664;0;602;0
WireConnection;664;1;611;0
WireConnection;665;0;664;0
WireConnection;608;0;2040;0
WireConnection;1077;0;1069;0
WireConnection;1041;0;1038;0
WireConnection;1041;1;1055;0
WireConnection;1041;2;1054;0
WireConnection;1054;0;1052;0
WireConnection;1054;1;1157;0
WireConnection;1055;0;1038;0
WireConnection;1055;1;1050;0
WireConnection;1055;2;1051;0
WireConnection;1037;0;1061;0
WireConnection;1038;0;1037;0
WireConnection;1046;0;1044;0
WireConnection;949;0;950;0
WireConnection;1081;0;2078;0
WireConnection;637;0;641;0
WireConnection;637;1;640;0
WireConnection;642;0;637;0
WireConnection;643;0;642;0
WireConnection;1066;0;1064;0
WireConnection;1066;1;1078;0
WireConnection;1067;0;1066;0
WireConnection;1107;0;988;0
WireConnection;1120;0;1136;0
WireConnection;1137;0;2035;0
WireConnection;1137;1;1138;0
WireConnection;1060;0;1131;0
WireConnection;1050;0;2036;0
WireConnection;1057;0;1039;0
WireConnection;1044;0;1058;0
WireConnection;1044;1;1047;0
WireConnection;1044;2;1041;0
WireConnection;1044;3;1042;1
WireConnection;1313;0;1137;0
WireConnection;1313;1;1314;0
WireConnection;1399;0;1400;0
WireConnection;1399;1;2043;0
WireConnection;1406;0;1445;0
WireConnection;1406;1;2046;0
WireConnection;645;0;1404;0
WireConnection;945;0;973;0
WireConnection;876;0;537;0
WireConnection;559;0;616;0
WireConnection;559;1;580;0
WireConnection;792;0;661;0
WireConnection;792;1;791;0
WireConnection;1068;0;2025;0
WireConnection;944;0;532;0
WireConnection;944;1;2028;0
WireConnection;944;2;2027;0
WireConnection;1089;0;922;0
WireConnection;1088;0;936;0
WireConnection;2027;1;936;0
WireConnection;2027;0;1088;0
WireConnection;1106;0;967;0
WireConnection;966;0;968;0
WireConnection;966;1;2029;0
WireConnection;966;2;2030;0
WireConnection;1090;0;963;0
WireConnection;2030;1;963;0
WireConnection;2030;0;1090;0
WireConnection;1092;0;984;0
WireConnection;987;0;992;0
WireConnection;987;1;2031;0
WireConnection;987;2;2032;0
WireConnection;2031;1;988;0
WireConnection;2031;0;1107;0
WireConnection;2032;1;984;0
WireConnection;2032;0;1092;0
WireConnection;1108;0;1009;0
WireConnection;1008;0;1013;0
WireConnection;1008;1;2033;0
WireConnection;1008;2;2034;0
WireConnection;1094;0;1005;0
WireConnection;2034;1;1005;0
WireConnection;2034;0;1094;0
WireConnection;2028;1;922;0
WireConnection;2028;0;1089;0
WireConnection;1136;0;1135;0
WireConnection;2038;0;2037;0
WireConnection;2025;1;1067;0
WireConnection;2025;0;1086;0
WireConnection;1404;0;2044;0
WireConnection;1404;1;1445;0
WireConnection;2046;1;2894;0
WireConnection;2046;0;2893;0
WireConnection;2044;1;2895;0
WireConnection;2044;0;2896;0
WireConnection;2029;1;967;0
WireConnection;2029;0;1106;0
WireConnection;2035;1;516;0
WireConnection;2035;0;1109;0
WireConnection;1109;0;1120;0
WireConnection;2033;1;1009;0
WireConnection;2033;0;1108;0
WireConnection;2036;1;1062;0
WireConnection;2036;0;2038;0
WireConnection;1034;0;1033;0
WireConnection;684;0;683;0
WireConnection;684;1;2048;0
WireConnection;567;0;581;0
WireConnection;567;1;619;0
WireConnection;2062;0;567;0
WireConnection;2062;1;684;0
WireConnection;2062;2;2569;0
WireConnection;2062;3;2577;0
WireConnection;1079;0;1406;0
WireConnection;618;0;613;0
WireConnection;2063;0;2064;0
WireConnection;2063;1;2065;0
WireConnection;2067;0;2848;0
WireConnection;2067;1;2066;0
WireConnection;1087;0;514;0
WireConnection;514;0;513;0
WireConnection;2039;1;1131;0
WireConnection;2039;0;1173;0
WireConnection;2068;1;600;0
WireConnection;2068;0;1168;0
WireConnection;1086;0;1067;0
WireConnection;1479;0;1472;0
WireConnection;1469;0;1467;0
WireConnection;1469;1;1839;0
WireConnection;1472;0;1471;0
WireConnection;1472;1;1469;0
WireConnection;1472;2;1470;0
WireConnection;1839;0;1468;0
WireConnection;1839;1;1840;0
WireConnection;2069;0;1479;0
WireConnection;2070;0;1479;0
WireConnection;2072;0;2070;0
WireConnection;2073;0;2069;0
WireConnection;2073;2;2070;0
WireConnection;2074;0;2069;0
WireConnection;2074;2;2072;0
WireConnection;2071;0;2073;0
WireConnection;2071;1;2074;0
WireConnection;600;0;2071;0
WireConnection;1923;0;845;0
WireConnection;845;0;835;0
WireConnection;1688;0;1923;0
WireConnection;2095;0;1780;0
WireConnection;2095;1;2097;0
WireConnection;2095;2;2096;0
WireConnection;2098;1;1780;0
WireConnection;2098;0;2095;0
WireConnection;1514;0;1513;0
WireConnection;1514;1;1509;0
WireConnection;1510;0;1515;0
WireConnection;1510;1;1514;0
WireConnection;1515;0;2098;0
WireConnection;1511;0;1510;0
WireConnection;1511;1;1514;0
WireConnection;1512;0;1515;0
WireConnection;1512;1;1511;0
WireConnection;1512;2;1617;0
WireConnection;1617;0;1504;0
WireConnection;1617;1;1618;0
WireConnection;1663;0;1512;0
WireConnection;1663;1;1662;0
WireConnection;1663;2;1661;0
WireConnection;1765;1;1512;0
WireConnection;1765;0;1663;0
WireConnection;1767;0;1648;0
WireConnection;1647;0;1667;0
WireConnection;2057;0;1765;0
WireConnection;2110;2;1224;0
WireConnection;2110;14;1225;0
WireConnection;2111;2;832;0
WireConnection;2111;14;1218;0
WireConnection;2111;52;2943;0
WireConnection;2112;2;831;0
WireConnection;2112;14;1213;0
WireConnection;1953;1;2002;0
WireConnection;1953;0;1208;0
WireConnection;2127;0;2126;0
WireConnection;2127;3;2122;0
WireConnection;2128;0;2129;0
WireConnection;1950;0;1948;0
WireConnection;1950;1;1947;0
WireConnection;1950;2;1951;0
WireConnection;562;0;575;0
WireConnection;562;1;559;0
WireConnection;562;2;792;0
WireConnection;562;3;2019;0
WireConnection;562;4;1767;0
WireConnection;562;5;1949;0
WireConnection;562;6;2128;0
WireConnection;562;7;2570;0
WireConnection;562;8;2565;0
WireConnection;2121;0;2122;0
WireConnection;2121;1;2123;0
WireConnection;2121;2;2120;0
WireConnection;2126;1;2122;0
WireConnection;2126;0;2121;0
WireConnection;2193;0;2192;0
WireConnection;601;0;600;0
WireConnection;2026;1;514;0
WireConnection;2026;0;1087;0
WireConnection;2207;0;2026;0
WireConnection;2210;1;638;0
WireConnection;2210;0;1817;2
WireConnection;2211;0;638;0
WireConnection;639;0;2210;0
WireConnection;1265;0;2995;0
WireConnection;1295;0;2995;271
WireConnection;1402;0;2995;335
WireConnection;1426;0;2995;367
WireConnection;1427;0;2995;399
WireConnection;1441;0;2995;476
WireConnection;1660;0;2995;545
WireConnection;1790;0;2995;577
WireConnection;1274;0;2995;132
WireConnection;2094;0;2995;710
WireConnection;2232;1;2235;0
WireConnection;2232;2;2241;0
WireConnection;2232;3;2238;0
WireConnection;2233;1;2230;0
WireConnection;2233;2;2243;0
WireConnection;2233;3;2232;0
WireConnection;2234;1;2237;0
WireConnection;2234;2;2244;0
WireConnection;2234;3;2233;0
WireConnection;2236;0;2249;0
WireConnection;2238;0;2240;0
WireConnection;2241;0;2239;0
WireConnection;2243;0;2242;0
WireConnection;2244;0;2229;0
WireConnection;2245;1;2247;0
WireConnection;2245;2;2231;0
WireConnection;2245;3;2234;0
WireConnection;1463;0;1462;0
WireConnection;2246;1;2248;0
WireConnection;2246;2;2226;0
WireConnection;2246;3;2245;0
WireConnection;1444;0;2246;0
WireConnection;2227;0;1512;0
WireConnection;577;0;1313;0
WireConnection;1309;0;1311;0
WireConnection;1312;0;2995;303
WireConnection;1302;1;1299;0
WireConnection;1302;2;1300;0
WireConnection;1302;3;1301;0
WireConnection;1918;0;845;0
WireConnection;1918;1;1921;0
WireConnection;1918;2;1919;0
WireConnection;1780;1;845;0
WireConnection;1780;0;1918;0
WireConnection;1676;0;840;0
WireConnection;1676;1;1692;0
WireConnection;1676;2;1675;0
WireConnection;840;0;1270;0
WireConnection;840;1;708;0
WireConnection;2043;1;2895;315
WireConnection;2043;0;2896;315
WireConnection;824;0;2410;0
WireConnection;2040;1;665;0
WireConnection;2040;0;1085;0
WireConnection;1085;0;665;0
WireConnection;1116;0;1115;0
WireConnection;1116;1;1117;0
WireConnection;2453;0;2451;0
WireConnection;2453;1;2452;0
WireConnection;1113;0;2855;0
WireConnection;1113;1;1114;0
WireConnection;1113;2;1116;0
WireConnection;2476;0;526;0
WireConnection;2476;1;2477;0
WireConnection;2406;1;1768;0
WireConnection;2406;0;2404;0
WireConnection;2491;1;2481;0
WireConnection;579;0;1765;0
WireConnection;1768;1;840;0
WireConnection;1768;0;1676;0
WireConnection;2404;0;1768;0
WireConnection;2404;2;2403;0
WireConnection;2410;1;1113;0
WireConnection;2410;0;2450;0
WireConnection;2500;1;2463;0
WireConnection;2500;2;2501;0
WireConnection;2463;0;2464;0
WireConnection;2463;2;2465;0
WireConnection;2498;0;2500;0
WireConnection;2498;2;2412;0
WireConnection;2467;0;2945;0
WireConnection;2467;1;2498;0
WireConnection;1920;0;2467;0
WireConnection;2412;1;2461;0
WireConnection;2412;0;2413;0
WireConnection;2413;0;2389;0
WireConnection;2461;0;2460;0
WireConnection;2456;12;2459;0
WireConnection;1949;0;1950;0
WireConnection;2129;0;2132;0
WireConnection;2129;1;2131;0
WireConnection;2129;2;2130;0
WireConnection;2268;0;2263;0
WireConnection;2268;1;2265;0
WireConnection;2563;0;2268;0
WireConnection;2319;0;2261;0
WireConnection;2335;0;2888;272
WireConnection;2566;0;2335;0
WireConnection;2566;1;2567;0
WireConnection;2566;2;2568;0
WireConnection;2566;3;2564;0
WireConnection;2569;0;2578;0
WireConnection;2565;0;2571;0
WireConnection;2570;0;2580;0
WireConnection;1789;0;2995;609
WireConnection;2146;0;2995;751
WireConnection;2004;0;2995;642
WireConnection;2574;0;2995;793
WireConnection;2329;0;2335;0
WireConnection;2329;1;2330;0
WireConnection;2329;2;2380;0
WireConnection;2329;3;2564;0
WireConnection;2571;1;2329;0
WireConnection;2577;0;2579;0
WireConnection;2578;1;2566;0
WireConnection;2579;0;2566;0
WireConnection;2579;1;2575;0
WireConnection;2580;0;2581;0
WireConnection;2580;1;2329;0
WireConnection;2194;0;2068;0
WireConnection;1952;0;1188;0
WireConnection;2460;0;2456;0
WireConnection;2459;0;2458;0
WireConnection;2458;0;2389;0
WireConnection;2389;0;2390;0
WireConnection;2389;1;2391;0
WireConnection;2715;0;2713;0
WireConnection;2715;1;2714;0
WireConnection;1965;0;1980;0
WireConnection;1965;3;2681;0
WireConnection;1980;0;1988;0
WireConnection;1980;1;2140;0
WireConnection;1980;2;2141;0
WireConnection;1980;3;2681;0
WireConnection;2141;1;2142;0
WireConnection;2141;2;2143;0
WireConnection;2656;0;1957;2
WireConnection;2712;0;2711;0
WireConnection;2711;0;1957;0
WireConnection;2658;0;2656;0
WireConnection;2658;1;2659;0
WireConnection;2658;2;2660;0
WireConnection;2660;0;2744;0
WireConnection;2139;0;2137;0
WireConnection;2139;1;2136;0
WireConnection;2139;2;2138;0
WireConnection;2140;1;2137;0
WireConnection;2140;0;2139;0
WireConnection;2692;0;2651;0
WireConnection;2670;0;2718;0
WireConnection;2670;1;2671;0
WireConnection;2722;0;2684;0
WireConnection;2722;1;2671;0
WireConnection;2682;0;2722;0
WireConnection;2682;1;2721;0
WireConnection;2721;0;1994;0
WireConnection;2694;0;2671;0
WireConnection;2681;0;2712;0
WireConnection;2681;1;2658;0
WireConnection;2681;2;2682;0
WireConnection;2681;3;2694;0
WireConnection;2681;4;2757;0
WireConnection;2666;0;1986;0
WireConnection;2666;1;2753;0
WireConnection;1986;0;2949;0
WireConnection;1986;1;1987;0
WireConnection;2597;0;2113;0
WireConnection;2597;1;2559;0
WireConnection;2746;0;2597;0
WireConnection;2113;14;2009;0
WireConnection;2113;52;2947;0
WireConnection;1977;0;1976;0
WireConnection;1977;1;1976;0
WireConnection;1972;0;1973;0
WireConnection;1972;1;1967;0
WireConnection;1973;0;1974;0
WireConnection;1967;1;1969;0
WireConnection;1967;2;1968;0
WireConnection;1969;0;1970;0
WireConnection;1969;1;2149;0
WireConnection;2149;0;2148;0
WireConnection;2149;1;1971;0
WireConnection;1968;0;1971;0
WireConnection;2148;0;2147;0
WireConnection;2148;1;2150;0
WireConnection;1978;0;1975;0
WireConnection;1978;2;1977;0
WireConnection;1978;3;1972;0
WireConnection;1290;0;2584;183
WireConnection;1290;1;2584;0
WireConnection;1428;0;1503;0
WireConnection;1428;1;1429;0
WireConnection;1503;0;850;0
WireConnection;2018;0;1290;0
WireConnection;2089;0;2946;0
WireConnection;2691;0;2745;0
WireConnection;2691;1;2692;0
WireConnection;2691;3;2005;0
WireConnection;2005;0;2006;0
WireConnection;2005;1;1965;0
WireConnection;2756;0;2755;0
WireConnection;2754;0;2005;0
WireConnection;2754;1;2691;0
WireConnection;2754;2;2756;0
WireConnection;2757;0;2758;0
WireConnection;2757;1;2726;0
WireConnection;2757;2;2759;0
WireConnection;2760;0;2761;0
WireConnection;2760;1;2751;0
WireConnection;2760;2;2763;0
WireConnection;2744;0;2680;0
WireConnection;650;0;1778;0
WireConnection;2659;1;2680;0
WireConnection;2680;0;2760;0
WireConnection;2680;1;2670;0
WireConnection;2450;0;2855;0
WireConnection;2450;1;1114;0
WireConnection;2450;2;2452;0
WireConnection;815;0;1399;0
WireConnection;839;0;2406;0
WireConnection;2848;0;2847;0
WireConnection;2848;1;2064;0
WireConnection;2848;2;2872;0
WireConnection;2855;0;706;0
WireConnection;2855;1;2856;0
WireConnection;1446;0;2846;0
WireConnection;1446;1;1448;0
WireConnection;2856;0;841;0
WireConnection;2871;0;841;0
WireConnection;2872;0;2871;0
WireConnection;2888;571;2563;0
WireConnection;2888;705;2319;0
WireConnection;2893;365;1074;0
WireConnection;2893;358;1130;0
WireConnection;2893;353;1075;0
WireConnection;2893;327;1073;0
WireConnection;2893;335;2213;0
WireConnection;2893;317;1072;0
WireConnection;2893;359;2196;0
WireConnection;2893;146;2067;0
WireConnection;2893;147;1071;0
WireConnection;2893;302;1316;0
WireConnection;2894;358;1130;0
WireConnection;2894;353;1075;0
WireConnection;2894;327;1073;0
WireConnection;2894;335;2213;0
WireConnection;2894;317;1072;0
WireConnection;2894;146;2067;0
WireConnection;2894;147;1071;0
WireConnection;2894;302;1316;0
WireConnection;2895;358;1129;0
WireConnection;2895;353;1022;0
WireConnection;2895;327;806;0
WireConnection;2895;335;2214;0
WireConnection;2895;317;812;0
WireConnection;2895;146;1446;0
WireConnection;2895;147;810;0
WireConnection;2895;302;1315;0
WireConnection;2896;365;822;0
WireConnection;2896;358;1129;0
WireConnection;2896;353;1022;0
WireConnection;2896;327;806;0
WireConnection;2896;335;2214;0
WireConnection;2896;317;812;0
WireConnection;2896;359;2195;0
WireConnection;2896;146;1446;0
WireConnection;2896;147;810;0
WireConnection;2896;302;1315;0
WireConnection;2900;1;2901;0
WireConnection;2900;0;1180;0
WireConnection;2942;2;1347;0
WireConnection;2943;2;1349;0
WireConnection;2945;70;1910;0
WireConnection;2945;62;1895;0
WireConnection;2945;65;1904;0
WireConnection;2946;85;2584;244
WireConnection;2948;2;1615;0
WireConnection;2716;0;2715;0
WireConnection;2716;1;2955;0
WireConnection;2716;2;2954;0
WireConnection;2955;0;2956;1
WireConnection;2955;1;2956;2
WireConnection;2955;2;2953;0
WireConnection;2954;0;2957;1
WireConnection;2954;1;2957;2
WireConnection;2954;2;2953;0
WireConnection;2951;0;2715;0
WireConnection;2584;316;2948;0
WireConnection;2584;266;1296;0
WireConnection;2584;1;1428;0
WireConnection;1655;0;2965;51
WireConnection;1667;0;1656;0
WireConnection;1667;1;1666;0
WireConnection;1667;2;2961;0
WireConnection;1656;0;2965;0
WireConnection;1656;1;1657;0
WireConnection;571;0;512;0
WireConnection;2961;1;2959;0
WireConnection;2965;53;1687;0
WireConnection;2965;67;1776;0
WireConnection;2965;26;1622;0
WireConnection;1957;0;2747;0
WireConnection;1957;2;2748;0
WireConnection;706;0;707;0
WireConnection;706;1;841;0
WireConnection;2846;0;2847;0
WireConnection;2846;1;707;0
WireConnection;2846;2;2872;0
WireConnection;2947;2;1991;0
WireConnection;2980;0;2975;0
WireConnection;2979;0;2980;0
WireConnection;2979;1;3072;0
WireConnection;2986;0;2979;0
WireConnection;2991;0;2995;828
WireConnection;2975;0;2977;0
WireConnection;2971;0;3003;0
WireConnection;2977;0;2971;0
WireConnection;2977;1;2976;0
WireConnection;2981;0;2982;0
WireConnection;2982;0;2978;0
WireConnection;2982;3;2998;0
WireConnection;2969;2;2968;0
WireConnection;3012;0;3014;0
WireConnection;3012;1;3010;0
WireConnection;3015;0;3012;0
WireConnection;3022;0;3018;0
WireConnection;3021;1;3015;0
WireConnection;3021;2;3023;0
WireConnection;3021;3;3023;0
WireConnection;2985;0;2754;0
WireConnection;2985;1;2992;0
WireConnection;2992;0;2984;0
WireConnection;2992;1;2993;0
WireConnection;2988;1;2754;0
WireConnection;2988;0;2985;0
WireConnection;2976;1;3070;0
WireConnection;3014;0;2969;0
WireConnection;3042;0;3005;0
WireConnection;3042;1;3005;0
WireConnection;3042;2;3005;0
WireConnection;3044;0;3042;0
WireConnection;3044;1;3043;0
WireConnection;3041;0;3044;0
WireConnection;3047;0;3046;0
WireConnection;3047;1;3048;0
WireConnection;3045;0;3041;0
WireConnection;3045;1;3047;0
WireConnection;3050;0;3041;0
WireConnection;3049;0;3050;0
WireConnection;3049;1;3045;0
WireConnection;3046;0;3041;0
WireConnection;3052;0;3051;0
WireConnection;3052;1;3053;0
WireConnection;3051;0;3049;0
WireConnection;3053;0;3049;0
WireConnection;3055;0;3052;0
WireConnection;3055;1;3054;0
WireConnection;3054;0;3049;0
WireConnection;3056;0;3055;0
WireConnection;3037;0;3038;0
WireConnection;3036;0;3056;0
WireConnection;3038;0;3036;0
WireConnection;3030;0;3063;0
WireConnection;3030;1;3059;0
WireConnection;3035;0;3037;0
WireConnection;3035;1;3062;0
WireConnection;2972;1;3030;0
WireConnection;3010;0;2967;0
WireConnection;3060;0;3039;0
WireConnection;3060;1;3061;0
WireConnection;3062;0;3060;0
WireConnection;3063;0;3035;0
WireConnection;3063;1;3068;0
WireConnection;3063;2;3009;0
WireConnection;3068;0;3037;0
WireConnection;3068;1;3064;0
WireConnection;3005;0;2971;0
WireConnection;3039;0;2967;0
WireConnection;3061;0;2969;0
WireConnection;3008;0;3005;0
WireConnection;3009;0;3008;0
WireConnection;2998;0;2972;4
WireConnection;2998;1;2986;0
WireConnection;2998;2;3021;0
WireConnection;2998;3;3091;0
WireConnection;2996;0;2997;0
WireConnection;2996;1;2972;5
WireConnection;2996;2;3021;0
WireConnection;2978;0;2996;0
WireConnection;2978;1;2986;0
WireConnection;2978;2;3091;0
WireConnection;3072;0;3073;0
WireConnection;3072;1;3071;0
WireConnection;2752;0;1957;1
WireConnection;2671;0;2666;0
WireConnection;1999;1;2001;0
WireConnection;1999;0;1978;0
WireConnection;2717;0;2716;0
WireConnection;2717;1;2988;0
WireConnection;1998;0;2717;0
WireConnection;2749;0;2685;0
WireConnection;2949;1;1993;0
WireConnection;2674;0;2746;0
WireConnection;2675;0;2672;0
WireConnection;2676;0;2674;0
WireConnection;2677;0;2675;0
WireConnection;2677;1;2676;0
WireConnection;2679;0;2677;0
WireConnection;2687;0;2686;0
WireConnection;2672;0;2746;0
WireConnection;2685;0;2679;0
WireConnection;2685;1;2687;0
WireConnection;3082;0;3003;0
WireConnection;3083;0;3088;0
WireConnection;3084;0;3082;0
WireConnection;3085;0;3083;0
WireConnection;3085;1;3084;0
WireConnection;3086;0;3085;0
WireConnection;3087;0;3089;0
WireConnection;3088;0;3003;0
WireConnection;3003;0;2969;0
WireConnection;3003;1;2967;0
WireConnection;2726;0;2720;0
WireConnection;2720;0;2719;0
WireConnection;2719;0;2725;0
WireConnection;2725;0;2750;0
WireConnection;2725;1;2724;0
WireConnection;3090;0;3086;0
WireConnection;3090;1;3087;0
WireConnection;3091;0;3092;0
WireConnection;3092;0;3093;0
WireConnection;3093;0;3094;0
WireConnection;3094;0;3090;0
WireConnection;3094;1;3095;0
WireConnection;2220;0;562;0
WireConnection;2220;1;1176;0
WireConnection;2220;2;1182;0
WireConnection;2220;3;1198;0
WireConnection;2224;1;1178;0
WireConnection;2224;2;1184;0
WireConnection;2224;3;1200;0
WireConnection;2221;0;2062;0
WireConnection;2221;1;1177;0
WireConnection;2221;2;1183;0
WireConnection;2221;3;1199;0
WireConnection;2222;0;1952;0
WireConnection;2222;1;1953;0
WireConnection;2223;0;1998;0
WireConnection;2223;1;1999;0
ASEEND*/
//CHKSM=2B6B3D897C09D8141506424B9060E4107ADAB68F