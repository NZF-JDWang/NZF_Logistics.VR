_vehicleCosts = [];
_vehicleclasses = [];

_allvehicles = nzf_crates + nzf_vehicles + nzf_aircraft;
{_vehicleclasses pushback [_x select 1]} foreach _allvehicles;
{_vehiclecosts pushback [_x select 1, _x select 2]} foreach _allvehicles;

_index = count _vehicleCosts -1;
private _damPercent = 0;

_scrap = nearestObjects [logiHubSpawn, [], 5];
_scrapVehicle = {typeOf _x} foreach _scrap;
_actualVehicle = nearestObject [logiHubSpawn, _scrapVehicle];

if ([_scrapVehicle] in _vehicleclasses) then 
{
	for "_i" from 1 to _index do 
		{	
		if (_vehiclecosts select _i select 0 isEqualTo _scrapVehicle) then 
			{
				_scrapCost = _vehiclecosts select _i select 1; 
			
				;
				_scrapValue = round (_scrapCost * (logiScrapReturn/100));
				hint format ["Vehicle Value $%1 \n Scrap Percentage %2 \n Total Scrap Value $%4",_scrapCost, logiScrapReturn, _scrapValue];
				[west, _scrapValue, true] call ace_fortify_fnc_updateBudget;
				deleteVehicle _actualVehicle;
			};
		};
 
} else 
	{	
		_name = getText (configFile >> "cfgVehicles" >> _scrapVehicle >> "displayName");
		Hint format ["You cannot scrap this type of vehicle %1",_name];
	};
