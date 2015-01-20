/*
	fn_giveMoneyDelay.sqf

	Isoterik for Freudenhaus.li
	
	just a little delay to fit with the money surveillance script to keep innocent ppl save 
*/

hint "Wo ist denn nur, wo habe ich denn...";

[] spawn {uisleep 5; [] call life_fnc_giveMoney;};