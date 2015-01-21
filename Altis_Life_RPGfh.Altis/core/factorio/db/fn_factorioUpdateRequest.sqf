/*
	author: preller @ freudenhaus <codepreller@hirnstrom.net>

	sends an updaterequest to the server. saving the factorio_inv
*/
private["_packet","_array","_factorioItem","_itemCount","_factorio_inv"];
_packet = [getPlayerUID player,playerSide];

_factorio_inv = [];

{
	_factorioItem = [_x,1] call life_fnc_varHandle;
	_itemCount = player getVariable _x;
	diag_log format["client: updaterequest item count: %1",_itemCount];

	_factorio_inv pushBack [_factorioItem,_itemCount];

} forEach factorio_inv_items;

diag_log format["client: updaterequest: %1",_factorio_inv];

_packet pushBack _factorio_inv;
diag_log format["client: updaterequest: %1",_packet];

[_packet,"life_fnc_factorioUpdateRequest",false,false] spawn life_fnc_MP;