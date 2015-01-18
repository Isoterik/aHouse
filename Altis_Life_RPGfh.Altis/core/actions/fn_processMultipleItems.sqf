/* author: preller @ freudenhaus <codepreller@hirnstrom.net> for Freudenhaus Altis Life
*
* processMulitpleItems.sqf
* processes any number of input items into one output item. progress bar is from bryan "tonic" boardwines fn_processAction.sqf.
*
* Please feel free to use and modify it, but remember to credit the author.
*
* PARAMS:
* _this select 3: String - processor type
*
*/

private ["_inputItems", "_outputItem", "_inputItemsNeeded", "_outputItemAmount", "_itemsInv", "_itemsNeeded", "_inputItemsDeleted", "_ui", "_progress", "_pgText", "_cP", "_productionAmount", "_possibleProductionAmount","_processor","_formatedProcessingInfo","_hasLicense","_licenseNeeded","_processingCost","_type","_productionInfo","_processingSpeed","_x","_outputCosts"];

if (isServer) exitWith {};
if (life_is_processing) exitWith {hint "Der Kollege ist beschäftigt. Bitte nicht stressen!";};	
life_is_processing = true;

//parameter
_processor = [_this,0,ObjNull,[ObjNull]] call BIS_fnc_param;
_type = [_this,3,"",[""]] call BIS_fnc_param;

//Error check. taken from tonic.
if(isNull _processor OR _type == "" OR (player distance _processor > 5)) exitWith {life_is_processing = false;};
if(vehicle player != player) exitwith {hint format["Du darfst nicht im Fahrzeug sitzen"]; life_is_processing = false;};

//define your production line here
_productionInfo = switch (_type) do
{
	//legal
	case "oil": {[["oilu"],[1],"oilp",1,"oil",38];};
	case "diamond": {[["diamond"],[1],"diamondr",1,"diamond",35];};  
	case "gold": {[["goldore"],[1],"goldbar",1,"gold",33];}; 
	case "silver": {[["silverore"],[1],"silverbar",1,"silver",30];};
	case "copper": {[["copperore"],[1],"copper_r",1,"copper",23];};  
	case "iron": {[["ironore"],[1],"iron_r",1,"iron",25];}; 
	case "sand": {[["sand"],[1],"glass",1,"sand",28];}; 
	case "salt": {[["salt"],[1],"salt_r",1,"salt",30];}; 
	case "cement": {[["rock"],[1],"cement",1,"cement",25];};
	case "wood": {[["woodu"],[1],"woodp",1,"wood",30];};
	case "frogeat": {[["frog"],[1],"frogeat",1,"frogeat",15];};
	case "applewine": {[["apple"],[1],"applewine",1,"applewine",12];};
	case "wodka": {[["potato"],[1],"wodka",1,"wodka",13];};
	case "peachbooze": {[["peach"],[1],"peachbooze",1,"peachbooze",12];};
	case "pearbooze": {[["pear"],[1],"pearbooze",1,"pearbooze",13];};
	case "wine": {[["grape"],[1],"wine",1,"wine",13];};
	case "honey": {[["honeyu"],[1],"honeyp",1,"honey",10];};
	case "milk": {[["milku"],[1],"milkp",1,"milk",10];};
	case "tabacco": {[["tabaccou"],[1],"tabaccop",1,"tabacco",20];};
	case "tyre": {[["rubber"],[1],"tyre",1,"tyre",27];};
	case "rubber": {[["caoutchouc"],[1],"rubber",1,"rubber",15];};
	case "leather": {[["cowskin"],[1],"leather",1,"rubber",24];};
	case "seats": {[["leather"],[1],"seats",1,"seats",40];};
	case "metalparts": {[["iron_r"],[1],"metalparts",1,"metalparts",25];};
	case "body": {[["metalparts"],[1],"body",1,"body",54];};
	case "flour": {[["cereals"],[1],"flourp",1,"flour",12];};
	case "medmarijuana": {[["cannabis"],[1],"medmarijuana",1,"medmarijuana",18];};       
	case "beer": {[["hops","malt"],[1,1],"beer",1,"beer",14];};
	case "trinket": {[["copper_r","silverbar","goldbar","diamondr"],[1,1,1,1],"trinket",1,"trinket",250];};
	case "cable": {[["rubber","copper_r"],[4,1],"cable",1,"cable",53];};

	//illegal
	case "froglsd": {[["frog"],[1],"froglsd",1,"froglsd",30];};
	case "marijuana": {[["cannabis"],[1],"marijuana",1,"marijuana",38];};
	case "cocaine": {[["cocaine"],[1],"cocainep",1,"cocaine",33];};
	case "heroin": {[["heroinu"],[1],"heroinp",1,"heroin",30];};
	case "meth": {[["pseudo","methu"],[1,2],"methp",3,"meth",45];};
	case "croco": {[["eyedrops","heroinp"],[1,2],"croco",3,"croco",38];};
	case "cocaines": {[["cocainep","flourp"],[1,2],"cocaineps",3,"cocaine",45];};	
	
	//Stationary Jobs
	case "cheese": {[["milks"],[1],"cheesep",1,"cheese",0];};
	case "butter": {[["milks"],[1],"butterp",1,"butter",0];};
	case "cigar": {[["tabaccos"],[1],"cigar",1,"cigar",0];};
	case "beef": {[["beef","herps"],[1,1],"sausage",2,"butcher",0];};
	case "buns": {[["milks","eggs","flours"],[1,1,1],"buns",3,"baker",0];};
	case "cheesesticks": {[["milks","eggs","flours","cheeses"],[1,1,1,1],"cheesesticks",4,"baker",0];};
	
	default {[]};
};

