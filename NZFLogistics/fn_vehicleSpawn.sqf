if (!isServer) exitwith {};

_index = lbCurSel 2100;
_object = lbCurSel 1500;



switch (_index) do {

	case 0: {

		_crate = nzf_crates select _object select 1;
		_crate createvehicle (getpos logiHubSpawn);
		_cost = 0 - (nzf_crates select _object select 2);
		[west, _cost, true] call ace_fortify_fnc_updateBudget;

	};
	case 1: {

		_vehicle = nzf_vehicles select _object select 1;
		_vehicle createvehicle (getpos logiHubSpawn);
		_cost = 0 - (nzf_vehicles select _object select 2);
		[west, _cost, true] call ace_fortify_fnc_updateBudget;
	};
	case 2: {

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
						};

			};

	};

};