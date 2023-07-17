//Add any crates etc you want to be able to spwn into this array 
//Format is [What you want to call the crate, classname of the object, cost of the object]
nzf_crates = [
	["Spare Wheel","ACE_Wheel", 0],
	["Ammo","ACE_Box_Ammo", 5]
];
//This array is for any vehicles you don't want to spawn on helipads or in hangars
//Same format as above
nzf_vehicles = [

	["Quad Bike","B_Quadbike_01_F", 50],
	["Polaris","B_LSV_01_unarmed_F", 250],
	["MRAP","B_MRAP_01_F", 500],
	["HEMTT","B_Truck_01_mover_F", 1000],
	["Merkava","B_MBT_01_cannon_F", 2000]

];
//This is for any aircraft you want to spawn on helipads or hangar markers 
//Script will check if it's a helicopter or aircraft and spawn on the appropriate marker
//If there are no free helipads or hanger markers no aircraft will spawn 
//Format same as above
nzf_aircraft = [

	["Little Bird","B_Heli_Light_01_dynamicLoadout_F", 500],
	["Ghosthawk","B_Heli_Transport_01_F", 750],
	["Huron","B_Heli_Transport_03_F", 750],
	["Wipeout","B_Plane_CAS_01_dynamicLoadout_F", 1000]

];
//This array is where you add all your helipads
//Helicopters will spawn on the pads in the order you list them
nzf_pads = [

	helipad_1,
	helipad_2	
	
];
//This array is where you add all your fixed wing spawn points
//Fixed wing aircraft will spawn on the pads in the order you list them
nzf_hangars = [

	hangar_1

];
//This defines the type of crate to be spawned and the amount of supplies it is worth 
//This will be expanded to allow different sized crates (small/med/large)
logiCrate_small = ["CargoNet_01_box_F", 50];

//This is your beginning amount of supplies when the mission starts
//This will be overwritten once persistence is incorporated
logiFactorySupplies = 0;

//This is the number of supplies produced per production cycle (currently 60 seconds) 
logiProductionRate = 10;

//This sets the base percentage you will get back when scraping a vehicle (to be implemented)
logiScrapReturn = 50;

//Flag to indicate this file has been run and persistence can now update the number of supplies 
//(Once persitence is implemented)
logiInit = true;
