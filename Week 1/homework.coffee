reverseWord = (word) ->
  reversedWord = ''

  for i in [word.length-1..0]
    reversedWord += word[i]

  reversedWord


replaceVowels = (word) ->
  replacedVowels = ''
  vowels = ['A', 'E', 'I', 'O', 'U', 'a', 'e', 'i', 'o', 'u']

  for letter in word
    replacedVowels += if letter in vowels then '*' else letter

  replacedVowels


countLetters = (letters) ->
  hashmap = {}

  for letter in letters
    if hashmap[letter]
      hashmap[letter]++
    else
      hashmap[letter] = 1

  hashmap


oddsAndEvens = (numbers) ->
  evens = []
  odds = []

  for number in numbers
    if number % 2 == 0
      evens.push number
    else
      odds.push number

  console.log 'evens:', evens
  console.log 'odds:', odds


average = (list) ->
  counter = 0
  total = 0

  for item in list
    number = parseInt item

    if not isNaN number
      total += number
      counter++

  total / counter


markupValue = (cars, markupValue) ->
  result =
    cars: []
    total: 0.0

  for i in [0...cars.length]
    calculatedMarkupValue = (1 + markupValue) * cars[i].wholesale

    car = {}
    car[cars[i].type] = calculatedMarkupValue
    result.cars.push car

    result.total += calculatedMarkupValue

  result


console.log 'Question 1'
console.log reverseWord 'hello'
console.log reverseWord 'world'

console.log "\nQuestion 2"
console.log replaceVowels 'javascript'
console.log replaceVowels 'angular'

console.log "\nQuestion 3"
console.log countLetters ['z', 'y', 'x', 'x', 'w', 'z', 'y', 'u', 'y', 'y']

console.log "\nQuestion 4"
oddsAndEvens [21, 99, 43, 1, 8, 2, 48, 82]

console.log "\nQuestion 5"
console.log average [3, 9, 'hello', 4, '95', 'abc', '1', 8, { key: 'value' }]

cars = [
  { type: 'hybrid', wholesale: 25000 }
  { type: 'minivan', wholesale: 28000 }
  { type: 'sedan', wholesale: 31500 }
  { type: 'convertible', wholesale: 45750 }
]

console.log "\nQuestion 6"
console.log markupValue(cars, 10.5)
