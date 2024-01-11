import tkinter as tk
from tkinter import filedialog
import LEDMatrixConfiguratorInitializer
import json


'''
This program's purpose is to communicate with the dejarik fpga
program via uart. 

Modes (more information can be found in gui_plan.txt)
  - Live
  - Design


'''

class LEDMatrixConfigurator:
  def __init__(self, root, columns, rows):
    self.root = root
    self.root.title("LED Matrix Configurator")
    self.root.resizable(False, False)

if __name__ == "__main__":
  root = tk.Tk()
  app = LEDMatrixConfiguratorInitializer(root)
  root.mainloop()
  print(app.row_size_config.get())
  print(app.column_size_config.get())
  print(app.selected_option.get())