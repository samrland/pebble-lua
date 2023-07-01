local pebble = require("PebbleFrame")

print("Restarting... ")
pebble.sleep(7)

os.execute("clear")
pebble.sleep(3)

os.execute("lua root/main/home.lua")
