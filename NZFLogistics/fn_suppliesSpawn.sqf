if (!isServer) exitwith {};

params ["_supplies"];

_logiFactorySupplies = missionNamespace getVariable "logiFactorySupplies";

switch (_supplies) do
{

	case 50: {

	_crate = (logiCrate_small select 0) createVehicle (getpos logiFactorySpawn);
	_logiFactorySupplies = _logiFactorySupplies - (logiCrate_small select 1);
		
	};
	case 250: {

	_crate = (logiCrate_medium select 0) createVehicle (getpos logiFactorySpawn);
	_logiFactorySupplies = _logiFactorySupplies - (logiCrate_medium select 1);
		
	};
	case 2500: {

	_crate = (logiCrate_large select 0) createVehicle (getpos logiFactorySpawn);
	_logiFactorySupplies = _logiFactorySupplies - (logiCrate_large select 1);
		
	};
};

missionNamespace setVariable ["logiFactorySupplies",_logiFactorySupplies,true];

[_crate, true, [0, 1.5, 0], 0] remoteExec ["ace_dragging_fnc_setCarryable"];
[] call grad_persistence_fnc_saveMission;