# Crops "The IRO" from the original Wix logo (white on transparent) into assets/img/logo-the-iro.png
import urllib.request, io
from PIL import Image
url = "https://static.wixstatic.com/media/bbb74e_97560130b28448f9a6377ead45810a95~mv2.png"
im = Image.open(io.BytesIO(urllib.request.urlopen(url).read())).convert("RGBA")
band = im.crop((0, 573, im.width, 960))            # rows holding "The IRO" only
bbox = band.getchannel("A").point(lambda a: 255 if a > 10 else 0).getbbox()
band = band.crop((max(bbox[0]-4,0), max(bbox[1]-4,0), min(bbox[2]+4,band.width), min(bbox[3]+4,band.height)))
w = 600; band = band.resize((w, round(band.height * w / band.width)), Image.LANCZOS)
r, g, b, a = band.split(); white = Image.new("L", band.size, 255)
Image.merge("RGBA", (white, white, white, a)).save("assets/img/logo-the-iro.png", optimize=True)
print("saved", band.size)
