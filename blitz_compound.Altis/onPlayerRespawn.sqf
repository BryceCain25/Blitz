hintSilent "";
[player] spawn blitz_fnc_blitzPlayer;
[player] spawn blitz_fnc_zoneRestrict;
[player] call blitz_fnc_randomRespawn;
[player] call blitz_fnc_randomLoadout;
[player] call blitz_fnc_playerSettings;
[player,-3000] call blitz_fnc_setRating;

//force player view mode on respawn
_viewMode = "b_forceView" call BIS_fnc_getParamValue;
switch _viewMode do {
	case 1:{
		player switchCamera "INTERNAL";
	};
	case 2:{
		player switchCamera "EXTERNAL";
	};
	case 3:{
		player switchCamera "GUNNER";
		0 spawn {
			while{alive player} do {
				if(cameraView != "GUNNER") then {
					player switchCamera "GUNNER";
				};
				sleep 1;
			};
		};
	};
};