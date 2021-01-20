#!/usr/bin/env python3
from random import *

# Version Number
version = "1.0"


# Table Setup

red = [1, 3, 5, 7, 9, 12, 14, 16, 18, 19, 21, 23, 25, 27, 30, 32, 34, 36]
black = [2, 4, 6, 8, 10, 11, 13, 15, 17, 20, 22, 24, 26, 28, 29, 31, 33, 35]

dozens = {
1: range(1, 13),
2: range(13, 25),
3: range(25, 37)
}

half = {
1: range(1, 19),
2: range(19, 37)
}

even = [x for x in range(2, 38, 2)]
odd = [x for x in range(1, 37, 2)]

columns = {
1: [1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34],
2: [2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35],
3: [3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36]
}

splits = {
"1-2": [1, 2],
"1-4": [1, 4],
"2-3": [2, 3],
"2-5": [2, 5],
"3-6": [3, 6],
"4-5": [4, 5],
"4-7": [4, 7],
"5-6": [5, 6],
"5-8": [5, 8],
"6-9": [6, 9],
"7-8": [7, 8],
"7-10": [7, 10],
"8-9": [8, 9],
"8-11": [8, 11],
"9-12": [9, 12],
"10-11": [10, 11],
"10-13": [10, 13],
"11-12": [11, 12],
"11-14": [11, 14],
"12-15": [12, 15],
"13-14": [13, 14],
"13-16": [13, 16],
"14-15": [14, 15],
"14-17": [14, 17],
"15-18": [15, 18],
"16-17": [16, 17],
"16-19": [16, 19],
"17-18": [17, 18],
"17-20": [17, 20],
"18-21": [18, 21],
"19-20": [19, 20],
"19-22": [19, 22],
"20-21": [20, 21],
"20-23": [20, 23],
"21-24": [21, 24],
"22-23": [22, 23],
"22-25": [22, 25],
"23-24": [23, 24],
"23-26": [23, 26],
"24-27": [24-27],
"25-26": [25, 26],
"25-28": [25, 28],
"26-27": [26, 27],
"26-29": [26, 29],
"27-30": [27, 30],
"28-29": [28, 29],
"28-31": [28, 31],
"29-30": [29, 30],
"29-32": [29, 32],
"30-33": [30, 33],
"31-32": [31, 32],
"31-34": [31, 34],
"32-33": [32, 33],
"32-35": [32, 35],
"33-36": [33, 36]
}

corners = {
1: [1, 2, 4, 5],
2: [2, 3, 5, 6],
3: [4, 5, 7, 8],
4: [5, 6, 8, 9],
5: [7, 8, 10, 11],
6: [8, 9, 11, 12],
7: [10, 11, 13, 14],
8: [11, 12, 14, 15],
9: [13, 14, 16, 17],
10: [14, 15, 17, 18],
11: [16, 17, 19, 20],
12: [17, 18, 20, 21],
13: [19, 20, 22, 23],
14: [20, 21, 23, 24],
15: [22, 23, 25, 26],
16: [23, 24, 26, 27],
17: [25, 26, 28, 29],
18: [26, 27, 29, 30],
19: [28, 29, 31, 32],
20: [29, 30, 32, 33],
21: [31, 32, 34, 35],
22: [32, 33, 35, 36]
}

streets = {
1: range(4),
2: range(4, 7),
3: range(7, 10),
4: range(10, 13),
5: range(13, 16),
6: range(16, 19),
7: range(19, 22),
8: range(22, 25),
9: range(25, 28),
10: range(28, 31),
11: range(31, 34),
12: range(34, 37)
}

