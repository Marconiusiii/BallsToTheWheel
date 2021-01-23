# Balls To The Wheel
Accessible Terminal-based Roulette game

## What is Roulette?

Roulette is a common casino game found around the world. It consists of a table that has 36 numbers laid out in a grid configuration 12 numbers across and 3 rows deep. The odd numbers between 1-10 and 19-28 are Red, while the odd numbers between 11-19 and 29-36 are Black, creating an alternating Red/Black pattern across the span of numbers, and there are two green spaces next to the first row of numbers for the 0 and Double-0.

Surrounding this grid of numbers are boxes and areas in which specific outside bets can be made. Players can make Inside bets by placing chips directly on any number, or using any of the inside betting methods, plus they can bet on any of the outside betting boxes.

Once bets have been made, a large wheel adjacent to the playing surface is spun, and the dealer places a small ball inside the inner rim of the wheel and spins it in a counter direction to the spin of the main wheel. The ball spins around the inner rim until gravity grabs it and pulls it down into the spinning wheel. The spinning part of the wheel has all 36 numbers plus the 0 and 00 randomly placed around the circumference, each number having a slot where the ball will eventually land. As the ball falls into the spinning wheel, it bounces around randomly until it slows down enough to be captured by one of the slots to pick a number.

The dealer marks the number on the play surface, removes all the losing bets, then pays out all the winnings bets. The table is cleared, and betting begins for the next spin.

## How to Play

Balls to the Wheel will first prompt you to enter a bankroll. Type in how much you'd like to start with and hit Enter. Off you go!

The game is played via a series of commands entered through prompts.  Simply enter the code for the bet you want at the Place Your Bets prompt and hit Enter, then follow the instructions.

### Place Your Bets!

This the main prompt for the game and will be the first one you encounter after entering your bankroll or spinning the wheel. This is where you'll enter the various betting modes, check what bets you have placed, toggle verbose mode, and pull up the Help prompt to check the bet codes if needed.
* 'a': Show all your bets.
* 'c': Show how much money you have out on the table.
* 'v': Toggle verbose mode, where more details oabout the resulting number after the spin will be shown.
* 'x': Finish betting and spin the wheel!

### Outside Bets

* '0': Bet on 0.
* '00': Bet on DOuble-zero.
* 'r': Bet on Red.
* 'b': Bet on Black.
* 'e': Bet on Even.
* 'o': Bet on Odd.
* 'c1' 'c2' c3': Bet on Columns 1-3; c1 = Column 1, c2 = Column 2, c3 = Column 3.
* 'd1' 'd2' 'd3': Bet on Dozens. d1 = Numbers 1-12, d2 = Numbers 13-24, d3  = 25-36.
* 'h1' 'h2': Bet on the 1st or 2nd half of the numbers, also known as Low/High.

### Inside Bets

All bets made within the number grid itself.

* 'tl': Top Line bet; makes a bet on the 0, 00, 1, 2, and 3.
* 'bk': Basket bet; a bet on the 0, 1, 2, and 3.
* 'sn': Snake bet; a bet on the numbers 1, 5, 9, 12, 14, 16, 19, 23, 27, 30, 32, and 34.

### Special Inside Bets

Each of these bets will open up their own prompts. For all of these, you'll be given a choice to enter and then be prompted to put in the amount you want on the chosen bet. For all these bet types, typing 'cl' and hitting ENter will clear all the bets of that type when in the prompt.

type 'x' and hit Enter to leave the betting mode and return to the main game screen.

#### Straight Up

'n': Typing 'n' and hitting Enter from he Place Your Bets prompt will open the Straight Up betting prompt. Enter any number between 1-36 to bet directly on it.

#### Splits

'sp': Type 'sp' and hit Enter to go into Split Betting mode. Splits are bets between two adjacent numbers that are touching on the grid. Enter the two numbers you want to split with a hyphen between them. For example, '1-2', '19-20', '9-12' and so on. Make sure to put the lower number first. There are 56 split combinations across the table, including the 0-00 split. 0 and 00 do not split with any other numbers except for themselves.

