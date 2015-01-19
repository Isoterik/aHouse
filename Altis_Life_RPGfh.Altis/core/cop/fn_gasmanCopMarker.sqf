/*
* author: iso 
* edited by preller
*
* fn_gansmanCopMarker.sqf
*
* displays a marker 
*
*/


private["_Pos"];

if (playerSide != west) exitWith {};

_Pos = _this select 0;
_marker = createMarkerlocal ["Marker200", _Pos];
"Marker200" setMarkerColorlocal "ColorBlack";
"Marker200" setMarkerTextlocal "! Tankstelle wird ausgeraubt !";
"Marker200" setMarkerTypelocal "mil_warning";

[_marker] spawn { sleep 180; deleteMarkerlocal (_this select 0)};