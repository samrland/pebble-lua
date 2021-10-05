# Test GUI App
# by samrcode on GitHub and repl.it

import os
from tkinter import *

root = Tk()

# Labels
label1 = Label(root, text="WOW!")
label2 = Label(root, text="Test Program")
label3 = Label(root, text="Clicked!")

# Button Functions
def buttonpressed():
    label3.pack()

# Buttons
button1 = Button(root, text="Click Me!", command=buttonpressed)

# Graphics
label1.pack()
label2.pack()
button1.pack()

root.mainloop()
os.system("lua public/scripts/open.lua")
