## Week 3 Homework - Due 02/19/17 at 11:59pm

Complete all the problems below:

- Use ES6 syntax. Make sure you are using `let`/`const` properly. Absoultely **NO** use of `var`.
- Use proper indentation or formatting.

#### 1. (30 pts) Write a function that counts down from 5.

Call this funciton only once. It should then the countdown from 5 to 1 and print each number to the console.

```javascript
countDown(5);
// 5
// 4
// 3
// 2
// 1
```

#### 2. (35 pts) Write a function that evaluates a letter using Promises.

If the letter is lowercase then it resolves. If the letter is uppercase then it rejects. Write another function that takes an array of letters as an argument and uses your Promise function, and is able to print the results.
Do **NOT** write 26 `if` or `switch` statements. Meaning **NO**: `if (letter === 'A' || letter === 'B' ... || letter === 'Z')`

```javascript
const letters = ['A', 'b', 'c', 'D', 'e'];

sortLetters(letters);
// This letter was rejected: A
// This letter was resolved: b
```

#### 3. (35 pts) Write a series of functions that utilize callbacks to determine a word is a palidrome.

Each function should call the next in the series.

- `compare()` - Compares the reversed word to the original.
- `print()` - Prints the answer to the console.
- `reverseWord()` - Reverses the word.

```javascript
print('kayak'); // true
print('canoe'); // false
```

> **Extra Credit** (15 pts) Write a function that is able to call each of the functions in Q1-Q3 and print the answers in order. *Hint: You will need to use promises or callbacks in all the previous homework functions to achieve this.*
> Do not use `setTimeout()` or `setInterval()` as a solution for the extra credit; **NO** credit will be given for `setTimeout()` or `setInterval()`.
