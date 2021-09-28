-- pebble original app
-- Calculator
-- by samrcode on GitHub and repl.it
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
	local fin = true
elseif (opt == 2) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x - y
	print("The sum is " .. z .. ".")
	local fin = true
elseif (opt == 3) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x * y
	print("The sum is " .. z .. ".")
	local fin = true
elseif (opt == 4) then
	print("Type a number: ")
	local x = io.read("*n")
	print("Type a number: ")
	local y = io.read("*n")
	local z = x / y
	print("The sum is " .. z .. ".")
	local fin = true
elseif (opt == 5) then
	os.execute("lua public/scripts/open.lua")
	local fin = false
else
	print(opt .. " is not a valid option.")
	local fin = true
end
if (fin) then
	print("[continue]")
	io.read("*l")
	os.execute("lua public/scripts/open.lua")
end