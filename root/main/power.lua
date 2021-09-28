-- pebble power
-- samrcode on GitHub and repl.it
os.execute("clear")
print("== power ==")
print("")
print("[1] Shutdown")
print("[2] Restart")
print("[3] Go back")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("lua root/scripts/shutdown.lua")
elseif (opt == 2) then
	os.execute("lua root/scripts/restart.lua")
elseif (opt == 3) then
	os.execute("lua root/main/pebble.lua")
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua root/main/power.lua")
end