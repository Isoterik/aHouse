/*
	Author: Zero
	Copyright (C) 2014
*/


ZCT_BoostToggle = false;

waituntil {!(IsNull (findDisplay 46))};


ZCT_boost_on = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 2) && (vehicle player) != player && ((vehicle player) getVariable [""boost"",[false]] select 0) && !((vehicle player) getVariable ""boost"" select 1) && !ZCT_BoostToggle) then {[] spawn ZCT_fnc_UseBoost; ZCT_BoostToggle = true;};"];

ZCT_boost_off = (findDisplay 46) displayAddEventHandler ["KeyUp","if ((_this select 2) && (vehicle player) != player && ((vehicle player) getVariable [""boost"",[false]] select 0) && ((vehicle player) getVariable [""boost"",[false]] select 0)) then {ZCT_BoostToggle = false;};"];

ZCT_jump_on = (findDisplay 46) displayAddEventHandler ["KeyDown","if ((_this select 4) && (vehicle player) != player && ((vehicle player) getVariable [""boost"",[false]] select 0)) then {ZCT_jump = true;};"];
