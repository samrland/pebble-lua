-- pebble home
-- samrcode on GitHub and repl.it
os.execute("clear")
print("== pebble ==")
print("")
print("[1] Apps")
print("[2] Help")
print("[3] Settings")
print("[4] Shutdown")
print("")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua public/apps/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/help.lua")
elseif (opt == 3) then
	os.execute("lua root/main/settings.lua")
elseif (opt == 4) then
	os.execute("lua root/main/power.lua")
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua root/main/pebble.lua")
end
