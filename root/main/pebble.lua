-- pebble home
-- samrpf on GitHub
os.execute("clear")

-- show options
print("[32;7m== pebble ==[0m\n")
print("[34m[1] [4mApps[0m")
print("[34m[2] [4mGet Apps[0m")
print("[34m[3] [4mHelp[0m")
print("[34m[4] [4mPreferences[0m")
-- print("[34m[5] [4mLatest[0m")
print("[34m[5] [4mShutdown[0m\n")
-- get input
local opt = io.read("*n")
-- check against options
if (opt == 1) then
	os.execute("lua public/apps/apps.lua")
elseif (opt == 2) then
	os.execute("lua root/main/getapp.lua")
elseif (opt == 3) then
	os.execute("lua root/main/help.lua")
elseif (opt == 4) then
	os.execute("lua root/main/preferences.lua")
--[[
elseif (opt == 5) then
	os.execute("lua root/main/latest.lua")
]]
elseif (opt == 5) then
	os.execute("lua root/main/power.lua")
else
	print("[31m" .. opt .. " is not a valid option.[0m")
	print("[36m[continue][0m")
	io.read("*l")
	os.execute("lua root/main/pebble.lua")
end
