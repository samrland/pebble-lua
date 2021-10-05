-- pebble settings
-- samrcode on GitHub and repl.it
os.execute("clear")
print("== settings")
print("")
print("[1] App Selection")
print("[2] Name")
print("")
local opt = io.read("*n)
if (opt == 1) then
	os.execute("lua root/main/settings/apps.lua")
elseif (opt == 2) then
	-- some more code
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua root/main/settings.lua")
end
