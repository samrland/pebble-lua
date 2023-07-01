-- pebble boot
-- copyright (c) 2023 samrland. see LICENSE for more information.

-- check PIF exists
-- if it does, continue to pebble
-- otherwise, fatal error

Toml = require("toml")

PIFinst = io.open("pebble.toml")
PIFsuccess, PIF = pcall(Toml.decode, PIFinst:read("*a"))
PIFinst:close()

if PIFsuccess then
	print("pebble :: system")
	print("Username: " .. PIF["Pebble"]["Preferences"].username)
	-- os.execute("sleep 3")
	os.execute("lua " .. PIF["Pebble"]["SysFiles"].home)
else
	print("FATAL ERROR")
	print("Something has happened to your Pebble Information File (pebble.toml).")
	print("Make sure that it hasn't been deleted.")
	print("[continue]")
	io.read()
end
