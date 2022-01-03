-- pebble power
-- samrcode on GitHub and repl.it
os.execute("clear")
print("[32;7m== power ==[0m\n")
print("[34m[1] [4mShutdown[0m")
print("[34m[2] [4mRestart[0m")
print("[31m[3] [4mGo back[0m\n")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/scripts/shutdown.lua")
elseif (opt == 2) then
	os.execute("lua root/scripts/restart.lua")
elseif (opt == 3) then
	os.execute("lua root/main/pebble.lua")
else
	print("[31m" .. opt .. " is not a valid option.[0m")
	print("[36m[continue][0m")
	io.read("*l")
	os.execute("lua root/main/power.lua")
end
