-- pebble boot
-- samrpf on GitHub

-- check PIF exists
-- if it does, continue to pebble
-- otherwise, fatal error

local toml = require("toml")

PIFinst = io.open("pebble.toml")
PIFsuccess, PIF = pcall(toml.decode, PIFinst:read())
PIFinst:close()

if PIFsuccess then
	print("pebble :: system")
	print("Username: " .. PIF["Pebble"]["Preferences"])
	os.execute("sleep 3")
	os.execute("lua root/main/pebble.lua")
else
	print("FATAL ERROR")
	print("Something has happened to your Pebble Information File (pebble.toml).")
	print("Make sure that it hasn't been deleted.")
	print("[continue]")
	io.read()
end
