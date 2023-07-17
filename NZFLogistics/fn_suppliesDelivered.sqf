_deposits = nearestObjects [logiHubDepot, [(logiCrate_small select 0)], 5];

_delivery = count _deposits;
_income = _delivery * (logiCrate_small select 1);

{deletevehicle _x} foreach _deposits; 

hint format ["You have made another $%1", _income];
[west, _income, true] call ace_fortify_fnc_updateBudget;