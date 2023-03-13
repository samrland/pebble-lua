-- pebble original app
-- Python Support for pebble
-- copyright (c) 2023 samrland. see LICENSE for more information.

-- Variables
local py1 = "test"
local py2 = "testgui"
local py3 = "testgui2"
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
print("[34m[1] [4m" .. py1 .. "[0m")
print("[34m[2] [4m" .. py2 .. "[0m")
print("[34m[3] [4m" .. py3 .. "[0m")
print("[34m[4] [4m" .. py4 .. "[0m")
print("[34m[5] [4m" .. py5 .. "[0m")
print("[34m[6] [4m" .. py6 .. "[0m")
print("[34m[7] [4m" .. py7 .. "[0m")
print("[34m[8] [4m" .. py8 .. "[0m")
print("[31m[9] [4mGo back[0m")
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
	print("[31m" .. opt .. " is not a valid option.[0m")
	print("[36m[continue][0m")
	io.read("*l")
	os.execute("lua public/apps/apps.lua")
end