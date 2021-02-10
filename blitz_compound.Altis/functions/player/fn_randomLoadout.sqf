/* forces new random loadout for player */
#include "..\config_helpers.hpp"
if(local player) then {
	removeAllWeapons player;
	bRemoveGear(player);
	_cfg = selectRandom("true" configClasses(missionConfigFile >> "CfgBlitz" >> "loadouts"));
	bText(uni,_cfg,"uniform");
	bText(back,_cfg,"backpack");
	bText(ves,_cfg,"vest");
	bText(gog,_cfg,"goggles");
	bText(hel,_cfg,"helmet");
	bArray(weaps,_cfg,"weapons");
	bArray(mags,_cfg,"magazines");
	bArray(it,_cfg,"items");
	bArray(linkIt,_cfg,"linkedItems");
	player forceAddUniform uni;
	player addBackpack back;
	player addVest ves;
	player addGoggles gog;
	player addHeadgear hel;
	{player addItem _x} forEach it;
	{player linkItem _x} forEach linkIt;
	{
		if(player canAddItemToBackpack _x) then {
			player addItemToBackpack _x;
		} else {
			player addItemToVest _x;
		};
	} forEach mags;
	{
		player addWeapon _x;
	} forEach weaps;
} else {
	["randomLoadout not local",true] call blitz_fnc_errorLog;
};