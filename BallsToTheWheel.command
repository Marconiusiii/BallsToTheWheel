#!/usr/bin/env python3
from random import *

# Version Number
version = "1.0"


# 1-10, 19-28 odd = red, 11-18, 29-36, even = red
# Table Setup

red1 = [x for x in range(1, 12, 2)]
red2 = [x for x in range(12, 19, 2)]
red3 = [x for x in range(19, 29, 2)]
red4 = [x for x in range(30, 37, 2)]

black1 = [x for x in range(2, 11, 2)]
black2 = [x for x in range(11, 19, 2)]
black3 = [x for x in range(20, 29, 2)]
black4 = [x for x in range(29, 38, 2)]

red = red1 + red2 + red3 + red4
black = black1 + black2 + black3 + black4

# Spin Function

def spin():
	global red, black
	spinOut = randint(0, 37)
	if spinOut == 37:
		print("The ball lands on 00!")
	elif spinOut == 0:
		print("The ball lands on 0!")
	elif spinOut in red:
		print("The ball lands on Red {}!".format(spinOut))
	elif spinOut in black:
		print("The ball lands on Black {}!".format(spinOut))
	return spinOut


# Game Start

print("Valls to the Wheel v.{}\n\tBy: Marco Salsiccia".format(version))

while True:
	print("Hit Enter to Spin!")
	input("> ")
	spin()
	continue