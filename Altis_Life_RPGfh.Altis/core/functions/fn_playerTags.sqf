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
					case west: 
					{
						switch(_x getVariable["coplevel",0])do
						{
							case 1 : {_name = format["Polizeianwärter %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "0" >> "texture");};//Test
							case 2 : {_name = format["Polizeimeister %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "1" >> "texture");};//Test
							case 3 : {_name = format["Polizeikommissar %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "2" >> "texture");};
							case 4 : {_name = format["Stellv. Einsatzleiter Polizei %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "3" >> "texture");};
							case 5 : {_name = format["Einsatzleiter Polizei %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "3" >> "texture");};
							case 6 : {_name = format["Bundespolizei %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "4" >> "texture");};
							case 7 : {_name = format["Stellv. Einsatzleiter Bundespolizei %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "5" >> "texture");};
							case 8 : {_name = format["Einsatzleiter Bundespolizei %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "5" >> "texture");};
							case 9 : {_name = format["SEK Beamter %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "5" >> "texture");};
							case 10 : {_name = format["Stellv. Einsatzleiter SEK %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "6" >> "texture");};
							case 11 : {_name = format["Einsatzleiter SEK %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "6" >> "texture");};
							case 12 : {_name = format["Stellv. Polizeipräsident %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "7" >> "texture");};
							case 13 : {_name = format["Polizeipräsident %1", _x getVariable["realname",name _x]];_icon = getText (configfile >> "CfgRanks" >> "7" >> "texture");};
							default {_name = format["Polizist %1", _x getVariable["realname",name _x]]; _icon = getText (configfile >> "CfgRanks" >> "0" >> "texture");};
						};
					
						_position = visiblePosition _x;
						_position set[2,(getPosATL _x select 2) + 2.2];
						drawIcon3D [_icon,[1,1,1,1],_position,0,0,0,_name,0,0.04];
					};
					case independent:
					{
						_name = format["Notarzt %1", _x getVariable["realname",name _x]];
						_position = visiblePosition _x;
						_position set[2,(getPosATL _x select 2) + 2.2];
						drawIcon3D ["",[1,1,1,1],_position,0,0,0,_name,0,0.04];
					};
					case east:
					{
						_name = format["ATAC %1", _x getVariable["realname",name _x]];
						_position = visiblePosition _x;
						_position set[2,(getPosATL _x select 2) + 2.2];
						drawIcon3D ["",[1,1,1,1],_position,0,0,0,_name,0,0.04];
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
} foreach _units;