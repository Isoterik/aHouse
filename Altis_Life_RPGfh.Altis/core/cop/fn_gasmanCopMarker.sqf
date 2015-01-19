private["_Pos"]


 if (playerSide != west) exitWith {};
	_Pos = _this select 0;
	createMarkerlocal ["Marker200", _Pos];
	"Marker200" setMarkerColorlocal "ColorBlack";
	"Marker200" setMarkerTextlocal "! Tankstelle wird ausgeraubt !";
	"Marker200" setMarkerTypelocal "mil_warning";
	};
	default {};
};