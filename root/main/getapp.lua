-- pebble get
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require("PKit")
local getappservice = require("root.services.getappservice")

PKit.clear()
PKit.ui.title("get apps")
print()

-- get index file
Toml = require("toml")
local repositoryurl = "https://raw.githubusercontent.com/samrland/pebble-app/main"

AppIXTable = getappservice.getindex(repositoryurl)
AppIX = AppIXTable.index

-- check if succeeded
if AppIXTable.success then
	print("Fetched revision " .. AppIX["revision"]) -- print app index revision number
else
	PKit.printf(PKit.fg.red, "[X] Error! Could not fetch app index. Are you offline?")
	PKit.ui.cont()
	io.read()
	PKit.home()
end

-- print all the highlighted apps
print("-=- highlights -=-")
for _, name in ipairs(AppIX["highlighted"]) do
	print(name)
end

-- get option
print("Type the name of the app you want to install (or '0' to exit): ")
local name = io.read("*l")

if name == "0" then
	PKit.home()
end

local appinfotable = getappservice.getappinfo(repositoryurl, name)

-- check option selected is an available application
if appinfotable.success then
	-- if option is an app

	local appinfo = appinfotable.value

	-- confirm installation
	PKit.printf(PKit.fg.yellow, "[?] Are you sure you want to download the package ", '')
	PKit.printf(PKit.stl.bold .. PKit.fg.yellow, name, '')
	PKit.printf(PKit.fg.yellow, "?")

	print("Description: " .. appinfo.description)
	print("Author Info: " .. appinfo.authorinfo)

	io.write("[Y/n]: ")
	local choose = io.read(1)
	if choose == 'n' then
		goto finish
	end -- otherwise, continue with installation

	local result = getappservice.installapp(repositoryurl, name)
	if result == 0 then
		PKit.ui.tipt("Done!")
		goto finish
	else
		PKit.printf(PKit.fg.red, "[X] This app does not support your version of pebble. Make sure you have the latest version of pebble. If you do, check with the developer of the application.")
		goto finish
	end
else
	-- if option is not an app
	print(PKit.fg.red .. "[X] The option you chose is not an app option.")
	print("Type the name of the app you want." .. PKit.resetc)
	PKit.ui.cont()
	io.read("l")
	-- delete app index to get a possible fresh revision
	os.execute("rm appindex.toml")
	os.execute("lua root/main/getapp.lua")
end

::finish::
PKit.ui.cont()
io.read("l")
getappservice.endscript(repositoryurl, name)
PKit.home()