#### Streets

'st': Typing 'st' and hitting Enter from the main prompt will open up Street Betting. Streets are vertical groups of 3 numbers that you can bet on across the table. Street 1 contains the numbers 1, 2, and 3, etc. The prompt will show you exactly which numbers each street contains. Type the number of the Street you want to bet on and hit Enter to bring up the betting prompt, then enter the amount you want for that bet. There are 12 Streets across the table.

#### Corner Bets

'co': Typing 'co' and hitting Enter will open Corner Betting mode. Corners are groups of 4 adjacent numbers that are touching on the table. Corner 1 contains the numbers 1, 2, 4, and 5 for example. Each corner will be described in the prompt. There are 22 Corners to choose from across the table.

#### Line Bets

'l': Line bets are bets on two adjacent streets, so vertical blocks of 6 numbers. There are only 6 lines on the table; Line 1 contains the numbers 1 through 6, for example.

### Finish Betting and Spin the Wheel!

Once you are done placing your bets, typing 'x' and hitting Enter from the Place Your Bets prompt screen will spin the wheel. The ball will land on a number, your winning bets will get added to your bank, your losses will be subtracted, and all your bets are cleared and ready for the next round of betting.

Verbose mode will call out the details of the spin, such as Red or Black, Even or Odd, High or Low, the Column, and the Street the number was in.

## Roulette Bets

Here are more details about the individual bets you can make in both this game and Roulette in general.

### Outside Bets

These bets are located outside the grid of numbers on the table, hence "outside" bets.

#### Red/Black

Bet that the upcoming number is either Red or Black.

#### Even/Odd

Bet that the upcoming number is Even or Odd.

#### High/Low, 1st and 2nd Half

Bet that the upcoming number is either Low (1-18) or High (19-36). Also known as the 1st and 2nd Half of the numbers.

#### Columns

Any or all of the 3 columns that make up the Roulette number grid can be bet for the upcoming number.
* Column 1
	- Contains numbers 1, 4, 7, 10, 13, 16, 19, 22, 25, 28, 31, 34
* Column 2
	- Covers numbers 2, 5, 8, 11, 14, 17, 20, 23, 26, 29, 32, 35
* Column 3
	- Covers numbers 3, 6, 9, 12, 15, 18, 21, 24, 27, 30, 33, 36

#### Dozens

These bets cover the first, second, and third dozens of the numbers that make up the Roulette grid.

* First Dozen: 1-12
* Second Dozen: 13-24
* Third Dozen: 25-36

### Inside Bets

All of these bets are placed within the grid of numbers and on the numbers themselves, hence "Inside" bets.

#### Straight Up

A vet on one specific number in the grid. Any or all of the numbers between 1-36 can be bet on individually.

#### Splits

A bet on two adjacent numbers. The numbers must be touching on the grid, but can be made in any direction. 1-2 and 1-4 are valid Splits, for example.

#### Streets

A bet on a vertical row of three numbers; 1-2-3, 4-5-6, and so on.

#### Corners

A bet on four numbers that all share the same corners/are touching. 1-2||4-5, 29-30||32-33, etc.

#### Lines

Betting on 6 numbers in two vertically adjacent rows. 1-2-3+4-5-6, for example.

#### Top Line

A bet that covers the 0, 00, 1, 2, and 3 together.

#### Basket

A bet that covers 0, 1, 2, and 3 together.

#### Snake 

A bet that covers the numbers  1, 5, 9, 12, 14, 16, 19, 23, 27, 30, 32, and 34. So named because of the snake-like pattern that the bets create across the table when placed.

## Roulette Number Grid Layout

Navigate this table to check out how the numbers are arranged across the game table. On github, this works better with screen readers with the browser set to Reader mode.

