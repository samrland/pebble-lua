-- pebble latest
-- samrcode on GitHub and repl.it
os.execute("clear")
print("[32;7m== latest ==[0m\n")
print("> v1.2.0: The Store Update!")
print("v1.2, aka The Store Update, is an update that adds a way to get apps without downloading.")
print("Using the power of curl and raw GitHub user content, you can now get apps from the pebble-app repo!")
print("You can find the repository at samrcode/pebble-app on GitHub.")
print("[33mNote that you still have to add the variables in apps.lua.")
print("[36m[continue][0m")
io.read("*l")
os.execute("lua root/main/pebble.lua")
