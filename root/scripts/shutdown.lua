local pebble = require("PKit")

print("Shutting down... ")
pebble.sleep(5)
os.execute("clear")
print("It is now safe to turn off your computer.")

pebble.sleep(5)
pebble.ui.cont()
io.read("l")
os.execute("lua root/main/home.lua")
