#!/usr/bin/env python3
from random import *

# Version Number
version = "1.5"


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
"0-00": [0, 37],
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
'1': [1, 2, 4, 5],
'2': [2, 3, 5, 6],
'3': [4, 5, 7, 8],
'4': [5, 6, 8, 9],
'5': [7, 8, 10, 11],
'6': [8, 9, 11, 12],
'7': [10, 11, 13, 14],
'8': [11, 12, 14, 15],
'9': [13, 14, 16, 17],
'10': [14, 15, 17, 18],
'11': [16, 17, 19, 20],
'12': [17, 18, 20, 21],
'13': [19, 20, 22, 23],
'14': [20, 21, 23, 24],
'15': [22, 23, 25, 26],
'16': [23, 24, 26, 27],
'17': [25, 26, 28, 29],
'18': [26, 27, 29, 30],
'19': [28, 29, 31, 32],
'20': [29, 30, 32, 33],
'21': [31, 32, 34, 35],
'22': [32, 33, 35, 36]
}

streets = {
'1': [1, 2, 3],
'2': [4, 5, 6],
'3': [7, 8, 9],
'4': [10, 11, 12],
'5': [13, 14, 15],
'6': [16, 17, 18],
'7': [19, 20, 21],
'8': [22, 23, 24],
'9': [25, 26, 27],
'10': [28, 29, 30],
'11': [31, 32, 33],
'12': [34, 35, 36]
}

lines = {
'1': range(1, 7),
'2': range(7, 13),
'3': range(13, 19),
'4': range(19, 25),
'5': range(25, 31),
'6': range(31, 37)
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

def betCount(choice):
	count = 0
	for key in outBets:
		count += outBets[key]
		if choice == 'a' and outBets[key] > 0:
			print("${amt} on {bet}.".format(amt=outBets[key], bet=key))
	for key in inBets:
		count += inBets[key]
		if choice == 'a' and inBets[key] > 0:
			print("${amt} on the {bet} bet.".format(amt=inBets[key], bet=key))
	for key in straightUp:
		count += straightUp[key]
		if choice == 'a' and straightUp[key] > 0:
			print("${amt} on {bet}.".format(amt=StraightUp[key], bet=key))
	for key in splitBets:
		count += splitBets[key]
		if choice == 'a' and splitBets[key] > 0:
			print("${amt} on the {sp} Split.".format(amt=splitBets[key], sp=key))
	for key in streetBets:
		count += streetBets[key]
		if choice == 'a' and streetBets[key] > 0:
			print("${amt} on Street {st}.".format(amt=streetBets[key], st=key))
	for key in cornerBets:
		count += cornerBets[key]
		if choice == 'a' and cornerBets[key] > 0:
			print("${amt} on Corner {c}.".format(amt=cornerBets[key], c=key))
	for key in lineBets:
		count += lineBets[key]
		if choice == 'a' and lineBets[key] > 0:
			print("${amt} on Line {l}.".format(amt=lineBets[key], l=key))
	print("You have ${} out on the table!".format(count))


def roulette():
	global red, black, even, odd, dozens, half, straightUp, splits, corners, streets, lines, columns, outBets, inBets, splitBets, streetBets, cornerBets, lineBets, bank, verbose

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

	for key in columns:
		if ball in columns[key]:
			outcome += "Column {}, ".format(key)

	for key in streets:
		if ball in streets[key]:
			outcome += "Street {}, ".format(key)

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

	for key in inBets:
		payout = 0
		if inBets[key] > 0:
			if key == "Top Line" and ball in [0, 1, 2, 3, 37] or key == "Basket" and ball in range(4):
				payout += inBets[key] * 6
			elif key == '0' and ball == '0' or key == '00' and ball == '37':
				payout += inBets[key] * 35
			elif key == "Snake" and ball in [1, 5, 9, 12, 14, 16, 19, 23, 27, 30, 32, 34]:
				payout += inBets[key] * 2
			if payout > 0:
				print("You won ${win} on the {bet}!".format(win=payout, bet=key))
				bank += payout
			else:
				print("You lost ${loss} from the {bet} bet.".format(loss=inBets[key], bet=key))
				bank -= inBets[key]
			inBets[key] = 0

	for key in straightUp:
		if straightUp[key] > 0:
			if ball == key:
				print("Holy crap! You won ${win} on the {num}!".format(win=straightUp[key]*35, num=key))
				bank += straightUp[key] * 35
			else:
				print("You lost ${lose} from the {num}.".format(lose=straightUp[key], num=key))
				bank -= straightUp[key]
	straightUp = {}

# Split Bets Payout
	for key in splitBets:
		if splitBets[key] > 0:
			if ball in splitBets:
				print("Holy Pants! You won ${win} on the {sp} Split!".format(win=splitBets[key]*17, sp=key))
				bank += splitBets[key] * 17
			else:
				print("You lost ${loss} from the {sp} Split.".format(loss=splitBets[key], sp=key))
				bank -= splitBets[key]
	splitBets = {}

# Street Bets Payout
	for key in streetBets:
		if streetBets[key] > 0:
			if ball in streets[key]:
				print("Wowsers! You won ${win} on Street {num}!".format(win=streetBets[key]*11, num=key))
				bank += streetBets[key] * 11
			else:
				print("You lost ${loss} from Street {key}.".format(loss=streetBets[key], key=key))
				bank -= streetBets[key]
	streetBets = {}

# Corner Bet Payout
	for key in cornerBets:
		if cornerBets[key] > 0:
			if ball in corners[key]:
				print("Woohoo! You won ${win} on Corner {num}!".format(win=cornerBets[key]*8, num=key))
				bank += cornerBets[key] * 8
			else:
				print("You lost ${loss} from Corner {num}.".format(loss=cornerBets[key], num=key))
				bank -= cornerBets[key]
	cornerBets = {}

# Line Bet Payout
	for key in lineBets:
		if lineBets[key] > 0:
			if ball in lines[key]:
				print("Nice, you won ${win} on Line {num}!".format(win=lineBets[key] * 5, num=key))
				bank += lineBets[key] * 5
			else:
				print("You lost ${loss} from Line {num}.".format(loss=lineBets[key], num=key))
				bank -= lineBets[key]
	lineBets = {}



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

cornerBets = {}

streetBets = {}

lineBets = {}

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
"Snake": 0,
"0": 0,
"00": 0
}

