/*
	File: fn_useItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main function for item effects and functionality through the player menu.
*/
private["_item"];
disableSerialization;
if((lbCurSel 2005) == -1) exitWith {hint localize "STR_ISTR_SelectItemFirst";};
_item = lbData[2005,(lbCurSel 2005)];

switch (true) do
{
	case (_item == "water" or _item == "coffee" or _item == "milkp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
		};
	};

	case (_item == "jailmeal"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 40;
			life_hunger = 40;
			player setFatigue 0;
		};
		hint "Das Essen ist nicht nahrhaft, aber es haelt mich am leben";
	};
	
	case (_item == "boltcutter"): {
		[cursorTarget] spawn life_fnc_boltcutter;
		closeDialog 0;
	};
	
	case (_item == "blastingcharge"): {
		player reveal fed_bank;
		(group player) reveal fed_bank;
		[cursorTarget] spawn life_fnc_blastingCharge;
	};
	
	case (_item == "defusekit"): {
		[cursorTarget] spawn life_fnc_defuseKit;
	};
	
	case (_item in ["storagesmall","storagebig"]): {
		[_item] call life_fnc_storageBox;
	};
	
	case (_item == "redgull"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_thirst = 100;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				titleText[localize "STR_ISTR_RedGullEffect","PLAIN"];
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};
	
	case (_item == "spikeStrip"):
	{
		if(!isNull life_spikestrip) exitWith {hint localize "STR_ISTR_SpikesDeployment"};
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn life_fnc_spikeStrip;
		};
	};
	
	case (_item == "heroinp"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_useHeroin;
		};
	};

	case (_item == "cocainep" or _item == "cocaineps"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_usecoca;
		};
	};

	case (_item == "marijuana" or _item == "medmarijuana"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_weed;
		};
	};

	case (_item == "froglsd"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[] spawn fnc_useDrug_lsd;
		};
	};
	
	case (_item == "fuelF"):
	{
		if(vehicle player != player) exitWith {hint localize "STR_ISTR_RefuelInVehicle"};
		[] spawn life_fnc_jerryRefuel;
	};
		
	case (_item == "lockpick"):
	{
		[] spawn life_fnc_lockpick;
	};
	
	case (_item in ["apple","peach","tbacon","rabbit","donuts","frogeat","ornate","salema","mullet","mackerel","tuna","catshark","turtle","turtlesoup","honeyp", "cheesep","bunp","cheesestickp","pear","sausage","grape"]):
	{
		[_item] call life_fnc_eatFood;
	};

	case (_item == "fishing"):
	{
		[] spawn life_fnc_fishingUse;
	};
	
	case (_item == "pickaxe"):
	{
		[] spawn life_fnc_pickAxeUse;
	};
	

	case (_item == "proteinshake" or _item == "goldendonat"):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			life_hunger = 110;
			life_thirst = 110;
			player setFatigue 0;
			[] spawn
			{
				life_redgull_effect = time;
				player enableFatigue false;
				waitUntil {!alive player OR ((time - life_redgull_effect) > (3 * 60))};
				player enableFatigue true;
			};
		};
	};

	case (_item in ["beer","applewine","wodka","peachbooze","pearbooze","wine"]):
	{
		if(([false,_item,1] call life_fnc_handleInv)) then
		{
			[_item] spawn life_fnc_alcohol;
		};
	};
	
	case (_item in ["storage1","storage2"]):
    {
        [_item] call life_fnc_placeStorage;
    };
	
	default
	{
		hint localize "STR_ISTR_NotUsable";
	};
};
	
[] call life_fnc_p_updateMenu;
[] call life_fnc_hudUpdate;