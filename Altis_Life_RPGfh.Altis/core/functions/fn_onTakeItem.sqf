/*
	File: fn_onTakeItem.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Blocks the unit from taking something they should not have.
*/
private["_unit","_item"];
_unit = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_container = [_this,1,ObjNull,[ObjNull]] call BIS_fnc_param;
_item = [_this,2,"",[""]] call BIS_fnc_param;

if(isNull _unit OR _item == "") exitWith {}; //Bad thingies?

switch(playerSide) do
{
	case west: {if(_item in ["U_Rangemaster","U_I_CombatUniform_tshirt","U_I_G_resistanceLeader_F","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam","B_Bergen_Base"]) {[] call life_fnc_updateTexture;};
	case civilian: {
		//Currently stoping the civilians from taking the indep clothing from medics.
		if(_item in ["U_Rangemaster","U_I_CombatUniform_tshirt","U_I_G_resistanceLeader_F","U_B_CombatUniform_mcam_vest","U_B_CombatUniform_mcam","B_Bergen_Base"]) then {
			[_item,false,false,false,false] call life_fnc_handleItem;
		};
	};
	case independent: {{if(_item in ["U_IG_Guerilla2_3","B_Bergen_Base"]) {[] call life_fnc_updateTexture;};};

	case east: {{if(_item in ["U_C_WorkerCoveralls","B_Bergen_Base"]) {[] call life_fnc_updateTexture;};};
};