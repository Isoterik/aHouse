#include <macro.h>
/*
	File: fn_initCop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Cop Initialization file.
*/
private["_end"];
player addRating 9999999;
waitUntil {!(isNull (findDisplay 46))};
_end = false;

//Check for Blacklistentry.
if(life_blacklisted) exitWith
{
	["Blacklisted",false,true] call BIS_fnc_endMission;
	sleep 30;
};

if(!(str(player) in ["cop_1","cop_2","cop_3","cop_4","cop_5","cop_6"])) then
{ 
	if((__GETC__(life_coplevel) == 1) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_7","cop_8","cop_9","cop_10","cop_11","cop_12"])) then
{ 
	if((__GETC__(life_coplevel) == 2) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_13","cop_14","cop_15","cop_16","cop_17","cop_18"])) then
{ 
	if((__GETC__(life_coplevel) == 3) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_19"])) then
{ 
	if((__GETC__(life_coplevel) == 4) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_20"])) then
{ 
	if((__GETC__(life_coplevel) == 5) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_21","cop_22","cop_23","cop_24","cop_25","cop_26"])) then
{ 
	if((__GETC__(life_coplevel) == 6) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_27"])) then
{ 
	if((__GETC__(life_coplevel) == 7) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_28"])) then
{ 
	if((__GETC__(life_coplevel) == 8) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_29","cop_30","cop_31","cop_32","cop_33","cop_34"])) then
{ 
	if((__GETC__(life_coplevel) == 9) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_35"])) then
{ 
	if((__GETC__(life_coplevel) == 10) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_36"])) then
{ 
	if((__GETC__(life_coplevel) == 11) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_37"])) then
{ 
	if((__GETC__(life_coplevel) == 12) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

if(!(str(player) in ["cop_38"])) then
{ 
	if((__GETC__(life_coplevel) == 13) && (__GETC__(life_adminlevel) == 0)) then {
	["NotWhitelisted",false,true] call BIS_fnc_endMission;
		sleep 35;
	};
};

switch(__GETC__(life_coplevel))do
{	
	case 1:{life_paycheck = 300;}; //Paycheck Amount
	case 2:{life_paycheck = 350;}; //Paycheck Amount
	case 3:{life_paycheck = 400;}; //Paycheck Amount
	case 4:{life_paycheck = 550;}; //Paycheck Amount
	case 5:{life_paycheck = 550;}; //Paycheck Amount				
	case 6:{life_paycheck = 450;}; //Paycheck Amount
	case 7:{life_paycheck = 600;}; //Paycheck Amount
	case 8:{life_paycheck = 600;}; //Paycheck Amount
	case 9:{life_paycheck = 500;}; //Paycheck Amount				
	case 10:{life_paycheck = 650;}; //Paycheck Amount
	case 11:{life_paycheck = 650;}; //Paycheck Amount
	case 12:{life_paycheck = 1300;}; //Paycheck Amount
	case 13:{life_paycheck = 1300;}; //Paycheck Amount
};

player setVariable["rank",(__GETC__(life_coplevel)),true];
[] call life_fnc_spawnMenu;
waitUntil{!isNull (findDisplay 38500)}; //Wait for the spawn selection to be open.
waitUntil{isNull (findDisplay 38500)}; //Wait for the spawn selection to be done.