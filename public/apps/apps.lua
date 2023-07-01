-- pebble apps
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()
PKit.ui.title("apps")
io.write("\n")

-- parse PIF
Toml = require("toml")
PIFinst = io.open("pebble.toml")
_, PIF = pcall(Toml.decode, PIFinst:read("*a"))
PIFinst:close()

-- print all options
for i, name in ipairs(PIF["Pebble"]["Apps"]["apps"]) do
	PKit.listitem(i, name)
end
-- Show exit option
PKit.listiteg(#PIF["Pebble"]["Apps"]["apps"] + 1, "Go back")

-- get input
local opt = io.read("*n")

-- check if option selected is in range
if opt <= #PIF["Pebble"]["Apps"]["apps"] and opt > 0 then
	-- clear console
	-- os.execute("clear")
	-- check for option against app list
	for i, name in ipairs(PIF["Pebble"]["Apps"]["apps"]) do
		if PIF["Pebble"]["Apps"]["apps"][i] == PIF["Pebble"]["Apps"]["apps"][opt] then
			InitFileInst = io.open("public/apps/apps/" .. name .. "/init.toml")
			_, SpecFile = pcall(Toml.decode, InitFileInst:read("*a"))
			InitFileInst:close()

			if SpecFile.specver == 2 then
				os.execute("lua public/apps/apps/" .. name .. "/" .. SpecFile["Spec"].init)
			else
				PKit.printf(PKit.fg.red, "[X] This app does not support your version of pebble. Make sure you have the latest version. If you do, check with the developer of the application.")
			end
		end
	end
elseif opt == (#PIF["Pebble"]["Apps"]["apps"] + 1) then
	-- exit app menu
	PKit.home()
else
	-- bad option
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.ui.cont()
	io.read("l")
	os.execute("lua public/apps/apps.lua")
end

