-- official pebble getapp service
-- copyright (c) 2023 samrland. see LICENSE for more information.

Toml = require("toml")
PKit = require("PKit")

svgetapp = {}

function svgetapp.getindex(repositoryurl)
    local indexurl = repositoryurl .. "/appindex.toml"
    os.execute("curl " .. indexurl .. " -O -s")

    AppIXinst = io.open("appindex.toml")
    AppIXSuccess, AppIX = pcall(Toml.decode, AppIXinst:read("*a"))
    AppIXinst:close()

    return {
        success = AppIXSuccess,
        index = AppIX
    }
end

function svgetapp.getappinfo(repositoryurl, name)
    local appix = svgetapp.getindex(repositoryurl).index
    local appinfo = appix.AvailableApps[name]
    if appinfo ~= nil then
        return {
            success = true,
            value = appinfo
        }
    else
        return {
            success = false,
            value = {}
        }
    end
end

function svgetapp.addentrytopif(repositoryurl, name)
    PIFinst = io.open("pebble.toml", "r")
	_, PIF = pcall(Toml.decode, PIFinst:read("*a"))
    PIFinst:close()

	PIF["Pebble"]["Apps"]["apps"][(#PIF["Pebble"]["Apps"]["apps"]) + 1] = name

	_, TomlPIF = pcall(Toml.encode, PIF)
	TomlPIF = [[
# Pebble Information File
# DO NOT DELETE. THIS FILE CONTAINS IMPORTANT INFORMATION.
]]..TomlPIF..'\n'

    PIFinst = io.open("pebble.toml", "w")
	PIFinst:write(TomlPIF)
    PIFinst:close()
end

function svgetapp.removeentryfrompif(repositoryurl, name)
    PIFInst = io.open("pebble.toml", "r+")
    _, PIF = pcall(Toml.decode, PIFInst:read("*a"))

    table.remove(PIF["Pebble"]["Apps"]["apps"], PKit.indexOf(PIF["Pebble"]["Apps"]["apps"], name))

    _, TomlPIF = pcall(Toml.encode, PIF)
    TomlPIF = [[
# Pebble Information File
# DO NOT DELETE. THIS FILE CONTAINS IMPORTANT INFORMATION.
]] .. TomlPIF .. '\n'

    PIFinst:write(TomlPIF)

    PIFinst:close()
end

function svgetapp.installapp(repositoryurl, name)
    local outputdir = "public/apps/apps/" .. name
    os.execute("mkdir " .. outputdir)

    os.execute("cd " .. outputdir .. "; curl " .. '"' .. repositoryurl .. "/" .. name .. '/init.toml"' .. " -s -O")
    SpecFileInst = io.open(outputdir .. "/init.toml")
    _, SpecFile = pcall(Toml.decode, SpecFileInst:read("*a"))
    SpecFileInst:close()

    if SpecFile["specver"] == 2 then
		for _, requirement in ipairs(SpecFile["Spec"].requirements) do
			os.execute("cd " .. outputdir .. "; curl " .. '"https://raw.githubusercontent.com/samrland/pebble-app/main/' .. name .. "/" .. requirement .. '" -s -O')
		end

		svgetapp.addentrytopif(repositoryurl, name)

        return 0
    else
        return 1
    end
end

function svgetapp.uninstallapp(repositoryurl, name)
    local appdir = "public/apps/apps/" .. name
    if PKit.getos() == "msdos" then
        os.execute("rmdir " .. appdir)
    else
        os.execute("rm -r " .. appdir)
    end
    svgetapp.removeentryfrompif(repositoryurl, name)
end

function svgetapp.endscript(repositoryurl, name)
    os.execute("rm appindex.toml")
end

return svgetapp
