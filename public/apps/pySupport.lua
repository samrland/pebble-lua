-- pebble original app
-- Python Support for pebble
-- by samrcode on GitHub and repl.it

-- Variables
local py1 = "test"
local py2 = ""
local py3 = ""
local py4 = ""
local py5 = ""
local py6 = ""
local py7 = ""
local py8 = ""

-- Code
print("Welcome to pySupport!")
print("This program will let you run Python programs on pebble.")
print("")
print("Choose an app: ")
print("[1] " .. py1)
print("[2] " .. py2)
print("[3] " .. py3)
print("[4] " .. py4)
print("[5] " .. py5)
print("[6] " .. py6)
print("[7] " .. py7)
print("[8] " .. py8)
print("[9] Go back")
local opt = io.read("*n")
if (opt == 1) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py1 .. ".py")
elseif (opt == 2) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py2 .. ".py")
elseif (opt == 3) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py3 .. ".py")
elseif (opt == 4) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py4 .. ".py")
elseif (opt == 5) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py5 .. ".py")
elseif (opt == 6) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py6 .. ".py")
elseif (opt == 7) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py7 .. ".py")
elseif (opt == 8) then
	os.execute("clear")
	os.execute("python public/apps/pyapps/" .. py8 .. ".py")
else
	print(opt .. " is not a valid option.")
	print("[continue]")
	io.read("*l")
	os.execute("lua public/apps/apps.lua")
end