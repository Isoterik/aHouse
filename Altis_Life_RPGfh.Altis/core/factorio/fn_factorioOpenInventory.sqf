/*
	File: fn_openInventory.sqf
	Author: Bryan "Tonic" Boardwine
	Edited by: preller @ freudenhaus <codepreller@hirnstrom.net>
	
	Description:
	Starts the initialization of factorio inventory menu.
*/
if(vehicle player != civilian) exitwith {hint format["Es koennen nur Zivilisten Fahrzeuge produzieren"];};
if(!createDialog "FactorioInv") exitWith {"Failed Creating Dialog";}; //Couldn't create the menu?

call FHC_fnc_factorioInventoryMenu;