/*
	File: fn_shopMenus.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config for a thing that will be gone eventually..
*/
private["_shop"];
_shop = [_this,0,"",[""]] call BIS_fnc_param;
if(_shop == "") exitWith {closeDialog 0;};

if(!dialog) then
{
	if(!(createDialog "shop_menu")) exitWith {};
};
disableSerialization;
ctrlSetText[601,format["Geld: $%1",[life_cash] call life_fnc_numberText]];

switch (_shop) do
{
	case "reb":
	{
		ctrlSetText[2505,"Mohammed Jihadi's Ausruestung"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	
	case "cop":
	{
		ctrlSetText[2505,"Altis Polizeiuniformen"];
		ctrlShow[2503,false];
	};
	
	case "gun":
	{
		ctrlSetText[2505,"Harry's Waffen"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	
	case "gang":
	{
		ctrlSetText[2505,"Mohammed Jihadi's Fahrzeuge"];
		ctrlShow[2503,false];
		ctrlShow[2513,false];
		ctrlShow[2514,false];
	};
	
	case "dive":
	{
		ctrlSetText[2505,"Steve's Tauchzubehoer"];
		ctrlShow[2503,false];
		ctrlShow[2510,false];
		ctrlShow[2511,false];
		ctrlShow[2513,false];
	};
	
	case "donator":
	{
		ctrlSetText[2505,"Donator Shop"];
	};
	
	case "sergeant":
	{
		ctrlSetText[2505,"SEK-Waffen"];
		ctrlShow[2503,false];
	};
	
	case "gen":
	{
		ctrlSetText[2505,"Altis Ausruestungsbedarf"];
		ctrlShow[2503,false];
	};
	
	case "officer":
	{
		ctrlSetText[2505,"Bundespolizei-Waffen"];
		ctrlShow[2503,false];
	};
	
	case "admin":
	{
		ctrlSetText[2505,"Admin Shop"];
	};
};

["guns"] call life_fnc_shops_changeMenu;
