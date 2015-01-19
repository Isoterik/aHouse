private["_Pos","_marker"]

[["Eine Tankstelle wird ausgeraubt!","Stilleralarm",1],"TON_fnc_clientMessage",true,false] spawn life_fnc_MP;

_Pos = position player;
_marker = switch (playerSide) do {
	case west: {
	createMarker ["Marker200", _Pos];
	"Marker200" setMarkerColor "ColorBlack";
	"Marker200" setMarkerText "! Tankstelle wird ausgeraubt !";
	"Marker200" setMarkerType "mil_warning";
	};
	default {};
};