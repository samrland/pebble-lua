-- pebble get
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")

PKit.clear()
PKit.ui.title("get apps")
print()

-- get index file
local toml = require("toml")
local indexurl = "https://raw.githubusercontent.com/samrland/pebble-app/main/appindex.toml"
os.execute("curl " .. indexurl)

-- parse index file
IXinst = io.open("appindex.toml")
AppIXSuccess, AppIX = pcall(toml.decode, IXinst:read())
IXinst:close()

-- check if succeeded
if AppIXSuccess then
	print("Fetched revision" .. AppIX["revnum"]) -- print app index revision number
else
	PKit.printf(PKit.fg.red, "Error! Could not fetch app index. Are you offline?")
	PKit.cont()
	io.read()
	PKit.home()
end

-- print all the highlighted apps
print("-=- highlights -=-")
for _, name in ipairs(AppIX["hlp"]) do
	print(name)
end

-- get option
print("Type the name of the app you want to install: ")
local appopt = io.read("*l")

-- check option selected is an available application
if PKit.tablecontains(AppIX["AvaiableApps"], appopt) then
	-- if option is an app
	-- curl
	local url = "https://raw.githubusercontent.com/samrland/pebble-app/main/" .. appopt .. "/"
	os.execute("cd public/apps; curl " .. url .. " -O -s; cd ../..")
	-- say done
	PKit.ui.tipt("Done!")
	PKit.ui.cont()
	io.read("l")
	-- delete app index
	os.execute("rm appindex.toml")
	PKit.home()
else
	-- if option is not an app
	print(PKit.c.red .. "Error: The option you chose is not an app option.")
	print("Type the name of the app you want." .. PKit.resetc)
	PKit.ui.cont()
	io.read("l")
	-- delete app index to get a possible fresh revision
	os.execute("rm appindex.toml")
	os.execute("lua root/main/getapp.lua")
end
