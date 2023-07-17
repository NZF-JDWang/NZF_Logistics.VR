class logiDialog 
{
	idd = 1234;

	class controls 
	{
		class logiFrame: RscFrame
		{
			idc = 1800;
			x = 0.29375 * safezoneW + safezoneX;
			y = 0.236 * safezoneH + safezoneY;
			w = 0.407344 * safezoneW;
			h = 0.539 * safezoneH;
			colorSelectBackground[] = {0,0,0,0.7};
		};
		class logiBudget: RscText
		{
			idc = 1000;
			x = 0.309219 * safezoneW + safezoneX;
			y = 0.258 * safezoneH + safezoneY;
			w = 0.381563 * safezoneW;
			h = 0.055 * safezoneH;
			style = ST_CENTER;
		};
		class logiClassSelection: RscCombo
		{
			idc = 2100;
			x = 0.324687 * safezoneW + safezoneX;
			y = 0.335 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.022 * safezoneH;
			onLBSelChanged = "[] spawn nzf_fnc_populateList";
			
		};
		class logiListBox: RscListbox
		{
			idc = 1500;
			x = 0.324687 * safezoneW + safezoneX;
			y = 0.368 * safezoneH + safezoneY;
			w = 0.139219 * safezoneW;
			h = 0.275 * safezoneH;
			onLBSelChanged = "[] spawn nzf_fnc_updateInfo";
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
			x = 0.5 * safezoneW + safezoneX;
			y = 0.544 * safezoneH + safezoneY;
			w = 0.175313 * safezoneW;
			h = 0.044 * safezoneH;
			style = ST_CENTER;
		};
		class logiDepositButton: RscButton
		{
			idc = 1600;
			text = "DEPOSIT SUPPLIES"; 
			x = 0.453594 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
			offsetPressedX = "pixelW";
			action  = "[] spawn nzf_fnc_suppliesDelivered";
		};
		class logiPurchaseButton: RscButton
		{
			idc = 1601;
			text = "PURCHASE"; 
			x = 0.329844 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
			offsetPressedX = "pixelW";
			action  = "[] spawn nzf_fnc_vehicleSpawn";
		};
		class logiClose: RscButton
		{
			idc = 1602;
			text = "CLOSE"; 
			x = 0.5825 * safezoneW + safezoneX;
			y = 0.687 * safezoneH + safezoneY;
			w = 0.0876563 * safezoneW;
			h = 0.044 * safezoneH;
			offsetPressedX = "pixelW";
			action = "closeDialog 1";
		};
	};
};