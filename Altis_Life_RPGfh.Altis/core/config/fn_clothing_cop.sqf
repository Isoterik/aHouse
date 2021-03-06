#include <macro.h>
/*
	File: fn_clothing_cop.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Master config file for Cop clothing store.
*/
private["_filter","_ret"];
_filter = [_this,0,0,[0]] call BIS_fnc_param;
//Classname, Custom Display name (use nil for Cfg->DisplayName, price

//Shop Title Name
ctrlSetText[3103,"Altis Polizeiuniformen"];

_ret = [];
switch (_filter) do
{
	//Uniforms
	case 0:
	{
		_ret pushBack ["U_B_Wetsuit",nil,200];
		if(__GETC__(life_coplevel) == 1) then
		{
			_ret pushBack ["U_Rangemaster","Anwaerter",25];
		};
		if(__GETC__(life_coplevel) == 2) then
		{
			_ret pushBack ["U_Rangemaster","Meister",30];
		};
		
		if(__GETC__(life_coplevel) == 3) then
		{
			_ret pushBack ["U_Rangemaster","Kommissar",35];
		};

		if(__GETC__(life_coplevel) == 4) then
		{
			_ret pushBack ["U_Rangemaster","P.Stellv.",40];
		};

		if(__GETC__(life_coplevel) == 5) then
		{
			_ret pushBack ["U_Rangemaster","P.Leiter",45];
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["U_I_CombatUniform_tshirt","Bundespolizei",50];
		};

		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["U_I_CombatUniform_tshirt","BP.Stellv.",55];
		};

		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["U_I_CombatUniform_tshirt","BP.Leiter",60];
		};
		
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["U_I_G_resistanceLeader_F","SEK",65];
		};
		
		if(__GETC__(life_coplevel) == 10) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","SEK.Stellv.",70];
		};

		if(__GETC__(life_coplevel) == 11) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam_vest","SEK.Leiter",75];
		};

		if(__GETC__(life_coplevel) == 12) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam","Stellv.Praesident",80];
		};
		
		if(__GETC__(life_coplevel) == 13) then
		{
			_ret pushBack ["U_B_CombatUniform_mcam","Praesident",85];
		};
	};
	
	//Hats
	case 1:
	{
		_ret pushBack ["H_Cap_blk",nil,25];
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["H_HelmetB_plain_blk","Bund",117];
			_ret pushBack ["H_Beret_blk",nil,50];
			_ret pushBack ["H_Watchcap_blk",nil,25];
		};

		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["H_HelmetB_plain_blk","Bund",117];
			_ret pushBack ["H_Beret_blk",nil,50];
			_ret pushBack ["H_Watchcap_blk",nil,25];
		};

		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["H_HelmetB_plain_blk","Bund",117];
			_ret pushBack ["H_Beret_blk",nil,50];
			_ret pushBack ["H_Watchcap_blk",nil,25];
		};
		
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["H_HelmetSpecB_blk","SEK",145];
		};
		
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret pushBack ["H_HelmetB_plain_blk","SEK-Leiter",117];
			_ret pushBack ["H_Beret_blk",nil,50];
			_ret pushBack ["H_Watchcap_blk",nil,25]; 
		};
	};
	
	//Glasses
	case 2:
	{
		_ret = 
		[
			["G_Shades_Black",nil,25],
			["G_Shades_Blue",nil,20],
			["G_Sport_Blackred",nil,20],
			["G_Sport_Checkered",nil,20],
			["G_Sport_Blackyellow",nil,20],
			["G_Sport_BlackWhite",nil,20],
			["G_Aviator",nil,75],
			["G_Squares",nil,10],
			["G_Lowprofile",nil,30],
			["G_Diving",nil,50]
		];
	};
	
	//Vest
	case 3:
	{
		_ret pushBack ["V_RebreatherB",nil,500];
		
		if ((__GETC__(life_coplevel) > 0 ) && (__GETC__(life_coplevel) < 6 )) then
		{
			_ret pushBack ["V_Rangemaster_belt","Beinholster",150];
			//_ret pushBack ["V_Press_F","Schutzweste",250];	
		};
		
		if(__GETC__(life_coplevel) == 6) then
		{
			_ret pushBack ["V_TacVest_blk","Bund",450];	
		};

		if(__GETC__(life_coplevel) == 7) then
		{
			_ret pushBack ["V_TacVest_blk","Bund",450];	
		};

		if(__GETC__(life_coplevel) == 8) then
		{
			_ret pushBack ["V_TacVest_blk","Bund",450];	
		};
		
		if(__GETC__(life_coplevel) == 9) then
		{
			_ret pushBack ["V_PlateCarrier1_blk","SEK",550];
		};
		
		if(__GETC__(life_coplevel) > 9) then
		{
			_ret pushBack ["V_TacVestIR_blk","SEK-Leiter",650];
		};
	};
	
	//Backpacks
	case 4:
	{
		if(__GETC__(life_coplevel) > 0) then
		{
			_ret pushBack ["B_Bergen_Base","Rucksack",500];	
		};
	};
};

_ret;