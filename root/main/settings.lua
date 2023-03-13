-- pebble settings
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()

PKit.ui.title("settings")
print()

PKit.listitem(1, "App selection")
PKit.listitem(2, "Username")
PKit.listiteg(3, "Go back")
print()

PKit.ui.notet("Note that Settings is currently a bit broken. Expect to see a few errors.")

local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/main/settings/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/settings/name.lua")
elseif (opt == 3) then
	PKit.home()
else
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.ui.cont()
	io.read("*l")
	os.execute("lua root/main/settings.lua")
end
