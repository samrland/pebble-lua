-- pebble get
-- samrcode on GitHub and repl.it
os.execute("clear")
print("[32;7m== get apps ==[0m")
print("samrcode/pebble-app on GitHub")
print("Type the name of the app: ")
local file = io.read("*l")
local url = "https://raw.githubusercontent.com/samrcode/pebble-app/main/" .. file
os.execute("cd public/apps; curl " .. url .. " -O; cd ../..")
require "public/apps/apps"
print("[35mDone![0m")
print("[36m[continue][0m")
io.read("*l")
os.execute("lua root/main/pebble.lua")
