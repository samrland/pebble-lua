-- pebble original app
-- Spinner
-- by samrcode on GitHub and repl.it
function sleep(n)
  os.execute("sleep " .. tonumber(n))
end
print("Choose the amount of spins: ")
local spins = io.read("*n")
os.execute("clear")
local i = 0
while (i < spins) do
	-- state 1
	print("|")
	sleep(0.3)
	os.execute("clear")
	-- state 2
	print("/")
	sleep(0.3)
	os.execute("clear")
	-- state 3
	print("-")
	sleep(0.3)
	os.execute("clear")
	-- state 4
	print("\\")
	sleep(0.3)
	os.execute("clear")
	i = i + 1
end
os.execute("lua public/scripts/open.lua")