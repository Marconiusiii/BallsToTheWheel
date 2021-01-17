# Balls To The Wheel
Accessible Terminal-based Roulette game

## What is Roulette?

Roulette is a common casino game found around the world. It consists of a table that has 36 numbers laid out in a grid configuration 12 numbers across and 3 rows deep. The numbers 1-36 alternate between Red and Black, and there are two green spaces next to the first row of numbers for the 0 and Double-0.

Surrounding this grid of numbers are boxes and areas in which specific outside bets can be made. Players can make Inside bets by placing chips directly on any number, or using any of the inside betting methods, plus they can bet on any of the outside betting boxes.

Once bets have been made, a large wheel adjacent to the playing surface is spun, and the dealer places a small ball inside the inner rim of the wheel and spins it in a counter direction to the spin of the main wheel. The ball spins around the inner rim until gravity grabs it and pulls it down into the spinning wheel. The spinning part of the wheel has all 36 numbers plus the 0 and 00 randomly placed around the circumference, each number having a slot where the ball will eventually land. As the ball falls into the spinning wheel, it bounces around randomly until it slows down enough to be captured by one of the slots to pick a number.

The dealer marks the number on the play surface, removes all the losing bets, then pays out all the winnings bets. The table is cleared, and betting begins for the next spin.

## How to Play

Under construction! Coding game at the moment....


## Roulette Bets

### Outside Bets

These bets are located outside the grid of numbers on the table, hence "outside" bets.

#### Red/Black

Bet that the upcoming number is either Red or Black.

#### Even/Odd

Bet that the upcoming number is Even or Odd.

#### High/Low

Bet that the upcoming number is either Low (1-18) or High (19-36).

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

A vet on one specific number in the grid.

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

<table>
<caption>Accessible depiction of the Roulette number grid</caption>
<tbody>
<tr>
<td style="background-color: #006400; color: #fff;" rowspan="3">Green 0/00</td><td style="background-color: #8B0000; color: #fff;">Red 1</td><td style="background-color: #000; color: #fff;">Black 4</td><td style="background-color: #8B0000; color: #fff;">Red 7</td><td style="background-color: #000; color: #fff;">Black 10</td><td style="background-color: #8B0000; color: #fff;">Red 13</td><td style="background-color: #000; color: #fff;">Black 16</td><td style="background-color: #8B0000; color: #fff;">Red 19</td><td style="background-color: #000; color: #fff;">Black 22</td><td style="background-color: #8B0000; color: #fff;">Red 25</td><td style="background-color: #000; color: #fff;">Black 28</td><td style="background-color: #8B0000; color: #fff;">Red 31</td><td style="background-color: #000; color: #fff;">Black 34</td>
</tr><tr>
<td style="background-color: #000; color: #fff;">Black 2</td><td style="background-color: #8B0000; color: #fff;">Red 5</td><td style="background-color: #000; color: #fff;">Black 8</td><td style="background-color: #8B0000; color: #fff;">Red 11</td><td style="background-color: #000; color: #fff;">Black 14</td><td style="background-color: #8B0000; color: #fff;">Red 17</td><td style="background-color: #000; color: #fff;">Black 20</td><td style="background-color: #8B0000; color: #fff;">Red 23</td><td style="background-color: #000; color: #fff;">Black 26</td><td style="background-color: #8B0000; color: #fff;">Red 29</td><td style="background-color: #000; color: #fff;">Black 32</td><td style="background-color: #8B0000; color: #fff;">Red 35</td>
</tr>
<tr>
<td style="background-color: #8B0000; color: #fff;">Red 3</td><td style="background-color: #000; color: #fff;">Black 6</td><td style="background-color: #8B0000; color: #fff;">Red 9</td><td style="background-color: #000; color: #fff;">Black 12</td><td style="background-color: #8B0000; color: #fff;">Red 15</td><td style="background-color: #000; color: #fff;">Black 18</td><td style="background-color: #8B0000; color: #fff;">Red 21</td><td style="background-color: #000; color: #fff;">Black 24</td><td style="background-color: #8B0000; color: #fff;">Red 27</td><td style="background-color: #000; color: #fff;">Black 30</td><td style="background-color: #8B0000; color: #fff;">Red 33</td><td style="background-color: #000; color: #fff;">Black 36</td>
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