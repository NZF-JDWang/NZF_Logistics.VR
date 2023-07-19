[] spawn nzf_fnc_production;

//*******************************************************************
//Fortify setup
//Sets starting budget to $10000 and the cost of a sandbag wall and bunker to $5 and $50 respectively

[west, 5000, [
  ["Land_BagFence_Long_F", 5, "Sandbags"],
  ["Land_BagBunker_Small_F", 50, "Bunkers"]
]] call acex_fortify_fnc_registerObjects;

//*******************************************************************

addMissionEventHandler ["HandleDisconnect", {
	params ["_unit", "_id", "_uid", "_name"];
	false;
  [] call grad_persistence_fnc_saveMission;
}];



 
