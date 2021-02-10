params[
	["_force",false,[false]]
];
if(_force) then {
	player addEventHandler["FiredMan",
	{
		params["_unit"];
		_unit setVehicleAmmo 1;
	}];
} else {
	if("b_unlimitedAmmo" call BIS_fnc_getParamValue isEqualTo 1) then {
		player addEventHandler["FiredMan",
		{
			params["_unit"];
			_unit setVehicleAmmo 1;
		}];
	};
};