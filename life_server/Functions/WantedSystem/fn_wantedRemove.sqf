/*
	File: fn_wantedRemove.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Removes a person from the wanted list.
*/
private["_uid","_index"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
if(_uid == "") exitWith {}; //Bad data

_index = [_uid,life_wanted_list] call TON_fnc_index;
if(_index == -1) exitWith {};
life_wanted_list set[_index,-1];
life_wanted_list = life_wanted_list - [-1];

_query = format["DELETE FROM wantedlist WHERE playerid='%1'",_uid];
waitUntil{sleep (random 0.3); !DB_Async_Active};
_tickTime = diag_tickTime;
private["_thread"];
waitUntil{!DB_Async_Active}; //Wait again to make SURE the caller is ready.
_thread = [_query,false] call DB_fnc_asyncCall;

diag_log "------------- Remove WantedList Request -------------";
diag_log format["QUERY: %1",_query];
diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
diag_log "------------------------------------------------";
