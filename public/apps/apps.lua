-- pebble apps
-- samrcode on GitHub and repl.it

-- Change these variables as your apps change
local app1 = "calc"
local app2 = "time"
local app3 = "spinner"
local app4 = "pySupport"
local app5 = ""
local app6 = ""
local app7 = ""
local app8 = ""
local app9 = ""
local app10 = ""
local app11 = ""
local app12 = ""
local app13 = ""
local app14 = ""
local app14 = ""
local app15 = ""
local app16 = ""
local app17 = ""
local app18 = ""
local app19 = ""

-- Code
os.execute("clear")
print("== apps ==")
print("")
print("Choose an app: ")
print("[1] " .. app1)
print("[2] " .. app2)
print("[3] " .. app3)
print("[4] " .. app4)
print("[5] " .. app5)
print("[6] " .. app6)
print("[7] " .. app7)
print("[8] " .. app8)
print("[9] " .. app9)
print("[10] " .. app10)
print("[11] " .. app11)
print("[12] " .. app12)
print("[13] " .. app13)
print("[14] " .. app14)
print("[15] " .. app15)
print("[16] " .. app16)
print("[17] " .. app17)
print("[18] " .. app18)
print("[19] " .. app19)
print("[20] Go back")
print("")
-- get input, then clear console and run app
local opt = io.read("*n")
if (opt == 1) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app1 .. ".lua")
elseif (opt == 2) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app2 .. ".lua")
elseif (opt == 3) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app3 .. ".lua")
elseif (opt == 4) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app4 .. ".lua")
elseif (opt == 5) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app5 .. ".lua")
elseif (opt == 6) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app6 .. ".lua")
elseif (opt == 7) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app7 .. ".lua")
elseif (opt == 8) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app8 .. ".lua")
elseif (opt == 9) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app9 .. ".lua")
elseif (opt == 10) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app10 .. ".lua")
elseif (opt == 11) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app11 .. ".lua")
elseif (opt == 12) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app12 .. ".lua")
elseif (opt == 13) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app13 .. ".lua")
elseif (opt == 14) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app14 .. ".lua")
elseif (opt == 15) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app15 .. ".lua")
elseif (opt == 16) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app16 .. ".lua")
elseif (opt == 17) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app17 .. ".lua")
elseif (opt == 18) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app18 .. ".lua")
elseif (opt == 19) then
	os.execute("clear")
	os.execute("lua public/apps/" .. app19 .. ".lua")
elseif (opt == 20) then
	os.execute("lua root/main/pebble.lua")
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua public/apps/apps.lua")
end

-- pebble Module
local pebble = {}

-- open home
function pebble.home()
	os.execute("clear")
	os.execute("lua root/main/pebble.lua")
end

-- open specific page
function pebble.page(page)
	os.execute("clear")
	if (page == "home") then
		os.execute("lua root/main/pebble.lua")
	elseif (page == "help") then
		os.execute("lua root/main/help.lua")
	elseif (page == "settings") then
		os.execute("lua root/main/settings.lua")
	elseif (page == "power") then
		os.execute("lua root/main/power.lua")
	elseif (page == "apps") then
		os.execute("lua public/apps/apps.lua")
	else
		print("Oops!")
	end
end

-- make pebble list
function pebble.list(num, ent1, ent2, ent3, ent4, ent5, ent6, ent7, ent8, ent9, ent10)
	if (num == 1) then
		print("[1] " .. ent1)
	elseif (num == 2) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
	elseif (num == 3) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
	elseif (num == 4) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
	elseif (num == 5) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
	elseif (num == 6) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
		print("[6] " .. ent6)
	elseif (num == 7) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
		print("[6] " .. ent6)
		print("[7] " .. ent7)
	elseif (num == 8) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
		print("[6] " .. ent6)
		print("[7] " .. ent7)
		print("[8] " .. ent8)
	elseif (num == 9) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
		print("[6] " .. ent6)
		print("[7] " .. ent7)
		print("[8] " .. ent8)
	elseif (num == 10) then
		print("[1] " .. ent1)
		print("[2] " .. ent2)
		print("[3] " .. ent3)
		print("[4] " .. ent4)
		print("[5] " .. ent5)
		print("[6] " .. ent6)
		print("[7] " .. ent7)
		print("[8] " .. ent8)
		print("[9] " .. ent9)
		print("[10] " .. ent10)
	else
		print("Oops!")
	end
end

return pebble
