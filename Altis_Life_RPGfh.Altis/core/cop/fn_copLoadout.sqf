#include <macro.h>
/*
	File: fn_copLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	Edited: Itsyuka
	
	Description:
	Loads the cops out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default cop gear.

switch (player getVariable "rank") do {

	case 1:
	{
		player AddUniform "U_Rangemaster";
		[[player,0,"textures\clothing\cop\polizeianwaerter.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 2:
	{
		player AddUniform "U_Rangemaster";
		[[player,0,"textures\clothing\cop\polizeimeister.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};
		
	case 3:
	{
		player AddUniform "U_Rangemaster";
		[[player,0,"textures\clothing\cop\polizeikommissar.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 4:
	{
		player AddUniform "U_Rangemaster";
		[[player,0,"textures\clothing\cop\polizeistellv.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 5:
	{
		player AddUniform "U_Rangemaster";
		[[player,0,"textures\clothing\cop\polizeileiter.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};	
		
	case 6:
	{
		player AddUniform "U_I_CombatUniform_tshirt";
		[[player,0,"textures\clothing\cop\bunduniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 7:
	{
		player AddUniform "U_I_CombatUniform_tshirt";
		[[player,0,"textures\clothing\cop\bpstellv.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 8:
	{
		player AddUniform "U_I_CombatUniform_tshirt";
		[[player,0,"textures\clothing\cop\bpleiter.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};
		
	case 9:
	{
		player AddUniform "U_I_G_resistanceLeader_F";
		[[player,0,"textures\clothing\cop\sekuniform.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};
	
	case 10:
	{
		player AddUniform "U_B_CombatUniform_mcam_vest";
		[[player,0,"textures\clothing\cop\sekstellv.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 11:
	{
		player AddUniform "U_B_CombatUniform_mcam_vest";
		[[player,0,"textures\clothing\cop\sekleiter.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};

	case 12:
	{
		player AddUniform "U_B_CombatUniform_mcam";
		[[player,0,"textures\clothing\cop\praesistellv.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};
	
	case 13:
	{
		player AddUniform "U_B_CombatUniform_mcam";
		[[player,0,"textures\clothing\cop\praesident.paa"],"life_fnc_setTexture",true,false] spawn life_fnc_MP;
	};
};

/* ITEMS */
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;