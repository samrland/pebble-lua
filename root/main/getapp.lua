-- pebble get
-- samrpf on GitHub
os.execute("clear")
local pebble = require("PKit")
print("[32;7m== get apps ==[0m")

-- get index file
local toml = require("toml")
local indexurl = "https://raw.githubusercontent.com/samrpf/pebble-app/main/appindex.toml"
os.execute("curl " .. indexurl)

-- parse index file
IXinst = io.open("appindex.toml")
AppIXSuccess, AppIX = pcall(toml.decode, IXinst:read())
IXinst:close()

-- check if succeeded
if AppIXSuccess then
	print("Fetched revision" .. AppIX["revnum"]) -- print app index revision number
else
	print("[31mError! Could not fetch app index.[0m")
	print("[36m[continue][0m")
	io.read()
	os.execute("lua root/main/pebble.lua")
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
if pebble.tablecontains(AppIX["AvaiableApps"], appopt) then
	-- if option is an app
	-- curl
	local url = "https://raw.githubusercontent.com/samrcode/pebble-app/main/" .. appopt .. "/"
	os.execute("cd public/apps; curl " .. url .. " -O -s; cd ../..")
	-- say done
	pebble.ui.tipt("Done!")
	pebble.ui.cont()
	io.read("l")
	-- delete app index
	os.execute("rm appindex.toml")
	pebble.home()
else
	-- if option is not an app
	print(pebble.c.red .. "Error: The option you chose is not an app option.")
	print("Type the name of the app you want." .. pebble.resetc)
	pebble.ui.cont()
	io.read("l")
	-- delete app index to get a possible fresh revision
	os.execute("rm appindex.toml")
	os.execute("lua root/main/getapp.lua")
end
