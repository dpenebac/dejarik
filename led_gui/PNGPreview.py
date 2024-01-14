import tkinter as tk
from PIL import Image, ImageTk

class PNGPreview:
    def __init__(self, image_path, master=None):
        self.image_path = image_path

        # Create a Toplevel window if master is not provided
        if master is None:
            self.root = tk.Tk()
            self.root.title("Image Preview")
        else:
            self.root = tk.Toplevel(master)

        # Declare tk_image as an instance variable
        self.tk_image = None

        # Load and display the image
        self.load_and_display_image()

        # Run the Tkinter event loop (only for the main window)
        if master is None:
            self.root.mainloop()

    def load_and_display_image(self):
        # Load the image using PIL
        try:
            image = Image.open(self.image_path)
        except Exception as e:
            print(f"Error loading image: {e}")
            return

        # Check if the image is too small
        min_width = 400
        min_height = 300

        if image.width < min_width or image.height < min_height:
            # Resize the image to a minimum size
            new_width = max(image.width, min_width)
            new_height = max(image.height, min_height)
            image = image.resize((new_width, new_height), Image.Resampling.LANCZOS)

        # Resize the image if needed to fit the window
        max_width = 800
        if image.width > max_width:
            ratio = max_width / image.width
            new_height = int(image.height * ratio)
            image = image.resize((max_width, new_height), Image.Resampling.LANCZOS)

        # Convert the PIL Image to Tkinter PhotoImage
        self.tk_image = ImageTk.PhotoImage(image)

        # Create a label to display the image
        image_label = tk.Label(self.root, image=self.tk_image)
        image_label.image = self.tk_image  # Keep a reference to avoid garbage collection
        image_label.pack(padx=10, pady=10)

if __name__ == "__main__":
    # Provide the path to your image file
    image_path = "dejarik_board.png"

    # Create an instance of PNGPreview with the main Tkinter instance as the master
    preview = PNGPreview(image_path)

