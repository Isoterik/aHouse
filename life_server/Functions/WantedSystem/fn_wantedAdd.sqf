/*
	File: fn_wantedAdd.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Adds or appends a unit to the wanted list.
*/
private["_uid","_type","_index","_data","_crimes","_val","_customBounty","_name"];
_uid = [_this,0,"",[""]] call BIS_fnc_param;
_name = [_this,1,"",[""]] call BIS_fnc_param;
_type = [_this,2,"",[""]] call BIS_fnc_param;
_customBounty = [_this,3,-1,[0]] call BIS_fnc_param;
if(_uid == "" OR _type == "" OR _name == "") exitWith {}; //Bad data passed.

//What is the crime?
switch(_type) do
{
	case "100": {_type = ["Fahrlässige Tötung",10000]};
	case "102": {_type = ["Fahrlässige Tötung Polizist",15000]};
	case "105": {_type = ["Mord",40000]};
	case "110": {_type = ["Polizistenmord",50000]};
	case "200": {_type = ["Raubüberfall",7500]};
	case "205": {_type = ["Tankstellenüberfall",7500]};
	case "207": {_type = ["Banküberfall",15000]};
	case "210": {_type = ["Versuchter Fahrzeugdiebstahl",2500]};
	case "215": {_type = ["Fahrzeugdiebstahl",5000]};
	case "300": {_type = ["Geringer Drogenbesitz",1000]};
	case "301": {_type = ["Drogenbesitz",2000]};
	case "302": {_type = ["Schwerer Drogenbesitz",3000]};
	case "305": {_type = ["Geringer Drogenschmuggel",2500]};
	case "307": {_type = ["Drogenschmuggel",7500]};
	case "310": {_type = ["Drogenhandel",5000]};
	case "315": {_type = ["Schwerer Drogenschmuggel",20000]};
	case "317": {_type = ["Professioneller Drogenschmuggel",40000]};
	case "400": {_type = ["Illegaler Waffenbesitz",5000]};
	case "800": {_type = ["Gefängnisausbruch",25000]};
	case "907": {_type = ["Führerscheinentzug",2000]};
	case "910": {_type = ["Geiselnahme",2500]};
	default {_type = [];};
};

if(count _type == 0) exitWith {}; //Not our information being passed...
//Is there a custom bounty being sent? Set that as the pricing.
if(_customBounty != -1) then {_type set[1,_customBounty];};
//Search the wanted list to make sure they are not on it.
_index = [_uid,life_wanted_list] call TON_fnc_index;

if(_index != -1) then
{
	_data = life_wanted_list select _index;
	_crimes = _data select 2;
	_crimes pushBack (_type select 0);
	_val = _data select 3;
	life_wanted_list set[_index,[_name,_uid,_crimes,(_type select 1) + _val]];
	_query = format["UPDATE wantedlist SET name='%1', crime='%3', val='%4' WHERE playerid='%2'",_name, _uid, _crimes, (_type select 1) + _val];

	waitUntil{sleep (random 0.3); !DB_Async_Active};
	_tickTime = diag_tickTime;
	private["_thread"];
	waitUntil{!DB_Async_Active}; //Wait again to make SURE the caller is ready.
	_thread = [_query,1] call DB_fnc_asyncCall;

	diag_log "------------- Update WantedList Request -------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
	diag_log "------------------------------------------------";

}
	else
{
	life_wanted_list pushBack [_name,_uid,[(_type select 0)],(_type select 1)];
	_query = format["INSERT INTO wantedlist (name, playerid, crime, val) VALUES ('%1', '%2', '%3', '%4')",_name, _uid, [(_type select 0)], (_type select 1)];

	waitUntil{sleep (random 0.3); !DB_Async_Active};
	_tickTime = diag_tickTime;
	private["_thread"];
	waitUntil{!DB_Async_Active}; //Wait again to make SURE the caller is ready.
	_thread = [_query,1] call DB_fnc_asyncCall;

	diag_log "------------- Update WantedList Request -------------";
	diag_log format["QUERY: %1",_query];
	diag_log format["Time to complete: %1 (in seconds)",(diag_tickTime - _tickTime)];
	diag_log "------------------------------------------------";

};