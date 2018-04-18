# Challenge 1 – Change Making Problem

## Description:

Assuming an infinite supply of coins (1, 5, 10, 25 cent denominations), programmatically make change for N amount using the least amount of coins possible.

## Input:

You will be given two decimal values each representing total N cents to make change for.

## Example:
0.56
0.87

## Output:

Produce a list of the amount of denominations needed (e.g., A quarters, B dimes, C nickels, D pennies) such that (A * 0.25) + (B * 0.1) + (C * 0.05) + D = N.
Example:
2 quarters, 0 dimes, 1 nickels, 1 pennies
3 quarters, 1 dimes, 0 nickels, 2 pennies

## Challenge Input:

0.98
1.41


# Challenge 2 – Text Reflow

## Description:

Text reflow means to break up lines of text so that they fit within a certain width. It is useful in e.g. mobile browsers. When you zoom in on a web page the lines will become too long to fit the width of the screen, unless the text is broken up into shorter lines.

## Input:

You will be given a text with a line width exceeding 80 characters.
Example:
Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus bibendum lectus aliquam volutpat ultricies.

## Output:

Produce the same text with a maximum line width of 40 characters.
Example:
Lorem ipsum dolor sit amet, consectetur
adipiscing elit. Vivamus bibendum
lectus aliquam volutpat ultricies.

## Challenge Input:

Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus bibendum 
ectus aliquam volutpat ultricies. Ut quis augue quis mauris semper varius et ut
faucibus orci luctus et ultrices posuere cubilia Curae;
Praesent porttitor tristique faucibus. Curabitur commodo augue vitae lacus 
viverra maximus. Vestibulum ante "ipsum primis" in faucibus orci luctus et
ultrices posuere cubilia Curae; Curabitur eleifend at lacus ac mollis.


Challenge 3 – Light Switches

## Description:

When you were a little kid, was indiscriminately flicking light switches super fun? I know it was for me. Let's tap into that and try to recall that feeling with this challenge.
Imagine a row of N light switches, each attached to a light bulb. All the bulbs are off to start with. You are going to release your inner child so they can run back and forth along this row of light switches, flipping bunches of switches from on to off or vice versa. The challenge will be to figure out the state of the lights after this fun happens.

## Input:

The input will have two parts. First, the number of switches/bulbs (N) is specified. On the remaining lines, there will be pairs of integers indicating ranges of switches that your inner child toggles as they run back and forth. These ranges are inclusive (both their end points, along with everything between them is included), and the positions of switches are zero-indexed (so the possible positions range from 0 to N-1).

## Example:
10
3 6
0 4
7 3
9 9

## Output:

The output is a single number: the number of switches that are on after all the running around.
Example:
7
Explanation of example:
Below is a step by step rendition of which switches each range toggled in order to get the output described above.
    0123456789
    ..........
3-6    ||||
    ...XXXX...
0-4 |||||
    XXX..XX...
7-3    |||||
    XXXXX..X..
9-9          |
    XXXXX..X.X
As you can see, 7 of the 10 bulbs are on at the end.

## Challenge Input:

1000
616 293
344 942
27 524
716 291
860 284
74 928
970 594
832 772
343 301
194 882
948 912
533 654
242 792
408 34
162 249

