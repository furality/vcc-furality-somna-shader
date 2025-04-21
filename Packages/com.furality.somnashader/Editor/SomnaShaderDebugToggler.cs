#if UNITY_EDITOR
using UnityEditor;
using UnityEngine;
using System.Linq;
using System.Collections.Generic; // Required for List<T>

public class SomnaShaderDebugToggler
{
    private const string DebugDefine = "FURALITY_SHADER_UI_DEBUG";
    private const string MenuPath = "Furality/Somna Shader/Toggle UI Debug";

    [MenuItem(MenuPath)]
    private static void ToggleDebugDefine()
    {
        BuildTargetGroup targetGroup = EditorUserBuildSettings.selectedBuildTargetGroup;
        if (targetGroup == BuildTargetGroup.Unknown)
        {
             // Try getting the group for the active build target
             targetGroup = BuildPipeline.GetBuildTargetGroup(EditorUserBuildSettings.activeBuildTarget);
             if (targetGroup == BuildTargetGroup.Unknown) {
                  Debug.LogError("Somna Shader Debug Toggler: Could not determine Build Target Group.");
                  return;
             }
        }

        string definesString = PlayerSettings.GetScriptingDefineSymbolsForGroup(targetGroup);
        List<string> allDefines = definesString.Split(';').Where(d => !string.IsNullOrWhiteSpace(d)).ToList();

        bool isEnabled = allDefines.Contains(DebugDefine);

        if (isEnabled)
        {
            // Disable the define
            allDefines.Remove(DebugDefine);
            Debug.Log($"Somna Shader Debug Toggler: Global define '{DebugDefine}' DISABLED for group {targetGroup}. Recompiling...");
        }
        else
        {
            // Enable the define
            allDefines.Add(DebugDefine);
             Debug.Log($"Somna Shader Debug Toggler: Global define '{DebugDefine}' ENABLED for group {targetGroup}. Recompiling...");
        }

        PlayerSettings.SetScriptingDefineSymbolsForGroup(targetGroup, string.Join(";", allDefines.ToArray()));
        // Unity should automatically trigger a recompile when defines change.
         // AssetDatabase.Refresh(); // Usually not needed here, but can be added if issues occur.
    }

    // Validation method to check/uncheck the menu item based on global defines
     [MenuItem(MenuPath, true)]
     private static bool ToggleDebugDefineValidation()
     {
         BuildTargetGroup targetGroup = EditorUserBuildSettings.selectedBuildTargetGroup;
          if (targetGroup == BuildTargetGroup.Unknown)
         {
             targetGroup = BuildPipeline.GetBuildTargetGroup(EditorUserBuildSettings.activeBuildTarget);
             if (targetGroup == BuildTargetGroup.Unknown) {
                 return false; // Cannot determine state
             }
         }

         string definesString = PlayerSettings.GetScriptingDefineSymbolsForGroup(targetGroup);
         List<string> allDefines = definesString.Split(';').Where(d => !string.IsNullOrWhiteSpace(d)).ToList();
         bool isEnabled = allDefines.Contains(DebugDefine);
         
         Menu.SetChecked(MenuPath, isEnabled);
         return true; // Always enable the menu item itself
     }
}
#endif 