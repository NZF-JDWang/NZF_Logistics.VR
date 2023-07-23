class logiDialog 
{
	idd = 1234;

	class controls 
	{
		class logiFrame: RscFrame
		{
			idc = 1800;

			x = 0.29375 * safezoneW + safezoneX;
			y = 0.225 * safezoneH + safezoneY;
			w = 0.4125 * safezoneW;
			h = 0.55 * safezoneH;
		};
		class logiBudget: RscText
		{
			idc = 1000;
			style = 2;

			x = 0.309219 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.381563 * safezoneW;
			h = 0.055 * safezoneH;
		};
		class logiClassSelection: RscCombo
		{
			idc = 2100;
			onLBSelChanged = "[] spawn nzf_fnc_populateList";

			x = 0.324687 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
		};
		class logiListBox: RscListBox
		{
			idc = 1500;
			onLBSelChanged = "[] spawn nzf_fnc_updateInfo";

			x = 0.324687 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.275 * safezoneH;
		};
		class logiVehiclePicture: RscPicture
		{
			idc = 1200;

			text = "#(argb,8,8,3)color(1,1,1,1)";
			x = 0.5 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.198 * safezoneH;
		};
		class logiVehicleCost: RscText
		{
			idc = 1001;
			style = 2;

			x = 0.5 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class logiScrapValue: RscText
		{
			idc = 1002;
			style = 2;

			x = 0.5 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.0721875 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class logiDepositButton: RscButton
		{
			idc = 1600;
			offsetPressedX = "pixelW";
			action = "[] spawn nzf_fnc_suppliesDelivered";

			text = "DEPOSIT SUPPLIES"; 
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class logiPurchaseButton: RscButton
		{
			idc = 1601;
			offsetPressedX = "pixelW";
			action = "[] spawn nzf_fnc_vehicleSpawn";

			text = "PURCHASE"; 
			x = 0.329844 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class logiClose: RscButton
		{
			idc = 1602;
			offsetPressedX = "pixelW";
			action = "closeDialog 1";

			text = "CLOSE"; 
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
		};
		class logiScrap: RscButton
		{
			idc = 1602;
			offsetPressedX = "pixelW";
		
			text = "SCRAP"; 
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.61 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
			action = "[] spawn nzf_fnc_vehicleScrap";
		};
	};
};