# hunteradamst1a3-terminal-app
Terminal App repo for Term 1 Assignment 3 Coder Academy

## Source Attribution:

All riddles used in the story were obtained from Readers Digest. You can check them out at this link:

https://www.rd.com/list/challenging-riddles/ 

## Application Features:

- App takes **five command line arguments** to be inputted by the user upon launch. If no CLAs are entered by the user, defaults will be assigned.

- The game is heavily directed by a **user input feature** where it accepts user input in two ways: multiple choice selection or entering a string.

- The game has a **Hit Points feature** where it will add, deduct and keep track of a HP variable that changes value throughout the game according user decisions.

- The game has a **percentage chance feature** where certain actions taken in dialogue will have a percentage chance of success.

- The game has an **inbuilt help text file** that can be called in-game to explain the game at the beginning.

- The game has an **exit feature** whereby the user can opt to exit the game at any point where they are prompted for input.

- There is a **minigame feature** in the form of three riddles that the user must answer to progress.

- The game contains **ascii art** and **multicoloured strings/prompts**.

### A Note about Variables:

The game uses variables to keep track of user HP, and for the program to know the item that the user selects to take with them on their journey. There are also loop variables assigned within the control flow statements to interact with user choice when it is entered/selected.

### A Note about Control Flow:

The game relies *heavily* on control flow statements: case statements, loops, iterators and embedded `if/else` statements. The program is comprised mostly of these.

### A Note about Error Handling

The game contains a few error handling statements mostly for file LoadErrors when the file is called. Most of the error handling for the game itself, though, I have handled with loops and `if/else` statements. The gem TTY Prompt handles the errors for multiple choice questions. The game should run seamlessly.


# HELP  DOCUMENTATION

## Steps to install the application:

1. Unzip the zip file
2. Make sure all gem dependencies are installed **(See Gem Dependencies section for gem requirements)**
3. From here you can load the file in two ways:
- You can use the bash script by running `temple_island.sh` from the terminal when you are in the `HunterAdams_T1A3/src` directory. Make sure you have the correct permissions to do this. 
**PLEASE NOTE:** *running it this way will not allow for command line arguments to be inputted, and will use the defaults. If you want a truly personalized user experience, do the following to run the program instead:*

- Go to the `HunterAdams_T1A3/src` directory. From there, type `ruby story.rb` into the terminal with **five** command line arguments (command line arguments are optional, **see bottom of this file for command line argument instructions**)

3. Enjoy the story! Follow along in the prompts and remember that you can type `help` and push `Enter` when you are prompted for input to get some help with the game at the beginning. Also remember that you can type `exit` at any point that you are asked for input, and the game will quit.

## Gem Dependencies (IMPORTANT!!!!)

This game **requires** the following Ruby Gems to run properly:

- `colorize 0.8.1`
- `tty-box 0.7.0, 0.4.1`
- `tty-font 0.5.0, 0.4.0`
- `tty-promt 0.23.1, 0.21.0`

## System Requirements (Recommended, MAC)

- **OS:** macOS Monterey Version 12.2
- **Processor:** 2.9GHz Dual-Core Intel Core i5
- **Memory** 8GB 2133 MHz LPDDR3
- **Graphics** Intel Iris Graphics 550 1536 MB

## Command Line Arguments

When you launch `story.rb` from your command line, before you push `Enter` to run the program, you can input **five** command line arguments to enhance your experience. The five arguments represent (in order): `Your name, your favourite thing, the weather, your mood, and your pets name`. Please enter **one** word for each argument, followed by a space. So if my name was MoobHoob, my command line would like this when I push `Enter`:

`ruby story.rb moobhoob writing rainy sleepy joob`

So my name is `moobhoob`, my favourite thing is `writing`, the weather is `rainy`, my mood is `sleepy`, and my pet's name is `joob`.

Make sense? If you opt not to use command line arguments, don't worry! Defaults will be assigned in this case so don't stress if you launch it without them.
