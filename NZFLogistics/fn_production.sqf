if (!isServer) exitwith {};
sleep 5;

while {true} do {

	_logiFactorySupplies = missionNamespace getVariable "logiFactorySupplies";
	_logiProductionRate = missionNamespace getVariable "logiProductionRate";
	_logiFactorySupplies = _logiFactorySupplies + _logiProductionRate;

	missionNamespace setVariable ["logiFactorySupplies",_logiFactorySupplies,true];
	
uiSleep 60;
};