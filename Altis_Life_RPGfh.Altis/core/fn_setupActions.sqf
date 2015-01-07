/*
	File: fn_setupActions.sqf
	
	Description:
	Master addAction file handler for all client-based actions.
*/
switch (playerSide) do
{
	case west:
	{
		//myfreecams
		life_actions = life_actions + [player addAction["<t color='#FF0000'>[CAM] Kavala Markt</t>",life_fnc_cam,"markt",0,false,false,"",'((vehicle player) != player && commander (vehicle player) == player) OR (player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30)']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>[CAM] Zentralbank</t>",life_fnc_cam,"bank",0,false,false,"",'((vehicle player) != player && commander (vehicle player) == player) OR (player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30)']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>[CAM] Gefängnis</t>",life_fnc_cam,"jail",0,false,false,"",'((vehicle player) != player && commander (vehicle player) == player) OR (player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30)']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>[CAM] Übungsgelände</t>",life_fnc_cam,"aga",0,false,false,"",'((vehicle player) != player && commander (vehicle player) == player) OR (player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30)']];
		life_actions = life_actions + [player addAction["<t color='#FF0000'>[CAM] Flughafen</t>",life_fnc_cam,"air",0,false,false,"",'((vehicle player) != player && commander (vehicle player) == player) OR (player distance (getMarkerPos "police_hq_1") < 30) OR  (player distance (getMarkerPos "police_hq_2") < 30) OR (player distance (getMarkerPos "cop_spawn_3") < 30) OR (player distance (getMarkerPos "cop_spawn_5") < 30)']];
		// nano EMP
		life_actions = life_actions + [player addAction["<t color='#FF0000'>EMP Operator Konsole öffnen</t>",life_fnc_openEmpMenu,[],8,false,false,"",'[_this] call life_fnc_isEmpOperator']];
	};
	case civilian:
	{
		//Drop fishing net
		life_actions = [player addAction[localize "STR_pAct_DropFishingNet",life_fnc_dropFishingNet,"",0,false,false,"",'
		(surfaceisWater (getPos vehicle player)) && (vehicle player isKindOf "Ship") && life_carryWeight < life_maxWeight && speed (vehicle player) < 2 && speed (vehicle player) > -1 && !life_net_dropped ']];
		//Rob person
		life_actions = life_actions + [player addAction[localize "STR_pAct_RobPerson",life_fnc_robAction,"",0,false,false,"",'
		!isNull cursorTarget && player distance cursorTarget < 3.5 && isPlayer cursorTarget && animationState cursorTarget == "Incapacitated" && !(cursorTarget getVariable["robbed",FALSE]) ']];
	};
};