/*
	File: fn_gather.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Main functionality for gathering.
*/
if(isNil "life_action_gathering") then {life_action_gathering = false;};
private["_gather","_itemWeight","_diff","_itemName","_val","_resourceZones","_zone"];
_resourceZones = ["apple_1","peaches_1","heroin_1","cocaine_1","weed_1","wood_1","frog_1","cereals_1","meth_1","honey_1","milk_1","herp_1","egg_1","hops_1","malt_1","potato_1","pear_1","grape_1","tabacco_1","caoutchouc_1"];
_zone = "";

if(life_action_gathering) exitWith {}; //Action is in use, exit to prevent spamming.
life_action_gathering = true;
//Find out what zone we're near
{
	if(player distance (getMarkerPos _x) < 30) exitWith {_zone = _x;};
} foreach _resourceZones;

if(_zone == "") exitWith {
	life_action_inUse = false;
};

//Get the resource that will be gathered from the zone name...
switch(true) do {
	case (_zone in ["apple_1"]): {_gather = "apple"; _val = 2;};
	case (_zone in ["weed_1"]): {_gather = "cannabis"; _val = 1;};
	case (_zone in ["caoutchouc_1"]): {_gather = "caoutchouc"; _val = 2;};
	case (_zone in ["cereals_1"]): {_gather = "cereals"; _val = 2;};
	case (_zone in ["cocaine_1"]): {_gather = "cocaine"; _val = 1;};
	case (_zone in ["egg_1"]): {_gather = "eggp"; _val = 2;};
	case (_zone in ["frog_1"]): {_gather = "frog"; _val = 1;};
	case (_zone in ["grape_1"]): {_gather = "grape"; _val = 4;};
	case (_zone in ["heroin_1"]): {_gather = "heroinu"; _val = 1;};
	case (_zone in ["herp_1"]): {_gather = "herpp"; _val = 4;};
	case (_zone in ["honey_1"]): {_gather = "honeyu"; _val = 3;};
	case (_zone in ["hops_1"]): {_gather = "hops"; _val = 2;};
	case (_zone in ["malt_1"]): {_gather = "malt"; _val = 2;};
	case (_zone in ["meth_1"]): {_gather = "methu"; _val = 1;};
	case (_zone in ["milk_1"]): {_gather = "milku"; _val = 1;};
	case (_zone in ["peaches_1"]): {_gather = "peach"; _val = 3;};
	case (_zone in ["pear_1"]): {_gather = "pear"; _val = 2;};
	case (_zone in ["potato_1"]): {_gather = "potato"; _val = 3;};
	case (_zone in ["tabacco_1"]): {_gather = "tabaccou"; _val = 2;};
	case (_zone in ["wood_1"]): {_gather = "woodu"; _val = 2;};	
	default {""};
};
//gather check??
if(vehicle player != player) exitWith {};

_diff = [_gather,_val,life_carryWeight,life_maxWeight] call life_fnc_calWeightDiff;
if(_diff == 0) exitWith {hint localize "STR_NOTF_InvFull"};
life_action_inUse = true;
for "_i" from 0 to 2 do
{
	player playMove "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";
	waitUntil{animationState player != "AinvPercMstpSnonWnonDnon_Putdown_AmovPercMstpSnonWnonDnon";};
	sleep 2.5;
};

if(([true,_gather,_diff] call life_fnc_handleInv)) then
{
	_itemName = [([_gather,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	titleText[format[localize "STR_NOTF_Gather_Success",_itemName,_diff],"PLAIN"];
};

life_action_inUse = false;