def bet(choice):
	global outBets, inBets, splitBets, cornerBets, streetBets, lineBets, splits, corners, streets, lines, straightUp
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
	elif choice in ['sn', 'tl', 'bk', '0', '00']:
		if choice in ['0', '00']:
			pick = choice
		elif choice == 'tl':
			pick = "Top Line"
		elif choice == 'sn':
			pick = "Snake"
		elif choice == 'bk':
			pick = "Basket"
		print("How much on the {} bet?".format(pick))
		inBets[pick] = betPrompt()
		print("Ok, ${num} on the {bet} bet.".format(num=inBets[pick], bet=pick))
	elif choice == 'n':
		straight()
	elif choice == 'sp':
		split()
	elif choice == 'st':
		street()
	elif choice == 'l':
		line()
	elif choice == 'co':
		corner()
	elif choice in ['a', 'c']:
		betCount(choice)
	elif choice == 'h':
		help()
	else:
		print("That's not a bet! Try again.")

def help():
	print("Codes for the Place Your Bet prompt:\n")
	print("\t0: Bet on 0\n\t00: Bet on Double 0.\n\ta: Show all current bets.\n\tb: Bet on Black.\n\tbk: Bet on the Basket.\n\tc: Show total amount of money on the table.\n\tc1: Bet on Column 1.\n\tc2: Bet on Column 2.\n\tc3: Bet on Column 3.\n\tco: Bet on Corners.\n\td1: Bet on 1st Dozen.\n\td2: Bet on 2nd Dozen.\n\td3: Bet on 3rd Dozen.\n\te: Bet on Even Numbers.\n\th1: Bet on 1st Half/Low.\n\th2: Bet on 2nd Half/High\n\tl: Bet on Lines.\n\tn: Bet on straight up numbers.\n\to: Bet on Odd Numbers.\n\tr: Bet on Red.\n\tsp: Bet on Splits\n\tst: Bet on Streets.\n\ttl: Bet on Top Line.\n\tv: Toggle Verbose mode for spins.")

