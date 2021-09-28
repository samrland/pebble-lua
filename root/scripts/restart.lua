function sleep(n)
  os.execute("sleep " .. tonumber(n))
end
print("Restarting... ")
sleep(7)
os.execute("clear")
sleep(3)
os.execute("lua root/main/pebble.lua")