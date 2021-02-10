#define bText(var,cfg,class) var = getText(cfg >> class)
#define bArray(var,cfg,class) var = getArray(cfg >> class)
#define bNumber(var,cfg,class) var = getNumber(cfg >> class)
#define bMarkPos(mark) (markerPos mark)
#define bRemoveGear(bunit) removeHeadgear bunit; removeUniform bunit; removeVest bunit; removeBackpack bunit; removeGoggles bunit;
#define bMissionVar(varName) (missionNamespace getVariable[varName,""])
#define bParamValue(var,name) var = (name call BIS_fnc_getParamValue)
#define blitzTimer(bplayer) (bplayer getVariable["blitzTimer",0])
#define setBlitzTimer(bplayer,value) (bplayer setVariable["blitzTimer",value])