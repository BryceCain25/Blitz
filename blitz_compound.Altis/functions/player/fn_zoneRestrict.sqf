/* 
restrict play area for players to blitz_ao
this function must run local to player
*/
#include "..\config_helpers.hpp"
#define inZone (player inArea zoneName)
scriptName "bZoneRestrict";
bText(zoneName,missionConfigFile >> "CfgBlitz" >> "gamemode","zoneMarker");
if(local player) then {
	if(canSuspend) then {
		while{alive player} do {
			if !inZone then {
				player setDir (player getDir (markerPos zoneName));
				hintSilent parseText "<t size='2.0'>back to the zone!</t><br/>Run forward to get back to the zone";
				sleep 5;
				if !inZone then {
					player setDamage 0.25;
					sleep 1;
					player setDamage 0.5;
					sleep 1;
					player setDamage 0.75;
					sleep 1;
					player setDamage 1;
				};
			};
			sleep 1;
		};
	} else {
		["zoneRestrict ran unscheduled",true] call blitz_fnc_errorLog;
	};
} else {
	["zoneRestrict ran on server or wasn't local",true] call blitz_fnc_erorrLog;
};