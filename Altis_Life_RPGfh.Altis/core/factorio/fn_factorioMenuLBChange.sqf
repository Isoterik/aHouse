#include <macro.h>
/*
	File: fn_factorioMenuLBChange.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: preller for freudenhaus <codepreller@hirnstrom.net>
	
	Description:
	Called when a new selection is made in the list box and
	displays various bits of information about the vehicle.
*/
disableSerialization;
private["_control","_index","_className","_basePrice","_vehicleInfo","_colorArray","_ctrl"];
_control = _this select 0;
_index = _this select 1;

//Fetch some information.
_className = _control lbData _index;
_vIndex = _control lbValue _index;

//next lines added by preller. get the item informations
_itemList = ["vehicles"] call FHC_fnc_factorioCfg;

_vehicleInfo = [_className] call life_fnc_fetchVehInfo;
_trunkSpace = [_className] call life_fnc_vehicleWeightCfg;

ctrlShow [2330,true];
(getControl(2300,2303)) ctrlSetStructuredText parseText format[
(localize "STR_Shop_Veh_UI_Rental")+ " <t color='#8cff9b'>$%1</t><br/>" +(localize "STR_Shop_Veh_UI_Ownership")+ " <t color='#8cff9b'>$%2</t><br/>" +(localize "STR_Shop_Veh_UI_MaxSpeed")+ " %3 km/h<br/>" +(localize "STR_Shop_Veh_UI_HPower")+ " %4<br/>" +(localize "STR_Shop_Veh_UI_PSeats")+ " %5<br/>" +(localize "STR_Shop_Veh_UI_Trunk")+ " %6<br/>" +(localize "STR_Shop_Veh_UI_Fuel")+ " %7<br/>" +(localize "STR_Shop_Veh_UI_Armor")+ " %8",
[_basePrice] call life_fnc_numberText,
[round(_basePrice * 1.5)] call life_fnc_numberText,
_vehicleInfo select 8,
_vehicleInfo select 11,
_vehicleInfo select 10,
if(_trunkSpace == -1) then {"None"} else {_trunkSpace},
_vehicleInfo select 12,
_vehicleInfo select 9
];

lbSetCurSel[2304,0];
if((lbSize _ctrl)-1 != -1) then {
	ctrlShow[2304,true];
} else {
	ctrlShow[2304,false];
};
true;