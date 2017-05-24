## Week 4 Homework - Due 3/05/17 at 11:59pm (100 pts)

Create a Mystery Word Game.

Your homework should contain the following files on a zip file when turned in:

- app.js
- cli.js
- package.json
- wordlist.txt

#### Guidelines

1. The app should run from the command line.

    - The app should display a help menu by typing: `node cli.js -h`.
    - The app should allow you to pick a difficulty (easy or hard): `node cli.js --difficulty easy` or `node cli.js -d easy`.

2. Based on the diffculty the app should pick a word at random. Using the words.js file on GitHub.

    - The word should **NOT** be hard coded.
    - All words for the app to use should be contained in a separate file(s).

3. The app should follow the rules that are outlined in the below section on *How the Game is Played*.

4. While playing the game the user should be able to:

    - Get a hint.
        - Fills in a letter that is contained the least amount of times in a word and then closest to the start of the word.
        - E.g. *If the mystery word is: amazon, the the hint would fill in 'm'. If another hint is asked for then 'z'. If the mystery word is: books, the the hint would fill in 'b'. If another hint is asked for then 'k'.*
    - View the letters guessed.
    - View how many guess until game ends

5. At the end of a game (win or lose) the app should prompt the user to ask if they want to play a new game. If true, a new game is started; otherwise, exit the program.

#### How the Game Is Played

The program random picks a word and prints a row of low dashes ( _ ), giving the number of letters in the word.

- Example: The mystery word is amazon.
- The game prints: _ _ _ _ _ _

The guessing player now guesses a letter, asks for a hint or views previously guessed letters.

If the guessing player guesses a letter which occurs in the word, the program displays it in the correct position(s). And the player does not lose a guess.

- Example: Player guesses 'a'.
- Prints: a _ a _ _ _

If the suggested letter does not occur in the word, the player loses a guess.
The game is over when the guessing player completes the word or the guessing player has used 4 guesses.

> **Extra Credit** Update your `console.log`s to print in color.
> - Game board prints in yellow
> - Win message prints in green.
> - Lose message prints in red.
> - Previously guessed letters prints in blue.
