//randomly spawns player from configured list in CfgBlitz
#include "..\config_helpers.hpp"
bArray(respawnList,missionConfigFile >> "CfgBlitz" >> "gamemode","respawnPositions");
if(local player) then {
	_checkClose = respawnList select {
	    count((markerPos _x) nearEntities["Man",10]) isEqualTo 0
	};
	if((count _checkClose) isEqualTo 0) then {
		player setPos bMarkPos(selectRandom respawnList);
	} else {
        player setPos bMarkPos(selectRandom _checkClose);
	};
} else {
	["randomRespawn not local",true] call blitz_fnc_errorLog;
};