<table>
<caption>Accessible depiction of the Roulette number grid</caption>
<tbody>
<tr>
<td style="background-color: DarkGreen; color: #fff" rowspan="3">Green 0/00</td><td style="background-color: #8b0000; color: #fff">Red 1</td><td style="background-color: #000; color: #fff">Black 4</td><td style="background-color: #8b0000; color: #fff">Red 7</td><td style="background-color: #000; color: #fff">Black 10</td><td style="background-color: #000; color: #fff">Black 13</td><td style="background-color: #8b0000; color: #fff">Red 16</td><td style="background-color: #8b0000; color: #fff">Red 19</td><td style="background-color: #000; color: #fff">Black 22</td><td style="background-color: #8b0000; color: #fff">Red 25</td><td style="background-color: #000; color: #fff">Black 28</td><td style="background-color: #000; color: #fff">Black 31</td><td style="background-color: #8b0000; color: #fff">Red 34</td>
</tr>
<tr>
<td style="background-color: #000; color: #fff">Black 2</td><td style="background-color: #8b0000; color: #fff">Red 5</td><td style="background-color: #000; color: #fff">Black 8</td><td style="background-color: #000; color: #fff">Black 11</td><td style="background-color: #8b0000; color: #fff">Red 14</td><td style="background-color: #000; color: #fff">Black 17</td><td style="background-color: #000; color: #fff">Black 20</td><td style="background-color: #8b0000; color: #fff">Red 23</td><td style="background-color: #000; color: #fff">Black 26</td><td style="background-color: #000; color: #fff">Black 29</td><td style="background-color: #8b0000; color: #fff">Red 32</td><td style="background-color: #000; color: #fff">Black 35</td>
</tr>
<tr>
<td style="background-color: #8b0000; color: #fff">Red 3</td><td style="background-color: #000; color: #fff">Black 6</td><td style="background-color: #8b0000; color: #fff">Red 9</td><td style="background-color: #8b0000; color: #fff">Red 12</td><td style="background-color: #000; color: #fff">Black 15</td><td style="background-color: #8b0000; color: #fff">Red 18</td><td style="background-color: #8b0000; color: #fff">Red 21</td><td style="background-color: #000; color: #fff">Black 24</td><td style="background-color: #8b0000; color: #fff">Red 27</td><td style="background-color: #8b0000; color: #fff">Red 30</td><td style="background-color: #000; color: #fff">Black 33</td><td style="background-color: #8b0000; color: #fff">Red 36</td>
</tr>
</tbody>
</table>

## Pay Table

<table>
<caption>Roulette Outside Bets and Payouts</caption>
<thead>
<tr>
<th scope=:col">Bet</th><th scope="col">Payout</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">Red/Black</th><td>1:1</td>
</tr>
<tr>
<th scope="row">Even/Odd</th><td>1:1</td>
</tr>
<tr>
<th scope="row">High/Low</th><td>1:1</td>
</tr>
<tr>
<th scope="row">Columns</th><td>2:1</td>
</tr>
<tr>
<th scope="row">Dozens</th><td>2:1</td>
</tr>
</tbody>
</table>

<table>
<caption>Roulette Inside Bets and Payouts</caption>
<thead>
<tr>
<th scope="col">Bet</th><th scope="col">Payout</th>
</tr>
</thead>
<tbody>
<tr>
<th scope="row">Straight Up/One Number</th><td>35:1</td>
</tr>
<tr>
<th scope="row">Splits</th><td>17:1</td>
</tr>
<tr>
<th scope="row">Streets</th><td>11:1</td>
</tr>
<tr>
<th scope="row">Corners</th><td>8:1</td>
</tr>
<tr>
<th scope="row">Lines</th><td>5:1</td>
</tr>
<tr>
<th scope="row">Top Line</th><td>6:1</td>
</tr>
<tr>
<th scope="row">Basket</th><td>6:1</td>
</tr>
<tr>
<th scope="row">Snake</th><td>2:1</td>
</tr>
</tbody>
</table>

Enjoy, and thanks for playing!