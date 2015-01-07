/*
	File: fn_removeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes the selected item & amount to remove from the players
	virtual inventory.
*/
private["_data","_value","_obj","_pos","_ind"];
disableSerialization;
_data = lbData[2005,(lbCurSel 2005)];
_value = ctrlText 2010;
if(_data == "") exitWith {hint "Du hast nichts ausgewaehlt, dass du entfernen moechest.";};
if(!([_value] call TON_fnc_isnumber)) exitWith {hint "Du hast keine tatsaechliche Zahl eingegeben."};
if(parseNumber(_value) <= 0) exitWith {hint "Du musst eine Anzahl festlegen, die du entfernen m�chtest."};
_ind = [_data,life_illegal_items] call TON_fnc_index;
if(_ind != -1 && ([west,getPos player,100] call life_fnc_nearUnits)) exitWith {titleText["Das ist ein illegaler Gegenstand und die Polizei ist in der Naehe, du kannst die Beweise jetzt nicht vernichten","PLAIN"]};
if(player != vehicle player) exitWith {titleText["You cannot remove an item when you are in a vehicle.","PLAIN"]};
if(!([false,_data,(parseNumber _value)] call life_fnc_handleInv)) exitWith {hint "Konnte diese Anzahl nicht weiter geben, kann es sein, dass du davon gar nicht soviel hast?"};
_type = [_data,0] call life_fnc_varHandle;
_type = [_type] call life_fnc_varToStr;
hint format["Du hast erfolgreich %1 %2 aus deinem Inventar entfernt.",(parseNumber _value), _type];
	
[] call life_fnc_p_updateMenu;