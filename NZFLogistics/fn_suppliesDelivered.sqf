_depositsSmall  = nearestObjects [logiHubDepot, [(logiCrate_small select 0)], 8];
_depositsMedium  = nearestObjects [logiHubDepot, [(logiCrate_medium select 0)], 8];
_depositsLarge  = nearestObjects [logiHubDepot, [(logiCrate_large select 0)], 8];

_delivery = count _depositsSmall;
_income = _delivery * (logiCrate_small select 1);
{deletevehicle _x} foreach _depositsSmall;

_delivery = count _depositsMedium;
_income = _delivery * (logiCrate_medium select 1);
{deletevehicle _x} foreach _depositsMedium;

_delivery = count _depositsLarge;
_income = _delivery * (logiCrate_large select 1);
{deletevehicle _x} foreach _depositsLarge;
 
hint format ["You have made another $%1", _income];
[west, _income, true] call ace_fortify_fnc_updateBudget;
sleep 0.5;
[] call grad_persistence_fnc_saveMission;

