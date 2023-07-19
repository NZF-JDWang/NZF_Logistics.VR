_depositsSmall  = nearestObjects [logiHubDepot, [(logiCrate_small select 0)], 8];
_depositsMedium  = nearestObjects [logiHubDepot, [(logiCrate_medium select 0)], 8];
_depositsLarge  = nearestObjects [logiHubDepot, [(logiCrate_large select 0)], 8];

_deliverySmall = count _depositsSmall;
_incomeSmall = _deliverySmall * (logiCrate_small select 1);
{deletevehicle _x} foreach _depositsSmall;

_deliveryMed = count _depositsMedium;
_incomeMed = _deliveryMed * (logiCrate_medium select 1);
{deletevehicle _x} foreach _depositsMedium;

_deliveryLarge = count _depositsLarge;
_incomeLarge = _deliveryLarge * (logiCrate_large select 1);
{deletevehicle _x} foreach _depositsLarge;

_total = _incomeSmall + _incomeMed + _incomeLarge;
 
hint format ["You have made another $%1", _total];
[west, _total, true] call ace_fortify_fnc_updateBudget;

remoteExec ["grad_persistence_fnc_saveMission",2];

