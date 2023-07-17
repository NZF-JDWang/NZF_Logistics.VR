_index = lbCurSel 2100;
_ctrl = (findDisplay 1234) displayCtrl 1500;

switch (_index) do {

	case 0: {
				lbClear _ctrl;
				{lbAdd [1500, (_x select 0)];} foreach nzf_crates;
				lbSetCurSel [1500,0];
			};
	case 1: {
				lbClear _ctrl;
				{lbAdd [1500, (_x select 0)];} foreach nzf_vehicles;
				lbSetCurSel [1500,0];
			
			};
	case 2: {
				lbClear _ctrl;
				{lbAdd [1500, (_x select 0)];} foreach nzf_aircraft;
				lbSetCurSel [1500,0];
			};
};
