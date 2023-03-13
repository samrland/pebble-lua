-- pebble original app
-- Spinner
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

print("Choose the amount of spins: ")
local spins = io.read("*n")

PKit.clear()

local i = 0
while (i < spins) do
	-- state 1
	print("|")
	PKit.sleep(0.3)
	PKit.clear()
	-- state 2
	print("/")
	PKit.sleep(0.3)
	PKit.clear()
	-- state 3
	print("-")
	PKit.sleep(0.3)
	PKit.clear()
	-- state 4
	print("\\")
	PKit.sleep(0.3)
	PKit.clear()
	i = i + 1
end

PKit.home()
