from PIL import Image


def resize_image(image_path, output_path, size):
    image = Image.open(image_path)
    image_resized = image.resize(size, Image.ANTIALIAS)
    image_resized.save(output_path)


# Example usage
# image_path = "/Users/kronos/Downloads/ssb1.jpg"
# output_path = "/Users/kronos/Downloads/ssb1-new.jpg"
image_path = "/add/path/to/input-image.jpg"
output_path = "/add/path/to/output-image.jpg"

# Change image size as needed
# width x height in pixels
# Example: size = (2048, 3567) 

# 2 inches x 2 inches (300 px)
width = 300
height = 300
size = (width, height)  

resize_image(image_path, output_path, size)
print("Successfully resized image with dimensions=> ","Width: ", str(width), "Height: ",str(height))
