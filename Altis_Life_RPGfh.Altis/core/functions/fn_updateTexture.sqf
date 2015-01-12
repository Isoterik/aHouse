#include <macro.h>
/*
	No Author Needed; it's a few default lines of code
*/


if(playerSide == civilian) exitWith {};

if(playerSide == west) then 
{

	if ((__GETC__(life_coplevel) > 0) && (Backpack player == "B_Bergen_Base")) then {
		(unitBackpack player) setObjectTextureGlobal[0,"textures\clothing\cop\polizeirucksack.paa"];
	};

	/*
	if ((__GETC__(life_coplevel) > 0) && ( == "V_Press_F")) then {
		 setObjectTextureGlobal[0,"textures\clothing\cop\pweste.paa"];
	};
	*/

	if ((__GETC__(life_coplevel) == 1) && (uniform player == "U_Rangemaster")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\polizeianwaerter.paa"];
	};

	if ((__GETC__(life_coplevel) == 2) && (uniform player == "U_Rangemaster")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\polizeimeister.paa"];
	};

	if ((__GETC__(life_coplevel) == 3) && (uniform player == "U_Rangemaster")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\polizeikommissar.paa"];
	};

	if ((__GETC__(life_coplevel) == 4) && (uniform player == "U_Rangemaster")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\polizeistellv.paa"];
	};

	if ((__GETC__(life_coplevel) == 5) && (uniform player == "U_Rangemaster")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\polizeileiter.paa"];
	};

	if ((__GETC__(life_coplevel) == 6) && (uniform player == "U_I_CombatUniform_tshirt")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\bunduniform.paa"];
	};

	if ((__GETC__(life_coplevel) == 7) && (uniform player == "U_I_CombatUniform_tshirt")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\bpstellv.paa"];
	};

	if ((__GETC__(life_coplevel) == 8) && (uniform player == "U_I_CombatUniform_tshirt")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\bpleiter.paa"];
	};

	if ((__GETC__(life_coplevel) == 9) && (uniform player == "U_I_G_resistanceLeader_F")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\sekuniform.paa"];
	};

	if ((__GETC__(life_coplevel) == 10) && (uniform player == "U_B_CombatUniform_mcam_vest")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\sekstellv.paa"];
	};

	if ((__GETC__(life_coplevel) == 11) && (uniform player == "U_B_CombatUniform_mcam_vest")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\sekleiter.paa"];
	};

	if ((__GETC__(life_coplevel) == 12) && (uniform player == "U_B_CombatUniform_mcam")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\praesistellv.paa"];
	};

	if ((__GETC__(life_coplevel) == 13) && (uniform player == "U_B_CombatUniform_mcam")) then {
		player setObjectTextureGlobal[0,"textures\clothing\cop\praesident.paa"];
	};
};

if(playerSide == independent) then
{
	if (Backpack player == "B_Bergen_Base") then {
		(unitBackpack player) setObjectTextureGlobal[0,"textures\clothing\med\arztrucksack.paa"];
	};

	if (uniform player == "U_IG_Guerilla2_3") then {
		player setObjectTextureGlobal[0,"textures\clothing\med\notarzt.paa"];
	};
};

if(playerSide == east) then
{
	if (Backpack player == "B_Bergen_Base") then {
		(unitBackpack player) setObjectTextureGlobal[0,"textures\clothing\adac\adacrucksack.paa"];
	};

	if (uniform player == "U_C_WorkerCoveralls") then {
		player setObjectTextureGlobal[0,"textures\clothing\adac\adacoverall.paa"];
	};
};
