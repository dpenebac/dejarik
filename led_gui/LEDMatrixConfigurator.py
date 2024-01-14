import tkinter as tk
from PNGPreview import PNGPreview

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
  def __init__(self, root, gui_columns=MAX_MATRIX_COLUMNS, gui_rows=MAX_MATRIX_COLUMNS,
               display_columns=MAX_MATRIX_COLUMNS, display_rows=MAX_MATRIX_ROWS):
    # Initialization
    self.root = root
    self.root.title("LED Matrix Configurator")
    self.root.resizable(False, False) # avoid messing up matrix
    self.gui_columns_size = gui_columns
    self.gui_rows_size = gui_rows
    self.display_columns = display_columns
    self.display_rows = display_rows

    #############################
    # Matrix Button Initialization
    #############################
    # '#000000' is black, generates black array for default view
    self.full_matrix = [['#000000' for _ in range(display_columns)] for _ in range(display_rows)] 
    self.gui_matrix = [['#000000' for _ in range(gui_columns)] for _ in range(gui_rows)] 
    self.create_matrix()

    #############################
    # Dynamic Color Configuration
    #############################
    # need default colors
    # option to "load" color configurations from "connected device"
    # option to change colors (this will also update the connected display as well) 
    self.selected_color = "#000000"
    self.colors = [
        ("Red", "#ff0000"),
        ("Orange", "#ffa500"),
        ("Yellow", "#ffff00"),
        ("Green", "#00ff00"),
        ("Blue", "#0000ff"),
        ("Purple", "#8B00FF"), # violet
    ]
    for i, (color_name, color_code) in enumerate(self.colors):
        column_position = self.gui_columns_size if i == 0 else self.gui_columns_size + i * 5
        button = tk.Button(root, text=color_name, command=lambda c=color_code: self.choose_color(c), width=10)
        button.grid(row=0, column=column_position)
        button.configure(bg=color_code)

    #############################
    # "Get" Color Button
    #############################
    
    #############################
    # Blank/Clear Button
    #############################
    # simply resets self.full_matrix and self.gui_matrix
    
    #############################
    # Save/Load Buttons
    #############################
    self.file_path = "dejarik_board.png" # for now (png preview dependency)
    # save full
    # load full
    # load 

    #############################
    # Dynamic GUI Resizing
    #############################
    resize_button = tk.Button(root, text="Resize", command=self.rebuild_matrix, width=10)
    resize_button.grid(row=3, column=self.gui_columns_size)

    self.resize_col = tk.Entry(root, width=10)
    self.resize_col.insert(0, "0")
    self.resize_col.grid(row=3, column=self.gui_columns_size+5)

    self.resize_row = tk.Entry(root, width=10)
    self.resize_row.insert(0, "0")
    self.resize_row.grid(row=3, column=self.gui_columns_size+10)

    #############################
    # Matrix Button Scrolling
    #############################
    # make sure it works dynamic gui resizing

    #############################
    # PNG Preview
    #############################
    png_preview = tk.Button(root, text="Preview", 
                            command=lambda : PNGPreview("dejarik_board.png", master=self.root), 
                            width=10)
    png_preview.grid(row=10, column=self.gui_columns_size)


    #############################
    # Error Field
    #############################

  # Creates a configurable matrix using tk buttons 
  def create_matrix(self):
    self.matrix_buttons = []
    for row in range(self.gui_rows_size):
      row_buttons = []
      for col in range(self.gui_columns_size):
          color = self.gui_matrix[row][col]
          btn = tk.Button(self.root, width=2, height=1, bg=color, 
                          command=lambda r=row, c=col: self.toggle_matrix_color(r, c))
          btn.grid(row=row, column=col)
          row_buttons.append(btn)
      self.matrix_buttons.append(row_buttons)
  
  # Destroys all of self.gui_matrix, changes gui_columns/rows_size and create_matrix()
  def rebuild_matrix(self):
    self.destroy_matrix()
 
    self.gui_columns_size = int(self.resize_col.get())
    self.gui_rows_size = int(self.resize_row.get())
    
    self.create_matrix()

  # Destroys all matrix_buttons
  def destroy_matrix(self):
    for row in self.matrix_buttons:
      for element in row:
          element.destroy()
  
  # Toggles the color of the button at corresponding row/col
  # uses self.selected color to toggle or not
  def toggle_matrix_color(self, row, col):
    current_color = self.gui_matrix[row][col]
    selected_color = self.selected_color

    new_color = selected_color if current_color != selected_color else '#000000'

    self.gui_matrix[row][col] = new_color
    self.matrix_buttons[row][col].config(bg=new_color)

  # Selects color
  def choose_color(self, color):
    self.selected_color = color

  # Loads Full Matrix from config.json file
  # pulls rows/cols for full_resizing
  # pulls color mapping as well
  def load_full_matrix(self):
    # need to finish colors first
    pass

  # Preview
  def preview(self):
    PNGPreview("dejarik_board.png", master=self.root)

if __name__ == "__main__":
  root = tk.Tk()
  app = LEDMatrixConfigurator(root, gui_columns=32, gui_rows=32)
  root.mainloop()
