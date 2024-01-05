import tkinter as tk
from tkinter import filedialog
import json

'''
Class used to grab user variables via gui
'''
class LEDMatrixConfiguratorInitializer:
  def __init__(self, root):
    self.root = root
    self.root.title("Initializer")
    self.root.resizable(False, False)

    # Labels
    self.column_size_config_label = tk.Label(root, text="Column Size Config")
    self.column_size_config_label.grid(row=0, column=0)

    self.row_size_config_label = tk.Label(root, text="Row Size Config")
    self.row_size_config_label.grid(row=1, column=0)

    # Default column and row sizes
    DEFAULT_COLUMN_SIZE = "64"
    DEFAULT_ROW_SIZE = "64"

    # Size Configuration
    self.column_size_config = tk.StringVar()
    self.column_size_config_entry = tk.Entry(root, width=10, textvariable=self.column_size_config)
    self.column_size_config_entry.insert(0, DEFAULT_COLUMN_SIZE)
    self.column_size_config_entry.grid(row=0, column=1)

    self.row_size_config = tk.StringVar()
    self.row_size_config_entry = tk.Entry(root, width=10, textvariable=self.row_size_config)
    self.row_size_config_entry.insert(0, DEFAULT_ROW_SIZE)
    self.row_size_config_entry.grid(row=1, column=1)

    # Live/Design Configuration
    self.selected_option = tk.StringVar()
    self.selected_option.set("Live")
    self.mode_menu = tk.OptionMenu(root, self.selected_option, "Live", "Design", command=lambda x: self.switch(self.selected_option.get()))
    self.mode_menu.grid(row=2, column=0)

    # Submit Button
    self.submit_button = tk.Button(root, text="Submit", command=root.destroy)
    self.submit_button.grid(row=3, column=0)
  
  def switch(self, option):
    self.selected_option.set(option)

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