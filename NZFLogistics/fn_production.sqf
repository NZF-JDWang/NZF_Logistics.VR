if (!isServer) exitwith {};
sleep 5;

while {true} do {

if (({isPlayer _x} count (allPlayers - entities "HeadlessClient_F")) > 0) then 
	{
		_logiFactorySupplies = missionNamespace getVariable "logiFactorySupplies";
		_logiProductionRate = missionNamespace getVariable "logiProductionRate";
		_logiFactorySupplies = _logiFactorySupplies + _logiProductionRate;

		missionNamespace setVariable ["logiFactorySupplies",_logiFactorySupplies,true];
	};
	
uiSleep 60;
};