local script = libs.script;


-- Documentation
-- http://www.unifiedremote.com/api

-- Script Library
-- http://www.unifiedremote.com/api/libs/script


--@help Command 1
actions.restart = function ()
	script.default("%programfiles(x86)%\\VB\\Voicemeeter\\voicemeeter.exe", " -R");
end


--@help Command 2
actions.exit = function ()
		keyboard.stroke("alt", "F4");
end


--@help Command 3
actions.command3 = function ()
	script.default("...");
end

