-- pebble settings/name
print("===")
local unamef = io.open("username.txt", "r")
local currentuname = unamef:read("l")
print("Your username is currently: " .. currentuname)
print("Would you like to change it?")
print("[1] Yes")
print("[2] No")
unamef:close()
local opt = io.read("*n")
if (opt == 1) then
	local unamefwrite = io.open("username.txt", "w+")
	print("===")
	print("Please write your new username: ")
	local newuname = io.read("*l")
	unamefwrite:write(newuname)
	unamefwrite:close()
	os.execute("lua root/main/pebble.lua")
elseif (opt == 2) then
	os.execute("lua root/main/pebble.lua")
else
	print(opt .. " is not a valid option.")
	print("continue]")
	io.read("*l")
	os.execute("lua root/main/pebble.lua")
end
