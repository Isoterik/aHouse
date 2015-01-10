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

switch (getVariable "rank") do {

	case 1:
	{
		player addUniform "U_Rangemaster";
		player setObjectTextureGlobal [0,"textures\clothing\cop\polizeianwaerter.paa"];
	};

	case 2:
	{
		player addUniform "U_Rangemaster";
		player setObjectTextureGlobal [0,"textures\clothing\cop\polizeimeister.paa"];
	};
		
	case 3:
	{
		player addUniform "U_Rangemaster";
		player setObjectTextureGlobal [0,"textures\clothing\cop\polizeikommissar.paa"];
	};

	case 4:
	{
		player addUniform "U_Rangemaster";
		player setObjectTextureGlobal [0,"textures\clothing\cop\polizeistellv.paa"];
	};

	case 5:
	{
		player addUniform "U_Rangemaster";
		player setObjectTextureGlobal [0,"textures\clothing\cop\polizeileiter.paa"];
	};	
		
	case 6:
	{
		player addUniform "U_I_CombatUniform_tshirt";
		player setObjectTextureGlobal [0,"textures\clothing\cop\bunduniform.paa"];
	};

	case 7:
	{
		player addUniform "U_I_CombatUniform_tshirt";
		player setObjectTextureGlobal [0,"textures\clothing\cop\bpstellv.paa"];
	};

	case 8:
	{
		player addUniform "U_I_CombatUniform_tshirt";
		player setObjectTextureGlobal [0,"textures\clothing\cop\bpleiter.paa"];
	};
		
	case 9:
	{
		player addUniform "U_I_G_resistanceLeader_F";
		player setObjectTextureGlobal [0,"textures\clothing\cop\sekuniform.paa"];
	};
	
	case 10:
	{
		player addUniform "U_B_CombatUniform_mcam_vest";
		player setObjectTextureGlobal [0,"textures\clothing\cop\sekstellv.paa"];
	};

	case 11:
	{
		player addUniform "U_B_CombatUniform_mcam_vest";
		player setObjectTextureGlobal [0,"textures\clothing\cop\sekleiter.paa"];
	};

	case 12:
	{
		player addUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0,"textures\clothing\cop\praesistellv.paa"];
	};
	
	case 13:
	{
		player addUniform "U_B_CombatUniform_mcam";
		player setObjectTextureGlobal [0,"textures\clothing\cop\praesident.paa"];
	};
};

player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;