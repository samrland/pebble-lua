-- pebble latest
-- copyright (c) 2023 samrland. see LICENSE for more information.
local PKit = require('PKit')
PKit.clear()
PKit.title("latest")
print("> v1.2.0: The Store Update!")
print("v1.2, aka The Store Update, is an update that adds a way to get apps without downloading.")
print("Using the power of curl and raw GitHub user content, you can now get apps from the pebble-app repo!")
print("You can find the repository at samrcode/pebble-app on GitHub.")
print("[33mNote that you still have to add the variables in apps.lua.[0m")
PKit.cont()
io.read("*l")
PKit.home()