def straight():
	global straightUp
	while True:
		for key in straightUp:
			if straightUp[key] > 0:
				print("Current Bets:\n")
				for bets in straightUp:
					if straightUp[bets] > 0:
						print("${bet} on {num}.".format(bet=straightUp[bets], num=bets))
				break
		print("Enter the number you want to bet! 1-36: ")
		try:
			bet = int(input("> "))
		except ValueError:
			break
		if bet in range(1, 37):
			print("How much on {}?".format(bet))
			straightUp[bet] = betPrompt()
			print("Ok, ${bet} on {num}.".format(bet=straightUp[bet], num=bet))
			continue
		else:
			print("Ending straight up number betting.")
			break

def split():
	global splits, splitBets
	while True:
		if len(splitBets) > 0:
			print("Current Bets:\n")
		for key in splitBets:
			if splitBets[key] > 0:
				print("${bet} on the {sp} Split.".format(bet=splitBets[key], sp=key))
		print("Type in the numbers you'd like to split separated by a hyphen:")
		bet = input("> ")
		if bet in splits:
			print("How much on the {} split?".format(bet))
			splitBets[bet] = betPrompt()
			if splitBets[bet] == 0:
				print("Taking down your {} bet.".format(bet))
			else:
				print("Ok, ${bet} on the {sp} Split.".format(bet=splitBets[bet], sp=bet))
			continue
		elif bet == 'cl':
			print("Clearing all your Split bets.")
			splitBets = {}
		elif bet == 'x':
			print("Exiting Split Bets...")
			break
		else:
			print("That's not a valid Split!")
			continue

def street():
	global streets, streetBets
	while True:
		if len(streetBets) > 0:
			print("Current Bets:\n")
		for key in streetBets:
			if streetBets[key] > 0:
				print("${bet} on Street {num}".format(bet=streetBets[key], num=key))
		print("Choose your Street:\n")
		for key in streets:
			print("\t{num}. Street {i}, {street}".format(num=key, i=streets[key][0], street=streets[key]))
		choice = input("> ")
		if choice == 'x':
			print("Finishing Street Betting...")
			break
		elif choice == 'c':
			print("Clearing your Street Bets.")
			streetBets = {}
			continue
		elif choice in streets:
			print("How much on Street {}?".format(choice))
			streetBets[choice] = betPrompt()
			if streetBets[choice] == 0:
				print("Taking down your Street {} bet.".format(choice))
			else:
				print("Ok, ${bet} on Street {num}.".format(bet=streetBets[choice], num=choice))
			continue
		else:
			print("Invalid entry! Try again!")
			continue

def corner():
	global corners, cornerBets
	while True:
		if len(cornerBets) > 0:
			print("Current Bets:\n")
		for key in cornerBets:
			if cornerBets[key] > 0:
				print("${bet} on Corner {num}.".format(bet=cornerBets[key], num=key))
		print("Choose your Corner Bet:\n")
		for key in corners:
			print("\t{key}. {val}.".format(key=key, val=corners[key]))
		choice = input("> ")
		if choice == 'x':
			print("Finishing Corner Betting...")
			break
		elif choice == 'cl':
			print("Clearing all your Corner Bets.")
			cornerBets = {}
			continue
		elif choice in corners:
			print("How much on Corner {}?".format(choice))
			cornerBets[choice] = betPrompt()
			if cornerBets[choice] == 0:
				print("Taking down your Corner {} bet.".format(choice))
			else:
				print("Ok, ${bet} on Corner {num}.".format(bet=cornerBets[choice], num=choice))
			continue
		else:
			print("That doesn't work! Try again.")
			continue

def line():
	global lines, lineBets
	while True:
		if len(lineBets) > 0:
			print("Current Bets:\n")
		for key in lineBets:
			print("${bet} on Line {num}.".format(bet=lineBets[key], num=key))
		print("Choose which Line to bet on:\n")
		for key in lines:
			print("{num}. {i}".format(num=key, i=list(lines[key])))
		choice = input("> ")
		if choice == 'x':
			print("Finishing Line Betting...")
			break
		elif choice == 'cl':
			print("Clearing your Line bets.")
			lineBets = {}
			continue
		elif choice in lines:
			print("How much on Line {}?".format(choice))
			lineBets[choice] = betPrompt()
			print("Ok, ${bet} on Line {num}.".format(bet=lineBets[choice], num=choice))
			continue
		else:
			print("That's not a Line! Try again.")
			continue
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