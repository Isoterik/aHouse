/*
	fn_bankTransferDelay.sqf

	Isoterik for Freudenhaus.li
	
	just a little delay to fit with the money surveillance script to keep innocent ppl save 
*/

hint "Bearbeite Auftrag...";

[] spawn {uisleep 5; [] call life_fnc_bankTransfer;};
