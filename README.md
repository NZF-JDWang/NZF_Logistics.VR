# NZF_Logistics.VR

Basic template for a factory, logistic loop. 
All setting are in NZFLogistics\logistics.sqf - There you can set where things will spawn, their cost, the factory production rate etc etc.
Comments in the file will let you know what each value is.

The system is all based around the ACE fortify budget, with all vehicles spawn or fortifications place taking away from the budget, while all supplies delivered, or vehicels scrapped adding to the budget. It is also possible to add or subtract to the budget using the code 

[west, -250, false] call ace_fortify_fnc_updateBudget;

With the -250 being the amount you wish to add or in this case subtracr. 

In this scenario you start in front of the Logi Hub - The Logi Hub is where you can request crate/vehicles/aircraft. 
It is also where you bring supplies to convert them to $$$ in order to fund your vehicles.
Eventually you will also be able to bring vehicles to scrap for a percentage of their purchase price *Note this will only apply to vehicles you can spawn, if you can't spawn it you can't scrap it.
ACE interact with the laptop to access the Logi Hub

Note Crate and Vehicles will spawn on the marker "logiHubSpawn" while Helicopters will spawn on the markers listed in the "nzf_pads" array in NZFLogistics\logistics.sqf 
and Fixed Wing aircraft will spawn on markers listed in the "nzf_hangars" array. Helicopters and Fixed Wing will not spawn if there isn't a free spot available. 

Behind you is a simialar setup for the factory 
The factory has a 60 second production cycle with the number of supplies it produces in that 60 second being defined in NZFLogistics\logistics.sqf
ACE interacting with the factory laptop will allow you to check the number of supplies available and also request supplies.
Currently only 1 size of supply crate is implemented. 2 more will be added allowing you to withdraw 50, 250 or 2500 supplies at a time (the more supplies the bigger the crate with numbers being adjustable)

When you have withdrawn supplies from the factory you must deliver them to pad next to the Logi Hub
Once on the pad accessing the Logi hub will allow you to "DEPOSIT SUPPLIES" doing so will remove the supplies and add that amount to your budget. 
