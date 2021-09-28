-- pebble original app
-- Time
-- Calculator
local t = os.time()
print("The time as of opening this app is " .. t)
print("[continue]")
io.read("*l")
os.execute("lua public/scripts/open.lua")