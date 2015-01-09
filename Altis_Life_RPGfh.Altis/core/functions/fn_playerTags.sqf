#include <macro.h>
/*
	File: fn_playerTags.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds the tags above other players heads when close and have visible range.
*/
private["_ui","_units"];
#define iconID 78000
#define scale 0.8

if(visibleMap OR {!alive player} OR {dialog}) exitWith {
	500 cutText["","PLAIN"];
};

_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
if(isNull _ui) then {
	500 cutRsc["Life_HUD_nameTags","PLAIN"];
	_ui = uiNamespace getVariable ["Life_HUD_nameTags",displayNull];
};

_units = nearestObjects[(visiblePosition player),["Man","Land_Pallet_MilBoxes_F","Land_Sink_F"],50];

_units = _units - [player];

{
	private["_text"];
	_idc = _ui displayCtrl (iconID + _forEachIndex);
	if(!(lineIntersects [eyePos player, eyePos _x, player, _x]) && {!isNil {_x getVariable "realname"}}) then {
		_pos = switch(typeOf _x) do {
			case "Land_Pallet_MilBoxes_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 1.5]};
			case "Land_Sink_F": {[visiblePosition _x select 0, visiblePosition _x select 1, (getPosATL _x select 2) + 2]};
			default {[visiblePosition _x select 0, visiblePosition _x select 1, ((_x modelToWorld (_x selectionPosition "head")) select 2)+.5]};
		};
		_sPos = worldToScreen _pos;
		_distance = _pos distance player;
		if(count _sPos > 1 && {_distance < 15}) then {
			_text = switch (true) do {
				case (_x in (units grpPlayer) && playerSide == civilian): {format["<t color='#00FF00'>%1</t>",(_x getVariable ["realname",name _x])];};
				case (!isNil {(_x getVariable "rank")}): {format["<t color='#336699'>%1</t> %2",switch ((_x getVariable "rank")) do {
					case 2: {"Polizeianwärter %1"}; 
					case 3: {"Polizeimeister %1"};
					case 4: {"Polizeikommissar %1"};
					case 5: {"Stellv. Einsatzleiter Polizei %1"};
					case 6: {"Einsatzleiter Polizei %1"};
					case 7: {"Bundespolizei %1"};
					case 8: {"Stellv. Einsatzleiter Bundespolizei %1"};
					case 9: {"Einsatzleiter Bundespolizei %1"};
					case 10: {"SEK Beamter %1"};
					case 11: {"Stellv. Einsatzleiter SEK %1"};
					case 12: {"Einsatzleiter SEK %1"};
					case 13: {"Stellv. Polizeipräsident %1"};
					case 14: {"Polizeipräsident %1"};
					default {"Polizist %1"};
					},_x getVariable ["realname",name _x]]};

				case ((!isNil {_x getVariable "name"} && playerSide == independent)): {format["<t color='#FF0000'>Notarzt %1</t>",_x getVariable ["name","Unknown Player"]]};

				case ((!isNil {_x getVariable "name"} && playerSide == east)): {format["<t color='#FFCC00'>ATAC %1</t>",_x getVariable ["name","Unknown Player"]]};
				default {
					if(!isNil {(group _x) getVariable "gang_name"}) then {
						format["%1<br/><t size='0.8' color='#B6B6B6'>%2</t>",_x getVariable ["realname",name _x],(group _x) getVariable ["gang_name",""]];
					} else {
						_x getVariable ["realname",name _x];
					};
				};
			};
			
			_idc ctrlSetStructuredText parseText _text;
			_idc ctrlSetPosition [_sPos select 0, _sPos select 1, 0.4, 0.65];
			_idc ctrlSetScale scale;
			_idc ctrlSetFade 0;
			_idc ctrlCommit 0;
			_idc ctrlShow true;
		} else {
			_idc ctrlShow false;
		};
	} else {
		_idc ctrlShow false;
	};
} foreach _units;