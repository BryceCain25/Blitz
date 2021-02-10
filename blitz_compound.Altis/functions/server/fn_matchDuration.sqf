if(isServer) then {
	duration = ("b_matchDuration" call BIS_fnc_getParamValue) * 60;
	waitUntil{
		duration = duration - 1;
		if(duration < 600) then {
			if(isNil "warningGivenTen") then {
				[{systemChat "[SYSTEM]: less than 10 minutes remaining"}] remoteExec["call",0];
				warningGivenTen = true;
			};
		};
		if(duration < 300) then {
			if(isNil "warningGivenFive") then {
				[{systemChat "[SYSTEM]: less than 5 minutes remaining"}] remoteExec["call",0];
				warningGivenFive = true;
			};
		};
		sleep 1;
		(duration <= 0);
	};
	"PlayerScore" call BIS_fnc_endMissionServer;
};