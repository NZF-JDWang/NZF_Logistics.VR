createDialog "logiDialog";

_ctrl = (findDisplay 1234) displayCtrl 2100;
lbAdd [2100, "Crates"];
lbAdd [2100, "Vehicles"];
lbAdd [2100, "Aircraft"];
lbSetCurSel [2100,0];

{lbAdd [1500, (_x select 0)];} foreach nzf_crates;
lbSetCurSel [1500,0];

while {true} do 
{
	//Display Current Budget
	_budget = [west] call ace_fortify_fnc_getBudget;
	ctrlSetText [1000, format["Current Budget - $%1",_budget]];
	
};

