## Week 2 Homework - Due 02/12/17 at 11:59pm

Complete all the problems below. 100 Points total (20 pts each).

- Output your answers to the console using this format.

```
Question 1
olleh
dlrow

Question 2
j*v*scr*pt
*ng*l*r

...
```

- Use ES6 syntax. Make sure you are using `let`/`const` properly. Use `String`, `Object`, and `Array` methods.
- Absoultely **NO** use of `var`.
- Do not use a standard for-loop, e.g. `for (let i = 0; i < arr.length; i++)`.
- Use proper indentation or formatting. Incorrect formatting/indentation will lose some points.

#### 1. Write a function that takes a string and reverses it.

*Use only `String` or `Array` methods.*

```javascript
reverseWord('hello'); // olleh
reverseWord('world'); // dlrow
```

#### 2. Write a function that takes a string and replaces all the vowels with *.

*Use only `String` or `Array` methods.*

```javascript
replaceVowels('javascript'); // j*v*scr*pt
replaceVowels('angular');    // *ng*l*r
```

#### 3. Write a calculator class.

The class should optionally accept a number when instantiated. Use default values where applicable.
The class should have the following methods:

- `add()` - Adds a number to the total.
- `clear()` - Clears the total.
- `divide()` - Divides the total by a number.
- `multiply()` - Multiplys the total by a number.
- `print` - Prints the total.
- `subtract()` - Subtracts a number from the total.

```javascript
let calculator = new Calculator(2);

calculator
    .multiply(3)
    .add(10)
    .divide(2)
    .substract(4)
    .print  // 4
    .clear()
    .print; // 0

calculator = new Calculator();

calculator
    .multiply(3)
    .add(10)
    .divide(2)
    .substract(4)
    .print  // 1
    .clear()
    .print; // 0
```            

#### 4. Write a function that takes a 2D array and converts it to an object.

Each item in the array contains an array of only 2 items - the first item is the key and the second is the value

```javascript
const matrix = [['media', 'facebook'], ['company', 'github'], ['likes', 58445]];

convertToObject(matrix); // { media: 'facebook', company: 'github', likes: 58445 }
```

#### 5. Write a function that takes an object and converts it to a 2D array.

Each key, value pair in the object should be added to an array - the first item is the key and the second is the value. *Use object and array methods.*

```javascript
const object = { media: 'facebook', company: 'github', likes: 58445 };

convertToArray(object); // [['media', 'facebook'], ['company', 'github'], ['likes', 58445]]
```
