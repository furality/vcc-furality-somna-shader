using System.Collections;
using System.Collections.Generic;
using System;

[Serializable]
public class FoldoutStates
{
    public List<string> foldoutNames = new List<string>();
    public List<bool> foldoutValues = new List<bool>();

    public bool GetState(string name, bool defaultState = false)
    {
        int index = foldoutNames.IndexOf(name);
        if (index != -1 && index < foldoutValues.Count)
        {
            return foldoutValues[index];
        }
        return defaultState;
    }

    public void SetState(string name, bool state)
    {
        int index = foldoutNames.IndexOf(name);
        if (index != -1)
        {
            foldoutValues[index] = state;
        } else {
            foldoutNames.Add(name);
            foldoutValues.Add(state);
        }
    }
}
