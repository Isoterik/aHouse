/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Starts automated mining of resource from the tempest device.
*/
private["_vehicle","_resourceZones","_zone","_weight","_item","_vInv","_itemIndex"];
_vehicle = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
if(isNull _vehicle) exitWith {}; //Null was passed?
if(!isNil {_vehicle getVariable "mining"}) exitWith {hint localize "STR_NOTF_DeviceIsMining";}; //Mining is already in process..
closeDialog 0; //Close the interaction menu.
life_action_inUse = true; //Lock out the interaction menu for a bit..
_weight = [_vehicle] call life_fnc_vehicleWeight;
if((_weight select 1) >= (_weight select 0)) exitWith {hint localize "STR_NOTF_DeviceFull"; life_action_inUse = false;};
_resourceZones = ["apple_1","apple_2","peaches_1","heroin_1","cocaine_1","weed_1","wood_1","lead_1","gold_1","iron_1","silver_1","salt_1","sand_1","diamond_1","rock_1","antiques_1","frog_1","cereals_1","meth_1","honey_1","herp_1","egg_1","hops_1","malt_1","potato_1","pear_1","grape_1","tabacco_1","caoutchouc_1"];
_zone = "";

//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 150) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	hint localize "STR_NOTF_notNearResource";
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
_item = switch(true) do {
	case (_zone in ["apple_1"]): {"apple"};
	case (_zone in ["peaches_1"]): {"peach"};
	case (_zone in ["heroin_1"]): {"heroinu"};
	case (_zone in ["cocaine_1"]): {"cocaine"};
	case (_zone in ["weed_1"]): {"cannabis"};
	case (_zone in ["wood_1"]): {"woodu"};
	case (_zone in ["lead_1"]): {"copperore"};
	case (_zone in ["gold_1"]): {"goldore"};
	case (_zone in ["iron_1"]): {"ironore"};
	case (_zone in ["silver_1"]): {"silverore"};
	case (_zone in ["salt_1"]): {"salt"};
	case (_zone in ["sand_1"]): {"sand"};
	case (_zone in ["diamond_1"]): {"diamond"};
	case (_zone in ["rock_1"]): {"rock"};
	case (_zone in ["antiques_1"]): {"antiques"};
	case (_zone in ["frog_1"]): {"frog"};
	case (_zone in ["cereals_1"]): {"cereals"};
	case (_zone in ["meth_1"]): {"methu"};
	case (_zone in ["honey_1"]): {"honeyu"};
	case (_zone in ["herp_1"]): {"herpp"};
	case (_zone in ["egg_1"]): {"eggp"};
	case (_zone in ["hops_1"]): {"hops"};
	case (_zone in ["malt_1"]): {"malt"};
	case (_zone in ["potato_1"]): {"potato"};
	case (_zone in ["pear_1"]): {"pear"};
	case (_zone in ["grape_1"]): {"grape"};
	case (_zone in ["tabacco_1"]): {"tabaccou"};
	case (_zone in ["caoutchouc_1"]): {"caoutchouc"};
	default {""};
};

if(_item == "") exitWith {hint "Du kannst keine Fluessigkeiten damit abpumpen!"; life_action_inUse = false;};
_vehicle setVariable ["mining",true,true]; //Lock the device
[_vehicle,"life_fnc_soundDevice",true,false] spawn life_fnc_MP; //Broadcast the 'mining' sound of the device for nearby units.

life_action_inUse = false; //Unlock it since it's going to do it's own thing...

while {true} do {
	if(!alive _vehicle OR isNull _vehicle) exitWith {};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];};
	titleText[localize "STR_NOTF_DeviceMining","PLAIN"];
	_time = time + 27;
	
	//Wait for 27 seconds with a 'delta-time' wait.
	waitUntil {
		if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"]; true};
		if(round(_time - time) < 1) exitWith {true};
		sleep 0.2;
		false
	};
	if(isEngineOn _vehicle) exitWith {titleText[localize "STR_NOTF_MiningStopped","PLAIN"];};
	_vInv = _vehicle getVariable ["Trunk",[[],0]];
	_items = _vInv select 0;
	_space = _vInv select 1;
	_itemIndex = [_item,_items] call TON_fnc_index;
	_weight = [_vehicle] call life_fnc_vehicleWeight;
	_sum = [_item,15,_weight select 1,_weight select 0] call life_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 
	if(_sum < 1) exitWith {titleText[localize "STR_NOTF_DeviceFull","PLAIN"];};
	_itemWeight = ([_item] call life_fnc_itemWeight) * _sum;
	if(_itemIndex == -1) then {
		_items pushBack [_item,_sum];
	} else {
		_val = _items select _itemIndex select 1;
		_items set[_itemIndex,[_item,_val + _sum]];
	};
	
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	
	//Locality checks...
	if(local _vehicle) then {
		_vehicle setFuel (fuel _vehicle)-0.045;
	} else {
		[[_vehicle,(fuel _vehicle)-0.04],"life_fnc_setFuel",_vehicle,false] spawn life_fnc_MP;
	};
	
	if(fuel _vehicle == 0) exitWith {titleText[localize "STR_NOTF_OutOfFuel","PLAIN"];};
	titleText[format[localize "STR_NOTF_DeviceMined",_sum],"PLAIN"];
	_vehicle setVariable["Trunk",[_items,_space + _itemWeight],true];
	_weight = [_vehicle] call life_fnc_vehicleWeight;
	_sum = [_item,15,_weight select 1,_weight select 0] call life_fnc_calWeightDiff; //Get a sum base of the remaining weight.. 
	if(_sum < 1) exitWith {titleText[localize "STR_NOTF_DeviceFull","PLAIN"];};
	sleep 2;
};

_vehicle setVariable["mining",nil,true];