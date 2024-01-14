import numpy as np
from PIL import Image, ImageDraw
import json

'''
Use to generate a json file of the default dejarik board.
Still issues with symmetrical shaping which can be solved using gui
'''

def rgb_to_hex(rgb):
    return "#{:02x}{:02x}{:02x}".format(rgb[0], rgb[1], rgb[2])

def generate_image(size=64, pixel_size=1, matrix_size=64):
    image = Image.new('RGB', (size * pixel_size, size * pixel_size), color='#000000')
    draw = ImageDraw.Draw(image)
    
    center = (size * pixel_size // 2, size * pixel_size // 2)
    max_radius = min(center[0], center[1]) + 5  # use to adjust size
    
    num_circles = 3
    circle_step = max_radius // num_circles

    center_circle_scale = 0.5

    for i in range(num_circles):
        radius = circle_step * (i + center_circle_scale)
        draw.ellipse((center[0] - radius, center[1] - radius, center[0] + radius, center[1] + radius), outline='#ffffff')

    num_lines = 12 
    for i in range(num_lines):
        angle = 2 * np.pi * i / num_lines
        start_point = (center[0] + circle_step * center_circle_scale * np.cos(angle),
                       center[1] + circle_step * center_circle_scale * np.sin(angle))
        end_point = (center[0] + max_radius * np.cos(angle) * 0.80,
                     center[1] + max_radius * np.sin(angle) * 0.80)

        draw.line([start_point, end_point], fill='#ffffff')

    # Save the image
    image.save("dejarik_board.png")

    # Convert the image to a 2D array of pixel colors
    pixel_colors = np.array(image)

    # Resize the array to matrix_size x matrix_size
    pixel_colors_resized = pixel_colors[::pixel_size, ::pixel_size]

    # Convert the 2D array to a list of hex color codes for JSON serialization
    pixel_colors_list = [[rgb_to_hex(pixel) for pixel in row] for row in pixel_colors_resized]

    # Colors Definition
    rgb_colors = [
        ("Red", "#ff0000"),
        ("Orange", "#ffa500"),
        ("Yellow", "#ffff00"),
        ("Green", "#00ff00"),
        ("Blue", "#0000ff"),
        ("Purple", "#8B00FF"), # violet
    ]

    # Create a dictionary with matrix_size and matrix_colors
    result_dict = {"matrix_rows" : 32, "matrix_columns" : 32, 
                   "matrix_layout": pixel_colors_list, "color_mapping" : rgb_colors}

    # Save the dictionary as a JSON file
    with open("dejarik_board.json", "w") as json_file:
        json.dump(result_dict, json_file)

if __name__ == "__main__":
    generate_image()
