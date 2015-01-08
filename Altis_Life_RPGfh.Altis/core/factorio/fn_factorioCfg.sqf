/*	fn_factorioCfg
	author: preller @ freudenhaus <codepreller@hirnstrom.net> 

	defines items which can be produced

	PARAM:
	_this select 0 - STRING - itemType
*/

private ["_itemType","_items"];
_itemType = [_this,0,"",[""]] call BIS_fnc_param;
_items = [];

 
switch(_itemType) do {
	//use following syntax ["VEHICLE_TYPE",["varHandleItemNeeded1","varHandleItemNeeded1"],["itemsNeeded1","itemsNeeded2"],price]
	
	case "vehicles": {_items = 
		[
			["I_Heli_Transport_02_F",["ftyre","fbody","fseats","fcable","fglass","foilp"],[6,400,400,420,200,150],5000]
			["I_MRAP_03_F",["ftyre","fbody","fseats","fcable","fglass","foilp"],[4,500,600,450,300,200],5000]
			["B_Truck_01_box_F",["ftyre","fbody","fseats","fcable","fglass","foilp"],[8,650,600,480,150,180],5000]
			["B_Truck_01_fuel_F",["ftyre","fbody","fseats","fcable","fglass","foilp"],[8,700,700,500,180,400],5000]
			["O_Truck_03_device_F",["ftyre","fbody","fseats","fcable","fglass","foilp"],[6,350,360,220,100,100],5000]
	
		];
	};
};

_items;