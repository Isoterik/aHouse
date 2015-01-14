/*
	File: fn_adacLights.sqf
        Author: mindstorm, modified by Adanteh, modified by Isoterik for Freudenhaus
	Link: http://forums.bistudio.com/showthread.php?157474-Offroad-Police-sirens-lights-and-underglow
	
	Description:
	Adds the light effect to cop vehicles, specifically the offroad.
*/
Private ["_vehicle","_lightleft","_lightright","_leftOrange"];
_vehicle = _this select 0;
	
if(isNil "_vehicle" OR isNull _vehicle OR !(_vehicle getVariable "lights")) exitWith {};

//Settings for the left light on top
_lightleft = "#lightpoint" createVehicle getpos _vehicle;
_lightleft setLightColor [0.90, 0.36, 0];
_lightleft setLightBrightness 0;  
//_lightleft setLightAmbient [0.90, 0.36, 0];
_lightleft setLightAttenuation [0.2, 0, 40000, 0];
_lightleft setLightFlareSize 0.38;
_lightleft setLightFlareMaxDistance 1600;
_lightleft setLightUseFlare true;

//Settings for the right light on top
_lightright = "#lightpoint" createVehicle getpos _vehicle;
_lightright setLightColor [0.90, 0.36, 0];
_lightright setLightBrightness 0;  
//_lightright setLightAmbient [0.90, 0.36, 0];
_lightright setLightAttenuation [0.2, 0, 40000, 0];
_lightright setLightFlareSize 0.38;
_lightright setLightFlareMaxDistance 1600;
_lightright setLightUseFlare true;

switch (typeOf _vehicle) do
{
	case "C_Offroad_01_F":
	{
                _lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
				_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	
	
    default 
	{ 
				_lightleft lightAttachObject [_vehicle, [-0.37, 0.0, 0.56]];
				_lightright lightAttachObject [_vehicle, [0.37, 0.0, 0.56]];
	};
	 
};
  

//ARE YOU ALL HAPPY?!?!?!?!?!?!?!?!?%#?@WGD?TGD?BN?ZDHBFD?GA
_lightleft setLightDayLight true;
_lightright setLightDayLight true;

_leftOrange = true;
while{ (alive _vehicle)} do  
{  
	if(!(_vehicle getVariable "lights")) exitWith {};
        if(_leftOrange) then  
	{  
                _leftOrange = false;
				_lightright setLightBrightness 0;
				_lightleft setLightBrightness 8;  
				sleep 0.2;
	}  
		else  
	{  
                _leftOrange = true;
				_lightleft setLightBrightness 0;
				_lightright setLightBrightness 8;  
				sleep 0.2;
	};  
};  
 
deleteVehicle _lightleft;
deleteVehicle _lightright;