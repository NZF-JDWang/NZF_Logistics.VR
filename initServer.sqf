[] spawn nzf_fnc_production;

//*******************************************************************
//Fortify setup
//Sets starting budget to $10000 and the cost of a sandbag wall and bunker to $5 and $50 respectively

[west, 5000, [
  ["Land_BagFence_Long_F", 5, "Sandbags"],
  ["Land_BagBunker_Small_F", 50, "Bunkers"]
]] call acex_fortify_fnc_registerObjects;


//This is your beginning amount of supplies when the mission starts
//This will be overwritten once persistence is incorporated
missionNamespace setVariable ["logiFactorySupplies",150,true];
//*******************************************************************

addMissionEventHandler ["HandleDisconnect", {
  params ["_unit", "_id", "_uid", "_name"];
  false;
  remoteExec ["grad_persistence_fnc_saveMission",2];
}];



 
