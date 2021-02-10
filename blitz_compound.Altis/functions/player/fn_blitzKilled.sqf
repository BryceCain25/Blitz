params[
	["_unit",player,[objNull]]
];
_unit addEventHandler["killed",
{
	params["_killed","_killer"];
	_killed setVariable["blitzTimer",0,true];
	if(_killed != _killer && isPlayer _killer) then {
		[("b_blitzedTime" call BIS_fnc_getParamValue) + 1,{player setVariable["blitzTimer",_this,true]}] remoteExec["call",_killer];
	};
}];