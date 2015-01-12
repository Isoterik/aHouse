/*
	Author: Bryan "Tonic" Boardwine
	
	Description:
	Turns on and displays a security cam like feed via PiP to the laptop display.

_laptop = _this select 0;
_mode = _this select 3;
*/

/*
if(!isPiPEnabled) exitWith {hint localize "STR_Cop_EnablePiP";};
if(isNil "life_fed_scam") then {
	life_fed_scam = "camera" camCreate [0,0,0];
	life_fed_scam camSetFov 0.5;
	life_fed_scam camCommit 0;
	"rendertarget0" setPiPEffect [0];
	life_fed_scam cameraEffect ["INTERNAL", "BACK", "rendertarget0"];
	_laptop setObjectTexture [0,"#(argb,256,256,1)r2t(rendertarget0,1.0)"];
};


switch (_mode) do {
	case "side": {
		life_fed_scam camSetPos [17472,13074.8,18.7332];
		life_fed_scam camSetTarget [17190,14200.1,0.0014143];
		life_fed_scam camCommit 0;
	};
	
	case "vault": {

		life_fed_scam camSetPos [17409.3,13245.4,2.9000];
		life_fed_scam camSetTarget [17390.3,13247.7,0.0014143];
		life_fed_scam camCommit 0;
	};
	
	case "front": {
		life_fed_scam camSetPos [17439,13151.7,12.5198];
		life_fed_scam camSetTarget [17534.3,13200.4,0.0014143];
		life_fed_scam camCommit 0;
	};
	
	case "back": {
		life_fed_scam camSetPos [17322.1,13186.5,18.3836];
		life_fed_scam camSetTarget [17501.1,13119,0.0014143];
		life_fed_scam camCommit 0;
	};

	case "market": {
		life_fed_scam camSetPos [3625.9,13143.8,14.1014];
		life_fed_scam camSetTarget [3643.41,13112.6,0.0014143];
		life_fed_scam camCommit 0;
	};

	case "jail": {
		life_fed_scam camSetPos [5540,15028.1,28.4028];
		life_fed_scam camSetTarget [5455.37,15000,0.0014143];
		life_fed_scam camCommit 0;
	};
	
	case "off" :{
		life_fed_scam cameraEffect ["terminate", "back"];
		camDestroy life_fed_scam;
		_laptop setObjectTexture [0,""];
		life_fed_scam = nil;
	};
};
*/


//added
cam_on = false;

switch (_this select 3) do
{

	case "side":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [17472,13074.8,18.7332];
		cam_cam camSetTarget [17190,14200.1,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};
	};


	case "vault":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [17409.3,13245.4,2.9000];
		cam_cam camSetTarget [17390.3,13247.7,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};
	};

	case "front":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [17439,13151.7,12.5198];
		cam_cam camSetTarget [17534.3,13200.4,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};

	};

	case "back":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [17322.1,13186.5,18.3836];
		cam_cam camSetTarget [17501.1,13119,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};
	};

	case "market":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [3625.9,13143.8,14.1014];
		cam_cam camSetTarget [3643.41,13112.6,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};
	};

	case "jail":
	{
		cam_cam = "CAMERA" camCreate getPos player;
		showCinemaBorder false;
		cam_cam cameraEffect ["Internal", "Back"];
		cam_cam camSetPos [5540,15028.1,28.4028];
		cam_cam camSetTarget [5455.37,15000,0.0014143];
		cam_cam camSetFOV 1;
		cam_cam camSetFocus [0, 0];
		cam_cam camCommit 0;
		cam_on = true;
		waitUntil {!cam_on};
	};
};

cam_cam cameraEffect ["TERMINATE","BACK"];
camDestroy cam_cam;