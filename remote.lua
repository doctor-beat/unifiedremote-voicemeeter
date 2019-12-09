local script = libs.script;


-- Documentation
-- http://www.unifiedremote.com/api

-- Script Library
-- http://www.unifiedremote.com/api/libs/script


--@help Command 1
actions.restart = function ()
	script.default("Voicemeeter.exe –R");
end


--@help Command 2
actions.command2 = function ()
	script.default("...");
end


--@help Command 3
actions.command3 = function ()
	script.default("...");
end

