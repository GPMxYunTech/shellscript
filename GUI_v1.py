import tkinter as tk
from tkinter import *
from tkinter.constants import CENTER
import subprocess
import rospy
class ScriptExecutor():
    def __init__(self):
        self.init_param()
        self.window = tk.Tk()
        self.window.title("Script Executor")
        self.window.geometry('1024x800') 
        # self.entry()
        self.update_window()
        self.button()
        self.window.mainloop()
        
    def init_param(self):
        self.test = 0.0
    
    def execute_script_1(self):
        subprocess.call(['./3DLiDARProject.sh'])

    def execute_script_2(self):
        subprocess.call(['./VisualProject.sh'])

    def execute_script_3(self):
        subprocess.call(['script3.sh'])

    
    def update_window(self):
        self.display()
        self.window.after(1000, self.update_window)
        
    # def entry(self):
        
    def button(self):
        self.button1 = tk.Button(self.window, text="3D-LiDAR Navigation + Visual Servoing", font=("Times New Romen", 24, "bold"), command=self.execute_script_1)
        self.button1.pack()

        self.button2 = tk.Button(self.window, text="3D-Vision Navigation + Visual Servoing", font=("Times New Romen", 24, "bold"), command=self.execute_script_2)
        self.button2.pack()

        self.button3 = tk.Button(self.window, text="Anti-Rollover Monitoring", font=("Times New Romen", 24, "bold"), command=self.execute_script_3)
        self.button3.pack()
        
    def display(self):
        self.title = tk.Label(text="GPM Autonomous Forklift", font=("Times New Romen", 36, "bold"), padx=5, pady=5, fg="black")
        self.title.pack()



if __name__ == '__main__':
    rospy.init_node('ScriptExecutor')
    ScriptExecutor = ScriptExecutor()