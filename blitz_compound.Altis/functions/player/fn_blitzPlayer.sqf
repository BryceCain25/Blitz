#include "..\config_helpers.hpp"
if !(canSuspend) exitWith {0 spawn blitz_fnc_blitzPlayer};
if(local player) then {
while{alive player} do {
	waitUntil{blitzTimer(player) > 0};
	player setAnimSpeedCoef ("b_blitzedSpeed" call BIS_fnc_getParamValue);
	waitUntil{
		setBlitzTimer(player,blitzTimer(player) - 1);
		hintSilent parseText format["<t size='2.0'>You're blitzed!</t><br/>Kill someone in %1 seconds to survive",blitzTimer(player)];
		sleep 1;
		blitzTimer(player) <= 0
		};
		player setDamage 1;
		hint "";
	};
};