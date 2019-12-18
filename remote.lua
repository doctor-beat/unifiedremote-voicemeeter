local script = libs.script;
local keyboard = libs.keyboard;


-- Documentation
-- http://www.unifiedremote.com/api

-- Script Library
-- http://www.unifiedremote.com/api/libs/script


--@help Command 1
actions.restart = function ()
	os.start("%programfiles(x86)%\\VB\\Voicemeeter\\voicemeeter.exe", "-R");
end

actions.restart2 = function ()
	keyboard.stroke("alt", "F5");
end

--@help Command 2
actions.exit = function ()
	keyboard.stroke("alt", "F4");
end

actions.alttab  = function ()
	keyboard.stroke("alt", "shift", "tab");
end

actions.enter  = function ()
	keyboard.stroke("enter");
end

actions.space  = function ()
	keyboard.stroke("space");
end

actions.escape  = function ()
	keyboard.stroke("escape");
end

actions.taskmgr  = function ()
	keyboard.stroke("ctrl", "shift", "esc");
end

-- Native Windows Stuff
local ffi = require("ffi");
ffi.cdef[[
bool LockWorkStation();
int ExitWindowsEx(int uFlags, int dwReason);
bool SetSuspendState(bool hibernate, bool forceCritical, bool disableWakeEvent);
]]
local PowrProf = ffi.load("PowrProf");

--@help Put system in sleep state
actions.sleep = function ()
	PowrProf.SetSuspendState(false, true, false);
end

--@help Put system in hibernate state
actions.hibernate = function ()
	PowrProf.SetSuspendState(true, true, false);
end


