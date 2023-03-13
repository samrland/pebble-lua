-- pebble home
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require('PKit')

PKit.clear()

-- show options
PKit.ui.title("pebble")
print()

PKit.listitem(1, "Apps")
PKit.listitem(2, "Get Apps")
PKit.listitem(3, "Help")
PKit.listitem(4, "Preferences")
-- PKit.listitem(5, "Latest")
PKit.listitem(5, "Shutdown")
print()

-- get input
local opt = io.read("*n")
-- check against options
if (opt == 1) then
	os.execute("lua public/apps/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/getapp.lua")
elseif (opt == 3) then
	os.execute("lua root/main/help.lua")
elseif (opt == 4) then
	os.execute("lua root/main/preferences.lua")
--[[
elseif (opt == 5) then
	os.execute("lua root/main/latest.lua")
]]
elseif (opt == 5) then
	os.execute("lua root/main/power.lua")
else
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.ui.cont()
	io.read("*l")
	PKit.home()
end
