/*
	File: fn_restrainAction.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Retrains the target.
*/
private["_unit","_ziptieVar"];
_unit = cursorTarget;
if(isNull _unit) exitWith {}; //Not valid
if((player distance _unit > 3)) exitWith {};
if((_unit getVariable "restrained")) exitWith {};
if(side _unit == west) exitWith {};
if(player == _unit) exitWith {};
if(!isPlayer _unit) exitWith {};

//next line added by preller. no restraining in prison.
if(player distance (getMarkerPos "jail_marker") < 60) exitWith {};

//next lines added by preller. civs need zipties to restrain other civs
_ziptieVar = ["ziptie",0] call life_fnc_varHandle;
_ziptie = missionNamespace getVariable _ziptieVar;

if ((_ziptie < 1) && (side player != west)) exitWith {
	hint "Du benötigst mindestens einen Kabelbinder um jemanden gefangen zu nehmen";
};

if (side player != west) then {
	[false,"ziptie",1] call life_fnc_handleInv;
	["life_fnc_MP_packet",[[getPlayerUID player,profileName,"910"],"life_fnc_wantedAdd",false,false]] spawn life_fnc_MP;
};
//Broadcast!
_unit setVariable["restrained",true,true];
[[player], "life_fnc_restrain", _unit, false] spawn life_fnc_MP;

if (side player == west) then {
	[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",west,false] spawn life_fnc_MP;
}else{
	[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",civilian,false] spawn life_fnc_MP;
	[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",independent,false] spawn life_fnc_MP;
	[[0,"STR_NOTF_Restrained",true,[_unit getVariable["realname", name _unit], profileName]],"life_fnc_broadcast",east,false] spawn life_fnc_MP;
};