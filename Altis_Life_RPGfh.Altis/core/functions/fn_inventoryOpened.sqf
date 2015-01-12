/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	For the mean time it blocks the player from opening another persons backpack
*/
private["_container","_unit"];
if(count _this == 1) exitWith {false};
_unit = _this select 0;
_container = _this select 1;

_isPack = getNumber(configFile >> "CfgVehicles" >> (typeOf _container) >> "isBackpack");
if(_isPack == 1 && (side player != west)) then {
	hint localize "STR_MISC_Backpack";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

if((typeOf _container) in ["Box_IND_Grenades_F","B_supplyCrate_F"]) exitWith {
	_house = nearestBuilding (getPosATL player);
	if(!(_house in life_vehicles) && {(_house getVariable ["locked",false])}) then {
		hint localize "STR_House_ContainerDeny";
		[] spawn {
			waitUntil {!isNull (findDisplay 602)};
			closeDialog 0;
		};
	};
};

if(_container isKindOf "LandVehicle" OR _container isKindOf "Ship" OR _container isKindOf "Air") exitWith {
	if(!(_container in life_vehicles) && {(locked _container) == 2} && (side player != west)) exitWith {
		hint localize "STR_MISC_VehInventory";
		[] spawn {
			waitUntil {!isNull (findDisplay 602)};
			closeDialog 0;
		};
	};
};

//Allow alive players who've been knocked out to be looted, just not the dead ones
if(_container isKindOf "Man" && !alive _container) exitWith {
	hint localize "STR_NOTF_NoLootingPerson";
	[] spawn {
		waitUntil {!isNull (findDisplay 602)};
		closeDialog 0;
	};
};

if((playerSide == west) && (uniform player == "U_Rangemaster") || (uniform player == "U_I_CombatUniform_tshirt") || (uniform player == "U_I_G_resistanceLeader_F") || (uniform player == "U_B_CombatUniform_mcam_vest") || (uniform player == "U_B_CombatUniform_mcam") || (Backpack player == "B_Bergen_Base")) then {
[] call life_fnc_updateTexture;
};

if((playerSide == independent) && (uniform player == "U_IG_Guerilla2_3") || (Backpack player == "B_Bergen_Base")) then {
[] call life_fnc_updateTexture;
};

if((playerSide == east) && (uniform player == "U_C_WorkerCoveralls") || (Backpack player == "B_Bergen_Base")) then {
[] call life_fnc_updateTexture;
};
 