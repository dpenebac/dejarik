import numpy as np
from PIL import Image, ImageDraw
import json

def load_image(json_file_path):
    # Load JSON data from file
    with open(json_file_path, "r") as json_file:
        data = json.load(json_file)

    # Extract matrix size and colors from the loaded data
    matrix_columns = data["matrix_columns"]
    matrix_rows = data["matrix_rows"]

    # Create a blank image
    image = Image.new('RGB', (matrix_columns, matrix_rows))

    # Extract matrix size and colors from the loaded data
    pixel_colors_list = data["matrix_layout"]
    # Convert hex color codes to RGB tuples
    pixel_colors = np.array([[hex_to_rgb(color) for color in row] for row in pixel_colors_list])

    # Draw on the image using the loaded colors
    draw = ImageDraw.Draw(image)
    for i in range(matrix_rows):
        for j in range(matrix_columns):
            # Use the * operator to unpack the RGB tuple
            draw.point((j, i), fill=tuple(pixel_colors[i, j]))

    # Save the reconstructed image
    image.save("dejarik_board.png")

def hex_to_rgb(hex_color):
    return tuple(int(hex_color[i:i+2], 16) for i in (1, 3, 5))

if __name__ == "__main__":
    load_image("dejarik_board.json")
