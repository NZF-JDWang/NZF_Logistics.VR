_index = lbCurSel 2100;
_object = lbCurSel 1500;

switch (_index) do {

	case 0: {

		_cost = nzf_crates select _object select 2;
		ctrlSetText [1001, format["Cost - $%1",_cost]];
		ctrlSetText [1002, format["Base Scrap- $%1",_cost* (logiScrapReturn/100)]];

		_crate = nzf_crates select _object select 1;
		_picture = getText (configFile >> "cfgVehicles" >> _crate >> "editorPreview");
		ctrlSetText [1200, _picture];

	};
	case 1: {
		_cost = nzf_vehicles select _object select 2;
		ctrlSetText [1001, format["Cost - $%1",_cost]];
		ctrlSetText [1002, format["Base Scrap- $%1",_cost* (logiScrapReturn/100)]];

		_vehicle = nzf_vehicles select _object select 1;
		_picture = getText (configFile >> "cfgVehicles" >> _vehicle >> "editorPreview");
		ctrlSetText [1200, _picture];

	};
	case 2: {
		_cost = nzf_aircraft select _object select 2;
		ctrlSetText [1001, format["Cost - $%1",_cost]];
		ctrlSetText [1002, format["Base Scrap- $%1",_cost* (logiScrapReturn/100)]];
		
		_aircraft = nzf_aircraft select _object select 1;
		_picture = getText (configFile >> "cfgVehicles" >> _aircraft >> "editorPreview");
		ctrlSetText [1200, _picture];

	};

};
