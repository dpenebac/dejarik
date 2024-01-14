'''
This is all old stuff, using as reference for new led_gui.py
'''


import tkinter as tk
from tkinter import colorchooser
import tkinter.filedialog as filedialog
import json

from PIL import Image, ImageTk

class LEDMatrixConfigurator:
    def __init__(self, root):
        self.root = root
        self.root.title("LED Matrix Configurator")
        self.root.resizable(False, False)

        self.matrix_size = 32
        self.matrix_colors = [['#000000' for _ in range(self.matrix_size)] for _ in range(self.matrix_size)]

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
            column_position = self.matrix_size if i == 0 else self.matrix_size + i * 5
            button = tk.Button(root, text=color_name, command=lambda c=color_code: self.choose_color(c), width=10)
            button.grid(row=0, column=column_position)
            button.configure(bg=color_code)

        save_button = tk.Button(root, text="Save", command=self.save_configuration, width=10)
        save_button.grid(row=3, column=self.matrix_size)

        load_button = tk.Button(root, text="Load", command=self.load_configuration, width=10)
        load_button.grid(row=3, column=self.matrix_size + 5)

        self.get = 0
        get_button = tk.Button(root, text="Get", command=self.get_color, width=10)
        get_button.grid(row=3, column=self.matrix_size + 10)

        save_new_button = tk.Button(root, text="Save", command=self.save_new, width=10)
        save_new_button.grid(row=3, column=self.matrix_size + 15)

        # Editable buttons for selecting the section
        self.start_row = 0  # hacky
        self.start_col = 0  # hacky

        select_section_button = tk.Button(root, text="Section", command=self.select_section, width=10)
        select_section_button.grid(row=5, column=self.matrix_size)

        self.start_row_button = tk.Entry(root, width=10)
        self.start_row_button.insert(0, "0")
        self.start_row_button.grid(row=5, column=self.matrix_size + 5)

        self.start_col_button = tk.Entry(root, width=10)
        self.start_col_button.insert(0, "0")
        self.start_col_button.grid(row=5, column=self.matrix_size + 10)

        # Scroll buttons
        scroll_left_button = tk.Button(root, text="Scroll Left", command=lambda: self.scroll(-5, 0), width=10)
        scroll_left_button.grid(row=7, column=self.matrix_size)

        scroll_right_button = tk.Button(root, text="Scroll Right", command=lambda: self.scroll(5, 0), width=10)
        scroll_right_button.grid(row=7, column=self.matrix_size + 10)

        scroll_up_button = tk.Button(root, text="Scroll Up", command=lambda: self.scroll(0, -5), width=10)
        scroll_up_button.grid(row=7, column=self.matrix_size + 20)

        scroll_down_button = tk.Button(root, text="Scroll Down", command=lambda: self.scroll(0, 5), width=10)
        scroll_down_button.grid(row=7, column=self.matrix_size + 30)

        self.update_section_buttons()

        self.create_matrix()

    def create_matrix(self):
        self.matrix_buttons = []
        for row in range(self.matrix_size):
            row_buttons = []
            for col in range(self.matrix_size):
                color = self.matrix_colors[row][col]
                btn = tk.Button(self.root, width=2, height=1, bg=color, command=lambda r=row, c=col: self.toggle_color(r, c))
                btn.grid(row=row, column=col)
                row_buttons.append(btn)
            self.matrix_buttons.append(row_buttons)

    def toggle_color(self, row, col):
        if not self.get:
            current_color = self.matrix_colors[row][col]
            selected_color = self.selected_color

            new_color = selected_color if current_color != selected_color else '#000000'

            self.matrix_colors[row][col] = new_color
            self.matrix_buttons[row][col].config(bg=new_color)
        else:
            self.selected_color = self.matrix_colors[row][col]
            self.get = 0

    def choose_color(self, color):
        self.selected_color = color

    def save_new(self):
        file_path = filedialog.asksaveasfilename(defaultextension=".json", filetypes=[("JSON files", "*.json")])

        if file_path:
            config_data = {"matrix_size": self.matrix_size, "matrix_colors": self.matrix_colors}
            with open(file_path, "w") as file:
                json.dump(config_data, file)

            print(f"New configuration saved to {file_path}!")

    def save_configuration(self):
        file_path = self.file_path

        start_row = self.start_row
        start_col = self.start_col

        # Ensure the loaded configuration data exists
        if not hasattr(self, 'config_data'):
            print("No configuration data loaded.")
            return

        # Update the entire matrix with the selected section
        for row in range(min(self.matrix_size, len(self.config_data["matrix_colors"]))):
            for col in range(min(self.matrix_size, len(self.config_data["matrix_colors"][row]))):
                self.config_data["matrix_colors"][row + start_row][col + start_col] = self.matrix_colors[row][col]

        # Save the entire matrix to the configuration file
        config_data = {"matrix_size": len(self.config_data["matrix_colors"]), "matrix_colors": self.config_data["matrix_colors"]}
        with open(file_path, "w") as file:
            json.dump(config_data, file)

        print(f"Configuration saved to {file_path}!")

        # Update section buttons after saving
        self.update_section_buttons()

    def load_configuration(self):
        file_path = filedialog.askopenfilename(title="Select Configuration File", filetypes=[("JSON files", "*.json")])
        self.file_path = file_path

        if file_path:
            try:
                with open(file_path, "r") as file:
                    self.config_data = json.load(file)

                self.start_row = 0
                self.start_col = 0

                new_matrix_colors = [
                    row[0:self.matrix_size] for row in self.config_data["matrix_colors"][0:self.matrix_size]
                ]

                self.load_matrix(new_matrix_colors)

                print(f"Configuration loaded from {file_path}!")
            except FileNotFoundError:
                print("No configuration file found.")

    def load_matrix(self, new_matrix_colors):
        for row in range(min(self.matrix_size, len(new_matrix_colors))):
            for col in range(min(self.matrix_size, len(new_matrix_colors[row]))):
                if self.matrix_colors[row][col] != new_matrix_colors[row][col]:
                    self.matrix_colors[row][col] = new_matrix_colors[row][col]
                    self.matrix_buttons[row][col].config(bg=new_matrix_colors[row][col])

    def get_color(self):
        self.get = 1

    def select_section(self):
        try:
            start_row = int(self.start_row_button.get())
            start_col = int(self.start_col_button.get())
        except ValueError:
            print("Invalid input for start row or start column.")
            return

        row_offset = start_row - self.start_row
        col_offset = start_col - self.start_col

        self.scroll(col_offset, row_offset)

    def scroll(self, col_offset, row_offset):
        self.save_configuration()

        start_row = self.start_row + row_offset
        start_col = self.start_col + col_offset

        # Adjust start_row and start_col to stay within valid bounds
        start_row = max(0, min(start_row, len(self.config_data["matrix_colors"]) - self.matrix_size))
        start_col = max(0, min(start_col, len(self.config_data["matrix_colors"][0]) - self.matrix_size))

        new_matrix_colors = [
            row[start_col:start_col + self.matrix_size]
            for row in self.config_data["matrix_colors"][start_row:start_row + self.matrix_size]
        ]

        self.load_matrix(new_matrix_colors)

        self.start_row = start_row
        self.start_col = start_col

        # Update section buttons after scrolling
        self.update_section_buttons()

    def update_section_buttons(self):
        # Update the text of section buttons to reflect the current selected section
        self.start_row_button.delete(0, tk.END)
        self.start_row_button.insert(0, str(self.start_row))

        self.start_col_button.delete(0, tk.END)
        self.start_col_button.insert(0, str(self.start_col))

if __name__ == "__main__":
    root = tk.Tk()
    app = LEDMatrixConfigurator(root)
    root.mainloop()
