# Test GUI App 2
# by samrcode on GitHub and repl.it

import os
from tkinter import *

root = Tk()

# Labels
label1 = Label(root, text="Test Program 2")
label2 = Label(root, text="Type something: ")

# Entries
entry1 = Entry(root)

# Button Functions
def buttonpressed():
    text = entry1.get()
    label3 = Label(root, text=text)
    label3.pack()

# Buttons
button1 = Button(root, text="Click Me!", command=buttonpressed)

# Graphics
label1.grid(column="0", row="0")
label2.grid(column="0", row="1")
entry1.grid(column="1", row="1")
button1.grid(column="2", row="1")

root.mainloop()
os.system("lua public/scripts/open.lua")
