/*
 * Author: esteldunedain
 *
 * Initializes the name tags module.
 *
 * Arguments:
 * Whatever the module provides.
 *
 * Return Value:
 * None
 */

#include "script_component.hpp"

if !(isServer) exitWith {};

PARAMS_3(_logic,_units,_activated);

if !(_activated) exitWith {};

GVAR(Module) = true;

[_logic, QGVAR(playerNamesViewDistance),  "playerNamesViewDistance"     ] call EFUNC(common,readSettingFromModule);
[_logic, QGVAR(ShowNamesForAI),           "ShowNamesForAI"              ] call EFUNC(common,readSettingFromModule);
[_logic, QGVAR(showVehicleCrewInfo),      "showVehicleCrewInfo"         ] call EFUNC(common,readSettingFromModule);
[_logic, QGVAR(showCursorTagForVehicles), "showCursorTagForVehicles"    ] call EFUNC(common,readSettingFromModule);
[_logic, QGVAR(showPlayerNamesForce),     "showPlayerNamesForce"        ] call EFUNC(common,readSettingFromModule);

if (GVAR(showPlayerNamesForce)) then {
    [_logic, QGVAR(showPlayerNames),      "showPlayerNames"             ] call EFUNC(common,readSettingFromModule);
};

diag_log text "[ACE]: NameTags Module Initialized.";
