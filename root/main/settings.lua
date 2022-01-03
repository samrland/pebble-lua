-- pebble settings
-- samrcode on GitHub and repl.it
os.execute("clear")
print("[32;7m== settings ==[0m\n")
print("[34m[1] [4mApp selection[0m")
print("[34m[2] [4mName[0m")
print("[31m[3] [4mGo back[0m")
print("[33mNote that settings is currently a bit broken. Expect to see a few errors.[0m")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/main/settings/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/settings/name.lua")
elseif (opt == 3) then
	os.execute("lua root/main/pebble.lua")
else
	print("[31m" .. opt .. " is not a valid option.[0m")
	print("[36m[continue][0m")
	io.read("*l")
	os.execute("lua root/main/settings.lua")
end
