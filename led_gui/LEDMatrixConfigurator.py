import tkinter as tk

# Useful Variables
MAX_MATRIX_COLUMNS = 64
MAX_MATRIX_ROWS = 64

'''
GUI used to load, save, and configure pixel configuraitions for a various displays.
I would like this to work with 32x32, 32x64, 64x32, 64x64.
I can only test this with 64x64 for nows so :).

Features 
  - Configurable sizing (both matrix and gui)
  - Color Selection
  - Load/Save Full
  - Load/Save Partial (todo) 
  - Toggle/Select Color
  - Configurable Color Selection (todo) 
  - Get Color

General note on naming : gui : gui duh, display : physical matrix
  
Inputs :
  - root : GUI root tk object
  - columns/rows : used for gui configuration
    
Returns : 
  - none
'''

class LEDMatrixConfigurator:
  def __init__(self, root, gui_columns=MAX_MATRIX_COLUMNS, gui_rows=MAX_MATRIX_COLUMNS
               , display_columns=MAX_MATRIX_COLUMNS, display_rows=MAX_MATRIX_ROWS):
    # Initialization
    self.root = root
    self.root.title("LED Matrix Configurator")
    self.root.resizable(False, False) # avoid messing up matrix

    # Matrix Color Configuration Initialization
    self.gui_columns_size = gui_columns
    self.gui_rows_size = gui_rows
    
    # '#000000' is black, generates 64x64 black array for default view
    # idk why I did it like this seems complicated, (probably GPT)
    self.full_matrix = [['#000000' for _ in range(display_columns)] for _ in range(display_rows)] 
    self.gui_matrix = [['#000000' for _ in range(gui_columns)] for _ in range(gui_rows)] 
    
    self.create_matrix()

    # TODO, test the destroy() and create_matrix for dynamic resizing of window

    resize_button = tk.Button(root, text="Resize", command=self.resize_matrix, width=10)
    resize_button.grid(row=3, column=self.gui_columns_size)

    self.resize_col = tk.Entry(root, width=10)
    self.resize_col.insert(0, "0")
    self.resize_col.grid(row=3, column=self.gui_columns_size+10)

    self.resize_row = tk.Entry(root, width=10)
    self.resize_row.insert(0, "0")
    self.resize_row.grid(row=3, column=self.gui_columns_size+20)

  def create_matrix(self):
    self.matrix_buttons = []
    for row in range(self.gui_rows_size):
      row_buttons = []
      for col in range(self.gui_columns_size):
          color = self.gui_matrix[row][col]
          btn = tk.Button(self.root, width=2, height=1, bg=color, command=lambda r=row, c=col: self.toggle_color(r, c))
          btn.grid(row=row, column=col)
          row_buttons.append(btn)
      self.matrix_buttons.append(row_buttons)
  
  def destroy_matrix(self):
    for row in self.matrix_buttons:
      for element in row:
          element.destroy()

  # Destroys all of self.gui_matrix, changes gui_columns/rows_size and create_matrix()
  def resize_matrix(self):
    self.destroy_matrix()
 
    self.gui_columns_size = int(self.resize_col.get())
    self.gui_rows_size = int(self.resize_row.get())
    
    self.create_matrix()

if __name__ == "__main__":
  root = tk.Tk()
  app = LEDMatrixConfigurator(root, gui_columns=32, gui_rows=32)
  root.mainloop()
