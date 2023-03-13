-- pebble power
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()

PKit.ui.title("power")
print()

PKit.listitem(1, "Shutdown")
PKit.listitem(2, "Restart")
PKit.listiteg(3, "Go back")

local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/scripts/shutdown.lua")
elseif (opt == 2) then
	os.execute("lua root/scripts/restart.lua")
elseif (opt == 3) then
	PKit.home()
else
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.cont()
	io.read("*l")
	os.execute("lua root/main/power.lua")
end
