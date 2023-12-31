//Add ace interactions to the Logi laptops
_action = ["logiInterface","Open Logistics Interface","\A3\Ui_f\data\IGUI\Cfg\simpleTasks\types\container_ca.paa",{execVM "NZFlogistics\openLogiDialog.sqf"},{true}] call ace_interact_menu_fnc_createAction;   
[logiHubLaptop, 0, ["ACE_MainActions"], _action] call ace_interact_menu_fnc_addActionToObject;

_action1 = ["checkSupplies","Check Number of Supplies","",{ [5, [], {hint format ["There are %1 supplies available", logiFactorySupplies];}, {}, "Checking Supplies - "] call ace_common_fnc_progressBar;},{true}] call ace_interact_menu_fnc_createAction;   
[logiFactoryLaptop_1, 0, ["ACE_MainActions"], _action1] call ace_interact_menu_fnc_addActionToObject;

_action2 = ["logiFactory","Request 50 Supplies","",{[50] call nzf_fnc_suppliesSpawn;},{logiFactorySupplies > 50}] call ace_interact_menu_fnc_createAction;   
[logiFactoryLaptop_1, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;

_action2 = ["logiFactory","Request 250 Supplies","",{[250] call nzf_fnc_suppliesSpawn;},{logiFactorySupplies > 250}] call ace_interact_menu_fnc_createAction;   
[logiFactoryLaptop_1, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;

_action2 = ["logiFactory","Request 2500 Supplies","",{[2500] call nzf_fnc_suppliesSpawn;},{logiFactorySupplies > 2500}] call ace_interact_menu_fnc_createAction;   
[logiFactoryLaptop_1, 0, ["ACE_MainActions"], _action2] call ace_interact_menu_fnc_addActionToObject;