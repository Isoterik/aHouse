/*
	File: fn_giveMoney.sqf
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Gives the selected amount of money to the selected player.
*/
private["_unit","_amount"];
_amount = ctrlText 2018;
ctrlShow[2001,false];
if((lbCurSel 2022) == -1) exitWith {hint "Niemand war ausgewählt!";ctrlShow[2001,true];};
_unit = lbData [2022,lbCurSel 2022];
_unit = call compile format["%1",_unit];
if(isNil "_unit") exitWith {ctrlShow[2001,true];};
if(_unit == player) exitWith {ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};

//A series of checks *ugh*
if(!life_use_atm) exitWith {hint "Du hast vor kurzem die Zentralbank ausgeraubt! Du kannst jetzt noch kein Geld weitergeben.";ctrlShow[2001,true];};
if(!([_amount] call TON_fnc_isnumber)) exitWith {hint "Du hast keine tatsächliche Zahl eingegben.";ctrlShow[2001,true];};
if(parseNumber(_amount) <= 0) exitWith {hint "Du musst eine Summe eingeben, die du weiter geben möchtest.";ctrlShow[2001,true];};
if(parseNumber(_amount) > 999999) exitWith {hint "Du kannst nicht mehr als 999999 weiter geben";ctrlShow[2001,true];};
if(parseNumber(_amount) > life_cash) exitWith {hint "Du hast nicht soviel Geld!";ctrlShow[2001,true];};
if(isNull _unit) exitWith {ctrlShow[2001,true];};
if(isNil "_unit") exitWith {ctrlShow[2001,true]; hint "Der ausgewählte Spieler befindet sich nicht in Reichweite";};
hint format["Du hast $%1 %2 gegeben",[(parseNumber(_amount))] call life_fnc_numberText,_unit getVariable["realname",name _unit]];
life_cash = life_cash - (parseNumber(_amount));
[0] call SOCK_fnc_updatePartial;
[[_unit,_amount,player],"life_fnc_receiveMoney",_unit,false] spawn life_fnc_MP;
[] call life_fnc_p_updateMenu;

ctrlShow[2001,true];