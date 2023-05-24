import tkinter as tk
from tkinter import *
from tkinter.constants import CENTER
import subprocess

def execute_script_1():
    subprocess.call(['./3DLiDARProject.sh'])

def execute_script_2():
    subprocess.call(['./VisualProject.sh'])

def execute_script_3():
    subprocess.call(['script3.sh'])

# Create the main window
window = tk.Tk()
window.geometry('1024x800')
window.title("Script Executor")

# Create the buttons
label = Label(text="GPM Autonomous Forklift", font=("Times New Romen", 36, "bold"), padx=5, pady=5, fg="black")
label.pack()

label1 = Label(text="Subproject 1: 3D-LiDAR-Based SLAM and Navigation and Its Porting on Single-Steering-Wheel AGV and Fork Manipulator", font=("Times New Romen", 10), padx=5, pady=5, fg="black")
label1.pack()
label2 = Label(text="Subproject 2: 3D-Vision-Based SLAM and Navigation and Its Porting on Single-Steering-Wheel AGV and Fork Manipulator", font=("Times New Romen", 10), padx=5, pady=5, fg="black")
label2.pack()
label3 = Label(text="Subproject 3: LiDAR-Based and Pose-Based Visual Servoing and Its Porting on Single-Steering-Wheel AGV and Fork Manipulator", font=("Times New Romen", 10), padx=5, pady=5, fg="black")
label3.pack()
label4 = Label(text="Subproject 4: Hybrid-Fuzzy-Based Heavy-Duty Anti-Rollover Stability Control", font=("Times New Romen", 10), padx=5, pady=5, fg="black")
label4.pack()

button1 = tk.Button(window, text="3D-LiDAR Navigation + Visual Servoing", font=("Times New Romen", 24, "bold"), command=execute_script_1)
button1.pack()

button2 = tk.Button(window, text="3D-Vision Navigation + Visual Servoing", font=("Times New Romen", 24, "bold"), command=execute_script_2)
button2.pack()

button3 = tk.Button(window, text="Subproject4", font=("Times New Romen", 24, "bold"), command=execute_script_3)
button3.pack()

# Start the Tkinter event loop
window.mainloop()