//initialize
_inputItems = _productionInfo select 0;
_inputItemsNeeded = _productionInfo select 1;
_outputItem = _productionInfo select 2;
_outputItemAmount = _productionInfo select 3;
_licenseNeeded = _productionInfo select 4;
_processingCost = _productionInfo select 5;

if(_type in [""]) then {
	_hasLicense = true;
} else {
	_hasLicense = missionNamespace getVariable (([_licenseNeeded,0] call life_fnc_licenseType) select 0);
};

_inputItemsDeleted = true;
_productionAmount = 9999; //infinite

//set processing speed
if (_hasLicense) then {
	_processingSpeed = 0.3;
} else {
	_processingSpeed = 0.9;
};

if ((count _inputItems) != (count _inputItemsNeeded)) exitWith 
	{diag_log format["ERROR: ProcessMultipleItems falsch initialisiert: Anzahl InputItems ungleich Anzahl InputItem Kosten"]; life_is_processing = false;};
	
//check if the player has enough items and determine how much he can produce
for [{_x=0},{_x<(count _inputItems)},{_x=_x+1}] do {
	//get current amount player has
	_itemsInv = missionNamespace getVariable ([(_inputItems select _x),0] call life_fnc_varHandle);
	_itemsNeeded = _inputItemsNeeded select _x;

	//calculate possible amount of processing cycles
	_possibleProductionAmount = floor (_itemsInv / _itemsNeeded);
	if (_possibleProductionAmount < _productionAmount) then {
		_productionAmount = _possibleProductionAmount;
	};
};

//exit if the player doenst have the required items for one process
if (_productionAmount < 1) exitWith {
	hint "Du hast nicht genug Materialien dabei";
	life_is_processing = false;
};

//check for cash if the player doesnt have the license and calculate possible max production
if (!_hasLicense && _processingCost != 0) then {
	//determine max production by money
	if ((floor (life_cash / _processingCost)) < _productionAmount) then {
		_productionAmount = floor (life_cash / _processingCost);
	};
};

//exit if the player doenst have the required money for one process
if (_productionAmount < 1) exitWith {
	hint format["Du hast nicht genug Geld dabei, dir fehlen $%1", [(_processingCost - life_cash)]call life_fnc_numberText];
	life_is_processing = false;
};

//Setup our progress bar. taken from tonic.
disableSerialization;
5 cutRsc ["life_progress","PLAIN"];
_ui = uiNameSpace getVariable "life_progress";
_progress = _ui displayCtrl 38201;
_pgText = _ui displayCtrl 38202;
_pgText ctrlSetText format["%3 (%1%2)...","%","Bei der Herstellung."];
_progress progressSetPosition 0.01;
_cP = 0.01;	

//progress bar. taken from tonic.
while{true} do
{
	sleep _processingSpeed;
	_cP = _cP + 0.01;
	_progress progressSetPosition _cP;
	_pgText ctrlSetText format["%3 (%1%2)...",round(_cP * 100),"%","Bei der Herstellung."];
	if(_cP >= 1) exitWith {};
	if(player distance _processor > 10) exitWith {};
};

if(player distance _processor > 10) exitWith {hint "Du hast dich zu weit entfernt! Bleib dichter dran"; 5 cutText ["","PLAIN"]; life_is_processing = false;};

//substract items 
for [{_x=0},{_x<(count _inputItems)},{_x=_x+1}] do {
	//reduce 
	if (!([false,(_inputItems select _x),((_inputItemsNeeded select _x) * _productionAmount)] call life_fnc_handleInv)) then {
		_inputItemsDeleted = false;
	}
};

//add new items if players items where deleted
if (_inputItemsDeleted) then {
	if (!_hasLicense) then {
		life_cash = life_cash - (_processingCost * _productionAmount);
	};

	//add the new item
	if (!([true,_outputItem,(_outputItemAmount * _productionAmount)] call life_fnc_handleInv)) then {
		hint format["Ups. Beim produzieren ist was schiefgelaufen. Irgendein Admin ist Schuld! Ich nicht. Gruß preller"];
		diag_log format["ERROR: fn_processMultipleItems - new item(s) are not added"];
	};

	//format output
	_formatedProcessingInfo = "Du hast";
	for [{_x=0},{_x<((count _inputItems) - 1)},{_x=_x+1}] do {
		_item_name = _inputItems select _x;
		_item_name = [([_item_name,0] call life_fnc_varHandle)] call life_fnc_varToStr;

		_formatedProcessingInfo = _formatedProcessingInfo + format[" %1 %2,",((_inputItemsNeeded select _x) * _productionAmount),_item_name];
	};

	_item_name = _inputItems select ((count _inputItems) - 1);
	_item_name = [([_item_name,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	_item_name_new = [([_outputItem,0] call life_fnc_varHandle)] call life_fnc_varToStr;
	
	if(!_hasLicense)then
	{
		_outputCosts = _processingCost * _productionAmount;
	} else {
		_outputCosts = 0;
	};
	
	_formatedProcessingInfo = _formatedProcessingInfo + format[" und %1 %2 zu %4 %3 verarbeitet für $%5",((_inputItemsNeeded select ((count _inputItemsNeeded) - 1)) * _productionAmount),_item_name,_item_name_new,(_outputItemAmount * _productionAmount),[_outputCosts]call life_fnc_numberText];

	5 cutText ["","PLAIN"];
	titleText[format["%1",_formatedProcessingInfo],"PLAIN"];
};

life_is_processing = false;