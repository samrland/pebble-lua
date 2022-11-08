-- pebble help
-- samrpf on GitHub
local pebble = require("PebbleFrame")

os.execute("clear")
pebble.ui.title("help")
pebble.ui.tipt("TIP: Remember, if you ever see the phrase [0m[36m[continue][0m[35m in pebble, press the Enter key.")
pebble.ui.cont()
io.read("l")
os.execute("clear")
--[[
-- parse root/documents/help.toml
local toml = require("toml")

HLPFinst = io.open("pebble.toml")
HLPFsuccess, HLPF = pcall(toml.decode, HLPFinst:read())
HLPFinst:close()

-- check if success
if not HLPFsuccess then
    -- if not, show error message
    print(pebble.c.red .. "Sorry, we can't show help right now.")
    print("Something might have happened to the file at root/documents/help.toml." .. pebble.resetc)
    pebble.ui.cont()
    io.read("l")
    pebble.home()
end

-- start loop over pages
for _, page in pairs(HLPF["Pages"]) do
    pebble.ui.title("help")

    -- loop over lines
    for _, line in ipairs(page) do
        -- check if line starts with @ code
        if line[1] == "@" then
            if line[2] == "-" then
                -- note
            elseif line[2] == "*" then
                -- tip
            elseif line[2] == "!" then
                -- warning
            end
        else
            print(line)
        end
    end

    pebble.ui.cont()
    io.read("l")
    os.execute("clear")
end
]]

print("[32;7m== help ==[0m")
print("To change your app list, you will have to edit 'apps.lua', which is the file in public/apps. At the very top, you will see 19 variables, app1 ~ app19. You can change the content of these variables to change which app they open.")
print("[35mTIP: Remember that most variables in Lua start with 'local'.[0m")
print("[33mNOTE: You have to make the name the same as the app file.[0m")
print("[36m[continue][0m")
io.read("*l")
os.execute("clear")
print("[32;7m== help ==[0m")
print("Want to develop apps for pebble? You should know by now that all apps in pebble are built in Lua.")
print("All you need to do is require the pebble module and add: ")
print(" pebble.home()")
print("at the end. This will reopen the pebble home page.")
print("If you would like to add an app to the pebble-app repo, contact us in the Discussion tab on the repo.")
print("[33mNOTE: We have already added support for Python. Soon, we might add support for other programming languages. Stay tuned![0m")
print("[36m[continue][0m")
io.read("*l")
os.execute("clear")
print("[32;7m== help ==[0m")
print("Recently, we have added support for Python using the pySupport app.")
print("Using this app, you can get support for your Python apps by just dragging and dropping the apps into the 'pyapps' folder.")
print("Super simple!")
print("[36m[continue][0m")
io.read("*l")
os.execute("lua root/main/pebble.lua")
