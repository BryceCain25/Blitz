/* enforces player settings on respawn from parameters */
#include "..\config_helpers.hpp"
bParamValue(terrain,"b_terrainQuality");
bParamValue(view,"b_viewDistance");
bParamValue(objectView,"b_objectView");
bParamValue(fatigue,"b_enableFatigue");
bParamValue(gpsShow,"b_showGPS");
bParamValue(aiEnabled,"b_enableAI");
setObjectViewDistance[objectView,objectView];
setViewDistance view;
setTerrainGrid terrain;
setDetailMapBlendPars [15,30];
if(fatigue isEqualTo 0) then {
	player enableFatigue false;
};
if(aiEnabled isEqualTo 0) then {
	disableRemoteSensors true;
};
if(gpsShow isEqualTo 1) then {
	_res = setInfoPanel["right","MinimapDisplay"];
	if !(_res) then {
		hintSilent format["[%1]: No Gps found, report this!",_res];
	};
};
