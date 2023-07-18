if (!isServer) exitwith {};

_index = lbCurSel 2100;
_object = lbCurSel 1500;

_budget = [west] call ace_fortify_fnc_getBudget;

switch (_index) do {

	case 0: {
		if ((nzf_crates select _object select 2) < _budget) then 
		{
			_crate = nzf_crates select _object select 1;
			_crate createvehicle (getpos logiHubSpawn);
			_cost = 0 - (nzf_crates select _object select 2);
			[west, _cost, true] call ace_fortify_fnc_updateBudget;
		} else {Hint "You cannot afford this"};
	};
	case 1: {
		if ((nzf_vehicles select _object select 2) < _budget) then 
		{
			_vehicle = nzf_vehicles select _object select 1;
			_vehicle createvehicle (getpos logiHubSpawn);
			_cost = 0 - (nzf_vehicles select _object select 2);
			[west, _cost, true] call ace_fortify_fnc_updateBudget;
		} else {Hint "You cannot afford this"};
	};
	case 2: {
		if ((nzf_aircraft select _object select 2) < _budget) then 
		{
			_aircraft = nzf_aircraft select _object select 1;
			_cost = 0 - (nzf_aircraft select _object select 2);
			[west, _cost, true] call ace_fortify_fnc_updateBudget;
			
			if (_aircraft isKindOf "helicopter") then
			{
				_emptyPads = [];
				{
					if (count (getpos _x findEmptyPosition [5,5]) isNotEqualTo 0) then 
					{
						_emptyPads pushback _x;
					};
				} foreach nzf_pads;
			
				if (count _emptyPads isNotEqualTo 0) then 
				{	
					_aircraft createvehicle (getpos (_emptyPads select 0));

				} else 
					{
						Hint "There are no free helipads";
						[west, (_cost * -1), true] call ace_fortify_fnc_updateBudget;
					};

			} else 
				{
					_emptyHangars = [];
					{
					if (count (getpos _x findEmptyPosition [5,5]) isNotEqualTo 0) then 
							{
								_emptyHangars pushback _x;
							};
					} foreach nzf_hangars;

					if (count _emptyHangars isNotEqualTo 0) then 
						{	
							
							_aircraft createvehicle (getpos (_emptyHangars select 0));

						} else 
							{
								Hint "There are no free helipads";
								[west, (_cost * -1), true] call ace_fortify_fnc_updateBudget;
							};

				};
		} else {Hint "You cannot afford this"};
	};

};