import tkinter as tk
from tkinter import messagebox
import subprocess

def run_script(script):
    subprocess.call(['bash', f'../tools/{script}'])
    messagebox.showinfo("Done", f"{script} executed successfully.")

root = tk.Tk()
root.title("RaspTurbo Optimizer")
root.geometry("300x280")

buttons = [
    ("Apply Overclock", "overclock.sh"),
    ("Enable ZRAM", "zram-setup.sh"),
    ("Remove Bloat", "remove-bloat.sh"),
    ("Optimize Network", "optimize-network.sh"),
    ("Tune Kernel", "tweak-sysctl.sh")
]

for label, script in buttons:
    tk.Button(root, text=label, command=lambda s=script: run_script(s), width=28).pack(pady=6)

tk.Button(root, text="Exit", command=root.quit, bg="red", fg="white").pack(pady=12)

root.mainloop()
