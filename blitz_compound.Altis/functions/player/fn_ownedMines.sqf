params[
	["_unit",player,[objNull]]
];
_unit addEventHandler["Fired",
{
	params["_player"];
	if((_this # 4) isKindOf "APERSTripMine_Wire_Ammo") then {
		_mineList = _player getVariable["blitz_mineList",[]];
		_mineList pushBack (_this # 6);
		_player setVariable["blitz_mineList",_mineList,true];
	};	
}];
_unit addEventHandler["Respawn",
{
	{
		(_this # 0) addOwnedMine _x;
	} forEach ((_this # 0) getVariable["blitz_mineList",[]]);
}];