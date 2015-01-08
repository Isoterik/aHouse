/*
	File: fn_medicLoadout.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Loads the medic out with the default gear.
*/
private["_handle"];
_handle = [] spawn life_fnc_stripDownPlayer;
waitUntil {scriptDone _handle};

//Load player with default medic gear.
player addUniform "U_IG_Guerilla2_3";
player setObjectTextureGlobal [0,"textures\clothing\med\notarzt.paa"];
player addBackpack "B_Bergen_Base";
player addItem "ItemMap";
player assignItem "ItemMap";
player addItem "ItemCompass";
player assignItem "ItemCompass";
player addItem "ItemGPS";
player assignItem "ItemGPS";
player addItem "ItemWatch";
player assignItem "ItemWatch";

[] call life_fnc_saveGear;