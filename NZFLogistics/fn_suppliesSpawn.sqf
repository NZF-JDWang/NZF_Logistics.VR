_crate = (logiCrate_small select 0) createVehicle (getpos logiFactorySpawn);
logiFactorySupplies = logiFactorySupplies - (logiCrate_small select 1);

[_crate, true, [0, 1.5, 0], 0] remoteExec ["ace_dragging_fnc_setCarryable"];