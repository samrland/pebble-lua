-- pebble apps
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()
PKit.ui.title("apps")

-- parse PIF
local toml = require("toml")
PIFinst = io.open("pebble.toml")
_, PIF = pcall(toml.decode, PIFinst:read())
PIFinst:close()

-- print all options
for i, name in ipairs(PIF["Pebble"]["Apps"]["apps"]) do
	-- print("[34m[" .. i .. "] [4m" .. name .. "[0m")
	PKit.listitem(i, name)
end
-- Show exit option
-- print("[31m[" .. (#PIF["Pebble"]["Apps"]["apps"] + 1) .. "] [4mGo back[0m\n")
PKit.listiteg(#PIF["Pebble"]["Apps"]["apps"] + 1, "Go back")

-- get input
local opt = io.read("*n")

-- check if option selected is in range
if opt <= #PIF["Pebble"]["Apps"]["apps"] and opt > 0 then
	-- clear console
	os.execute("clear")
	-- check for option against app list
	for i, name in ipairs(PIF["Pebble"]["Apps"]["apps"]) do
		if PIF["Pebble"]["Apps"]["apps"][i] == opt then
			os.execute("lua public/apps/" .. name .. "/init.lua")
		end
	end
elseif opt == (#PIF["Pebble"]["Apps"]["apps"] + 1) then
	-- exit app menu
	os.execute("lua root/main/pebble.lua")
else
	-- bad option
	PKit.printf(PKit.fg.red, opt .. " is not a valid option.")
	PKit.cont()
	io.read("*l")
	os.execute("lua public/apps/apps.lua")
end

-- pebble Module
local pebble = {}

-- open home
function pebble.home()
	PKit.home()
end

-- open specific page
function pebble.page(page)
	PKit.clear()
	if (page == "home") then
		PKit.home()
	elseif (page == "help") then
		os.execute("lua root/main/help.lua")
	elseif (page == "settings") then
		os.execute("lua root/main/settings.lua")
	elseif (page == "power") then
		os.execute("lua root/main/power.lua")
	elseif (page == "apps") then
		os.execute("lua public/apps/apps.lua")
	elseif (page == "getapp") then
		os.execute("lua root/main/getapp.lua")
	elseif (page == "latest") then
		os.execute("lua root/main/latest.lua")
	else
		PKit.printf(PKit.fg.red, "Oops!")
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
		print("[9] " .. ent9)
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
		PKit.printf(PKit.fg.red, "Oops!")
	end
end

return pebble
