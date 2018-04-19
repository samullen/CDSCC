# Thoughts and comments

I had weirder files names originally, but wanted to make sure things were easy
enough to run. I don't normally get funky with naming, but this is play so I
can.

# Challenge 1 – Change Making Problem

This was the first challenge, and I was looking for a quick win to get me into
a good frame of mind. Nothing fancy here, just a hash and an if statement. I
could have used an iterator, but the likelihood of using smaller numbers let me
believe that recursion would work just as well, and it was easier to reason
about.

Wasn't sure from the specs if it was supposed to take multiple lines of change
or not. It seemed odd to want that, so I opted for only accepting single
quantities.

## Usage:

```
ruby challenge1.rb <float>

# Examples:

ruby challenge1.rb 0.98
ruby challenge1.rb 1.21
ruby challenge1.rb 0.56
ruby challenge1.rb 0.87
```

# Challenge 2 – Text Reflow

I had plans on writing this recursively as well, but I had a sneaking suspicion
that I could get away with a regex instead. If it hadn't worked, I could have
created another recursive method to chop up the incoming text. Neither the regex
nor this latter case would be useful for large text files (memory hogs). In
those cases, you'd want to fall back to lower level IO methods.

Challenge2 takes piped input. It can either be provided by want of piping a
file's contents into the challenge...

```
cat file_with_contents.text | ruby challenge2.rb
```

...or by running the script, typing in the content, and submitting it with
ctrl-d.

```
$ ruby challenge2.rb
Lorem ipsum dolor sit amet, ullum phaedrum in est, sit viris dissentiunt eu. Ad qui aperiri senserit necessitatibus. In ferri persius vel, te option saperet pertinacia sit. At duis nulla zril per. Alienum accumsan qui ei, at quem constituto pri, ei facer libris cum. Doctus integre blandit pri an, quas intellegam quaerendum eu per.
^D
```

# Challenge 3 – Light Switches

Not much to say about the third challenge. I used the XOR bitwise operator to
toggle the switches on and off. Never had to use that before, so that was fun to
get to play with

This challenge is similar to the second challenge in how it can take data.

```
cat switch_input.txt | ruby challenge3.rb
```

...or...

```
ruby challenge3.rb
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
^D
```

# Tests

I wrote tests for all the methods. They can be run with the following command:

```
ruby challenge_methods_test.rb
```