lines = {
1: range(1, 7),
2: range(7, 13),
3: range(13, 19),
4: range(19, 25),
5: range(25, 31),
6: range(31, 37)
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
	global red, black, even, odd, dozens, half, straightUp, splits, corners, streets, lines, columns, outBets, inBets, bank, verbose

	ball = spin()
	outcome = ''

	if ball in even:
		outcome += "Even, "
	elif ball in odd:
		outcome += "Odd, "
	else:
		pass

	if ball in half[1]:
		outcome += "1st Half, "
	elif ball in half[2]:
		outcome += "2nd Half, "
	else:
		pass

	for key in dozens:
		if ball in dozens[key]:
			outcome += "Dozen {}, ".format(key)

	for key in columns:
		if ball in columns[key]:
			outcome += "Column {}, ".format(key)
	if verbose:
		print(outcome)

# Payout

	for key in outBets:
		payout = 0
		if outBets[key] > 0:
			if key == "Red" and ball in red or key == "Black" and ball in black or key == "Even" and ball in even or key == "Odd" and ball in odd or key == "1st Half" and ball in half[1] or key == "2nd Half" and ball in half[2]:
				payout = outBets[key]
			elif key == "Column 1" and ball in columns[1] or key == "Column 2" and ball in columns[2] or key == "Column 3" and ball in columns[3] or key == "1st Dozen" and ball in dozens[1] or key == "2nd Dozen" and ball in dozens[2] or key == "3rd Dozen" and ball in dozens[3]:
				payout = outBets[key] * 2
			else:
				payout = 0

			if payout > 0:
				print("You won ${num} on the {bet} bet!".format(num=payout, bet=key))
				bank += payout
			else:
				print("You lost ${num} from the {bet} bet.".format(num=outBets[key], bet=key))
				bank -= outBets[key]
			outBets[key] = 0

# Bet Prompt and Out of Money

def betPrompt():
	global bank
	while True:
		try:
			playerBet =  int(input("\t$> "))
		except ValueError:
			print("\tThat wasn't a number!")
			continue
		if playerBet > bank:
			print("\tYou simply don't have enough money to do that! DO you want to add more to your bankroll?")
			addMore = input(">")
			if addMore.lower() in ['y', 'yes', 'atm', 'help', 'more money']:
				outOfMoney()
			continue
		elif playerBet <= 0:
			print("Nice try, hot shot. You have to make a bet to play!")
			continue
		else:
			return playerBet

def outOfMoney():
	global bank
	if bank <= 0:
		print("\tYou are totally out of money. Let's hit the ATM again and get you more cash. How much do you want?")
	else:
		print("\tYour chips are getting really low. How much would you like to add to your bankroll?")
	while True:
		try:
			cash = int(input("\t$>"))
		except ValueError:
			print("\tYou forgot what numbers were and the ATM beeps at you in annoyance. Try again.")
			continue
		if cash <= 0:
			print("\tWhat am I, a bank? This is for withdrawals only! Try again.")
			continue
		else:
			bank += cash
			break
	print("\tAlright, starting you off again with ${}. Don't lose it all this time!".format(bank))

# Bet Setup

straightUp = {}
for number in range(38):
	straightUp[number] = 0

splitBets = {}
for number in range(1, 56):
	splitBets[number] = 0

cornerBets = {}
for number in range(1, 23):
	cornerBets[number] = 0

streetBets = {}
for number in range(13):
	streetBets[number] = 0

lineBets = {}
for number in range(7):
	lineBets[number] = 0

outBets = {
"Red": 0,
"Black": 0,
"Even": 0,
"Odd": 0,
"1st Dozen": 0,
"2nd Dozen": 0,
"3rd Dozen": 0,
"1st Half": 0,
"2nd Half": 0,
"Column 1": 0,
"Column 2": 0,
"Column 3": 0
}

inBets = {
"Top Line": 0,
"Basket": 0,
"Snake": 0
}

def bet(choice):
	pick = ''
	if choice in ['r', 'b', 'c1', 'c2', 'c3', 'd1', 'd2', 'd3', 'o', 'e', 'h1', 'h2']:
		if choice.lower() == 'r':
			pick = "Red"
		elif choice == 'b':
			pick = "Black"
		elif choice == 'e':
			pick = "Even"
		elif choice == 'o':
			pick = "Odd"
		elif choice == 'd1':
			pick = "1st Dozen"
		elif choice == 'd2':
			pick = "2nd Dozen"
		elif choice == 'd3':
			pick = '3rd Dozen'
		elif choice == 'h1':
			pick = "1st Half"
		elif choice == 'h2':
			pick = "2nd Half"
		elif choice == 'c1':
			pick = "Column 1"
		elif choice == 'c2':
			pick = "Column 2"
		elif choice == 'c3':
			pick = "Column 3"
		print("How much on {}?".format(pick))
		outBets[pick] = betPrompt()
		print("Ok, ${num} on {bet}.".format(num=outBets[pick], bet=pick))

	else:
		print("That's not a bet! Try again.")




verbose = False

# Game Start

print("Balls to the Wheel v.{}\n\tBy: Marco Salsiccia".format(version))

print("How much would you like to cash in for your bank?")
while True:
	try:
		bank = int(input("$"))
		break
	except ValueError:
		print("That wasn't a number, doofus.")
		continue
print("Great, starting off with ${bank}. Good luck!".format(bank=bank))


while True:
	print("You have ${} in the bank.".format(bank))
	print("Place your Bets!")
	choice = input("> ")
	if choice == 'v' and verbose == False:
		print("Verbose Mode On")
		verbose = True
		continue
	elif choice == 'v' and verbose == True:
		print("Verbose Mode Off")
		verbose = False
		continue

	if choice == 'x':
		roulette()
		continue
	else:
		bet(choice)
		continue