from board import SCL,SDA
from busio import I2C
from adafruit_ssd1306 import SSD1306_I2C
from PIL import Image,ImageDraw,ImageFont
import configparser
import sys

i2c = I2C(SCL,SDA)

display = SSD1306_I2C(128,64,i2c)

font_sans_13 = ImageFont.truetype("/usr/share/fonts/truetype/dejavu/DejaVuSans.ttf",13)

img = Image.new("1",(display.width,display.height))

draw = ImageDraw.Draw(img)

oConfFile = configparser.ConfigParser()

oConfFile.read('/etc/NetworkManager/system-connections/ap1.nmconnection')

args = sys.argv


def ClearDisp():
	display.fill(0)
	display.show()

def GetApName():
	return oConfFile.get('wifi', 'ssid')

def GetIpAddr():
	return oConfFile.get('ipv4', 'address1')
	
def GetPass01():
	return oConfFile.get('wifi-security','psk')

def DrawApInfo():
	sApName = GetApName()
	sIpAddr = GetIpAddr()
	draw.text((0,0), "AP : " + sApName, font=font_sans_13, fill=1)
	draw.text((0,14), "IP : " + sIpAddr, font=font_sans_13, fill=1)

def DrawApInfo01():
	sApName = GetApName()
	sPass = GetPass01()
	draw.text((0,0), "AP : " + sApName, font=font_sans_13, fill=1)
	draw.text((0,14), "pass : " + sPass, font=font_sans_13, fill=1)

def DrawTcInfo():
	draw.text((0,28), "Delay : " + args[1], font=font_sans_13, fill=1)
	draw.text((0,42), "Loss&Dup : " + args[2], font=font_sans_13, fill=1)


ClearDisp()
#DrawApInfo()
DrawApInfo01()
DrawTcInfo()
display.image(img)
display.show()
