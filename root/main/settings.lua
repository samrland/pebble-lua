-- pebble settings
-- samrcode on GitHub and repl.it
os.execute("clear")
print("== settings ==")
print("")
print("[1] App selection")
print("[2] Name")
print("[3] Go back")
print("Note that settings is currently a bit broken. Expect to see a few errors.")
print("")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/main/settings/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/settings/name.lua")
elseif (opt == 3) then
	os.execute("lua root/main/pebble.lua")
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua root/main/settings.lua")
end
