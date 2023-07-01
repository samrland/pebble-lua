-- pebble home
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require('PKit')

PKit.clear()

PKit.ui.title("pebble")
print()

PKit.listitem(1, "Apps")
PKit.listitem(2, "Get Apps")
PKit.listitem(3, "Time")
PKit.listitem(4, "Help")
PKit.listitem(5, "Settings")
-- PKit.listitem(6, "Latest")
PKit.listitem(6, "Shutdown")
print()

local opt = io.read("*n")

if (opt == 1) then
	os.execute("lua public/apps/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/getapp.lua")
elseif (opt == 3) then
	print(os.date())
	PKit.ui.cont()
	io.read("*l")
	PKit.home()
elseif (opt == 4) then
	os.execute("lua root/main/help.lua")
elseif (opt == 5) then
	os.execute("lua root/main/settings.lua")
--[[
elseif (opt == 6) then
	os.execute("lua root/main/latest.lua")
]]
elseif (opt == 6) then
	os.execute("lua root/main/power.lua")
else
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.ui.cont()
	io.read("*l")
	PKit.home()
end
