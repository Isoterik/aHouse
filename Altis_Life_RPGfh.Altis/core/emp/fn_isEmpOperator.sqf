/*

© 2014 nano2K - written for we-are-friendly.de
*/
_player = _this select 0;
_slot = assignedVehicleRole player;
_vehicle = vehicle player;
_result = false;

if((_vehicle != player) && (playerSide == west)) then {
    _vehicleType = typeof _vehicle;

    if(((_vehicleType == "B_Heli_Light_01_F") or (_vehicleType == "I_Heli_light_03_unarmed_F") or (_vehicleType == "O_Heli_Light_02_unarmed_F") or (_vehicleType == "B_Heli_Transport_01_F")) && (_vehicle getVariable ["nano_emp_enabled", false])) then {
        if(_slot select 0 == "Turret") then {
            if(_slot select 1 select 0 == 0) then {
                _result = true;
            };
        }
    };
};
_result;