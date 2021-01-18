#!/usr/bin/env python3
from random import *

# Version Number
version = "1.0"


# 1-10, 19-28 odd = red, 11-18, 29-36, even = red
# Table Setup

red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]
black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]

dozens = {
"1st Dozen": range(1, 13),
"2nd Dozen": range(13, 25),
"3rd Dozen": range(25, 37)
}

firstHalf = range(1, 19)
secondHalf = range(19, 37)


even = [x for x in range(2, 38, 2)]
odd = [x for x in range(1, 37, 2)]

columns = {
"Column 1": range(1, 37, 3),
"Column 2": range(2, 38, 3),
"Column 3": range(3, 39, 3)
}

streets = {
"Street 1": range(4),
"Street 2": range(4, 7),
"Street 3": range(7, 10),
"Street 4": range(10, 13),
"Street 5": range(13, 16),
"Street 6": range(16, 19),
"Street 7": range(19, 22),
"Street 8": range(22, 25),
"Street 9": range(25, 28),
"Street 10": range(28, 31),
"Street 11": range(31, 34),
"Street 12": range(34, 37)
}

lines = {
"Line 1": range(1, 7),
"Line 2": range(7, 13),
"Line 3": range(13, 19),
"Line 4": range(19, 25),
"Line 5": range(25, 31),
"Line 6": range(31, 37)
}

allNumbers = range(38)

topLine = [0, 1, 2, 3, 37]
basket = range(4)
snake = [1, 5, 9, 12, 14, 16, 19, 23, 27, 30, 32, 34]


# Spin Function

def spin():
	global red, black
	spinOut = randint(0, 37)
	print("\t\tSpinning the wheel!")

	if spinOut == 37:
		print("The ball lands on 00!")
	elif spinOut == 0:
		print("The ball lands on 0!")
	elif spinOut in red:
		print("The ball lands on Red {}!".format(spinOut))
	elif spinOut in black:
		print("The ball lands on Black {}!".format(spinOut))
	return spinOut

def roulette():
	global red, black, even, odd, dozens, firstHalf, secondHalf, streets, lines, columns

	ball = spin()
	outcome = ''

	if ball in even:
		outcome += "Even, "
	elif ball in odd:
		outcome += "Odd, "
	else:
		pass

	if ball in firstHalf:
		outcome += "1st Half, "
	elif ball in secondHalf:
		outcome += "2nd Half, "
	else:
		pass

	for key in dozens:
		if ball in dozens[key]:
			outcome += key + ', '

	for key in columns:
		if ball in columns[key]:
			outcome += key + ', '

	print(outcome)



# Game Start

print("Valls to the Wheel v.{}\n\tBy: Marco Salsiccia".format(version))


while True:
	print("Hit Enter to Spin!")
	input("> ")
	roulette()

	input("Go again! >")
	continue