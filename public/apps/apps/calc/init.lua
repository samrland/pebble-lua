-- pebble original app
-- Calculator
-- copyright (c) 2023 samrland. see LICENSE for more information.

local PKit = require("PKit")

print("Calculator")
print("Choose an operator: ")
print("[1] Addition")
print("[2] Subtraction")
print("[3] Multiplication")
print("[4] Division")
print("[5] Exit")

local opt = io.read("*n")

if (opt == 1) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x + y
	print("The sum is " .. z .. ".")
	Fin = true
elseif (opt == 2) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x - y
	print("The sum is " .. z .. ".")
	Fin = true
elseif (opt == 3) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x * y
	print("The sum is " .. z .. ".")
	Fin = true
elseif (opt == 4) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x / y
	print("The sum is " .. z .. ".")
	Fin = true
elseif (opt == 5) then
	os.execute("lua public/scripts/open.lua")
	Fin = false
else
	print(opt .. " is not a valid option.")
	Fin = true
end

if (Fin) then
	PKit.cont()
	io.read("*l")
	PKit.home()
end
