# Codebreaker game

## How to start working on your homework?
1. Fork this repo under your own name (see the refactoring exercise how this works)
2. `git clone` this repo on your laptop.

# The goal of the game
- The game knows a secret number.
- You should guess it.

Remember the game Mastermind?

![Mastermind image](https://upload.wikimedia.org/wikipedia/commons/thumb/2/2d/Mastermind.jpg/240px-Mastermind.jpg)

(CC BY-SA 2.0, https://commons.wikimedia.org/w/index.php?curid=75983)

CodeBreaker is Mastermind with numbers - in Ruby.

## How to play it?

If you guess, the game will inform with the plus sign (`+`) for any number that is an exact match. In the test suite we refer to this as an `exact match`.

The game will inform you with a minus sign (`-`) for any number that is present in the secret number, but is not on the right location. In the test suite, we refer to this as a `number match`.

The game will not give any output if you guess numbers that are not in the secret code.

### Run the program

```shell
$ bin/codebreaker

Welcome to Codebreaker
Enter guess:
1234
++-
1245
++++
```

In the first feedback, you see a result of two plusses and one minus. The numbers 1 and 2 are an exact match: these numbers are correct and on the correct place, the number 4 is present in the secret number, but on a different location.
The last feedback is all plusses, since you've magically guessed correct!

You can keep on guessing even after the program awards you an output of (`++++`).

If you (ever) get tired of the game you can quit it by hitting `CTRL`-`C`. We are building a game for terminal savvy developers :D

## Your assignment
Implement a matching algorithm (the `#guess` method), while being guided by a testsuite.

The contexts are prepended by a letter (e.g `[A] it works` or `[B] it works`). If you implementat of the `#guess` method in alphabetical order of these context, you start with low complexity. Each new context adds extra complexity. So, free advice: start with the tests under context 'A', and only after implementing that (with as little code as possible, not at all regarding the future contexts), you should move on to tests starting with 'B', et cetera.

While implementing the failing tests so they pass, keep thinking about the Red -> Green -> Refactor circle. So after a test passes, try to sniff out your code smells, and act on them.

If you're done implementing the tests in one context, make sure to...
* celebrate your progress
* eat some fruit
* hug your pet
* take a small walk outside to enjoy the rain/sun/snow/haze
* whatever, as long as you take a small break and keep on smiling.

## Evaluation goals:

We care about these things:

1. **quality over quantity** (that does not mean we don't value quantity, we just care more about the shape your code is in).
2. **working code**. You will not merge to master, unless your tests are passing, and the program can be run in the terminal.
3. **well factored code** (but that is the same thing as topic number 1...)

**Note:** If you want to refactor the spec file (there is a lot of duplication in there, since it is a learning exercise), that is fine by us. Please copy the original test file, and **refactor your copy**. We want to have an unchanged spec file so we can see what you've implemented of the original assignment. If you find any mistakes (I sure hope I didn't put any in the repo), you can do it in the original files - and please inform your fellow student in your slack channel!

## Submission

Please submit your homework by Sunday at 20:00. You can send mail to the `teachers` mailbox on `codaisseur.com`

Tuesday you will be evaluated by your teacher(s).

Good luck (and have fun)!

### Hints

- Regarding context A:
  - Just remove/or comment the line where we show you how to `puts` to our `output` object.
  - Remember that this is just Ruby. No Rails validators can be used here.
  - Read your spec file: Maybe it is enough to only consider the length of the string. Build the simpelest thing that works.
  - If you ever needed a guard-clause, these tests scream for such a thing.
- Regarding context B:
  - Implement it as simple as possible. Even if it feels like cheating. In the next contexts, you will re-evaluate your implementation anyway.
- Regarding context C, D, E, F:
  - The input of the user is a string. The secret number is also a string. Make sure to read the [Ruby docs on Strings](https://ruby-doc.org/core-2.4.1/String.html) on the methods you have on strings.
- Regarding context G:
  - run the program (`bin/codebreaker`), and check the input '1122' against the secret '4321'. Did the output meet your expectations?
  - to solve ther logical error, we have to check per digit in our `number guess` part if it is not already matched.
- Regading code coverage:
  - To see if all your code is executed in the tests, we've included a code-coverage tool. in your (MacOs) terminal type `open coverage/index.html`. In your linux terminal type `sensible-browser coverage/index.html`. Or just open that file with Chrome/Firefox. Click around to see what it means. A coverage of 100% is expected - don't add code you don't have tests for.

And some hints regarding ~~clean code~~ refactoring:
- Make your code more expressive by reducing your helper variables
- Make use of constants instead of magic numbers
- According to some, a class should not have more than 100 lines (including comments that is)
- According to some, a method should not have more than 5 lines (excluding comments that is)
- Please remove all comments and commented-out code blocks.
- Ask yourself the question: 'What does this method do?' If the answer has the word 'and' or 'or' in it, the method does not adhere to the Single Responsibility Principle. Refactor it by moving offending code to other (private) methods
- repeat that last thing about the whole Codebreaker::Game class. Maybe you need an extra class, so your classes also adhere to the SRP!
