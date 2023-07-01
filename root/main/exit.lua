-- pebble exit menu
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()

PKit.ui.title("exit")
io.write("\n")

io.write("Are you sure?\n\n")

PKit.listitem(1, "Go back")
PKit.listitem(2, "Continue")

local opt = io.read("*n")
if (opt ~= 2) then
    PKit.home()
end
