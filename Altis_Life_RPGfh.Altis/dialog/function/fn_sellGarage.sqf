#include <macro.h>
/*
	File: fn_sellGarage.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Sells a vehicle from the garage.
*/
private["_vehicle","_vid","_pid","_unit","_price"];
disableSerialization;
if(lbCurSel 2802 == -1) exitWith {hint localize "STR_Global_NoSelection"};
_vehicle = lbData[2802,(lbCurSel 2802)];
_vehicle = (call compile format["%1",_vehicle]) select 0;
_vid = lbValue[2802,(lbCurSel 2802)];
_pid = getPlayerUID player;
_unit = player;

if(isNil "_vehicle") exitWith {hint localize "STR_Garage_Selection_Error"};

switch (side player) do
{
	case civilian:
	{
		_price = [_vehicle,__GETC__(life_garage_sell_civ)] call TON_fnc_index;
		_price = if(_price == -1) then {100} else {(__GETC__(life_garage_sell_civ) select _price) select 1;};
	};

	case west:
	{
		_price = [_vehicle,__GETC__(life_garage_sell_cop)] call TON_fnc_index;
		_price = if(_price == -1) then {100} else {(__GETC__(life_garage_sell_cop) select _price) select 1;};
	};
	
	case independent:
	{
		_price = [_vehicle,__GETC__(life_garage_sell_med)] call TON_fnc_index;
		_price = if(_price == -1) then {100} else {(__GETC__(life_garage_sell_med) select _price) select 1;};
	};
	
	case east:
	{
		_price = [_vehicle,__GETC__(life_garage_sell_adac)] call TON_fnc_index;
		_price = if(_price == -1) then {100} else {(__GETC__(life_garage_sell_adac) select _price) select 1;};
	};
};

[[_vid,_pid,_price,player,life_garage_type],"TON_fnc_vehicleDelete",false,false] spawn life_fnc_MP;
hint format[localize "STR_Garage_SoldCar",[_price] call life_fnc_numberText];
life_atmcash = life_atmcash + _price;

closeDialog 0;