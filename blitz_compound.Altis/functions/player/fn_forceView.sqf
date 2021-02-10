if(canSuspend) then {
	waitUntil{!isNull (findDisplay 46)};
	if !(("b_forceView" call BIS_fnc_getParamValue) isEqualTo 4) then {
		(findDisplay 46) displayAddEventHandler["KeyDown",
		{
			params["_disp","_key"];
			(_key in actionKeys "personView");
		}];
	};
};