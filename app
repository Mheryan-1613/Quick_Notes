#!/bin/python3
from tkinter import * 
from tkinter import filedialog

def save_info():
    #first_name_info = firstname.get()
	my_text_info = mytext.get("1.0",END)  
	
	file = filedialog.askopenfilename(initialdir="/home/robotics", title="Submit text", filetypes=(("text files", "*.txt"), ))
	file = open(file, "a")
	#file.write("Your Title : " + first_name_info)
	file.write(my_text_info)
	file.write("\n")
	file.close()


def open_info():
	text_file = filedialog.askopenfilename(initialdir="/home/robotics", title="Open text file", filetypes=(("Text Files", "*.*"), ))
	text_file = open(text_file, "r")
	stuff = text_file.read()
	mytext.insert(END, stuff)
	text_file.close()
	
def add_info():
	add_file = filedialog.asksaveasfilename(initialdir="/home/robotics", title="Create new file", filetypes=(("text file", "*.txt"), ))
	add_file = open(add_file, "a")
	add_file.close()


app = Tk()

app.geometry("520x500")
app.title("Quick Notes(1.0)")
app.resizable(False, False)


heading = Label(text="Quick Notes", bg="orange", fg="black",font="Helvetica 14 bold", width="500", height="3")

heading.pack()

#firstname_text = Label(text="Title", font="Helvetica 12 bold")
#firstname_text.place(x=15, y=70)

#firstname = StringVar()

#first_name_entry = Entry(textvariable=firstname, width="30")
#first_name_entry.place(x=15, y=100)

mytext = Text(app, width=60, height=20)
mytext.place(x=15, y=130)
#my_text.pack()

button = Button(app,text="Submit",font="Helvetica 12 ",command=save_info,width=7,height=2)
button.place(x=407,y=70)

open_note = Button(app,text="Open",width=2,height=2, command=open_info)
open_note.place(x=66,y=70)

add_note = Button(app,text="Add",width=2,height=2, command=add_info)
add_note.place(x=16,y=70)

mainloop()
