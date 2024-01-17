# maybe this should be a serial.py, and main simply calls it but who knows

# Root? Imports
import tkinter as tk
import json

# GUI Imports
from LEDMatrixConfiguratorInitializer import LEDMatrixConfiguratorInitializer
from LEDMatrixConfigurator import LEDMatrixConfigurator

'''
This program's purpose is to communicate with the dejarik fpga
program via uart and handle the GUIs

Serial Communication must happen each time a change in the GUI
Use queues
'''

if __name__ == "__main__":
  root = tk.Tk()
  app = LEDMatrixConfiguratorInitializer(root)
  root.mainloop()
  root = tk.Tk()
  # TODO, change these to use the LEDMatrixConfiguratorInitializer values
  # eg, app.gui_column_size_config.get()
  print(app.gui_column_size_config.get())
  app = LEDMatrixConfigurator(root, gui_columns=32, gui_rows=32, display_columns=32, display_rows=32)
  root.mainloop()