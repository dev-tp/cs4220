reverseWord = (word) -> word.split('').reverse().join ''


replaceVowels = (word) -> word.replace /[AEIOUaeiou]/g, '*'


class Calculator
  constructor: (@value = 0) ->

  add: (value) ->
    @value += value
    this

  clear: ->
    @value = 0
    this

  divide: (value) ->
    @value /= value if value != 0
    this

  multiply: (value) ->
    @value *= value
    this

  substract: (value) ->
    @value -= value
    this

  print: ->
    console.log @value
    this


convertToObject = (mediaArray) ->
  result = {}

  mediaArray.forEach (media) -> result[media[0]] = media[1]

  result


convertToArray = (mediaObject) ->
  result = []

  Object.keys(mediaObject).forEach (key) ->
    result.push [key, mediaObject[key]]

  result

console.log 'Question 1:'
console.log reverseWord 'hello'
console.log reverseWord 'world'

console.log "\nQuestion 2:"
console.log replaceVowels 'javascript'
console.log replaceVowels 'angular'

console.log "\nQuestion 3:"
calculator = new Calculator 2

calculator
  .multiply(3)
  .add(10)
  .divide(2)
  .substract(4)
  .print()
  .clear()
  .print()

calculator = new Calculator

calculator
  .multiply(3)
  .add(10)
  .divide(2)
  .substract(4)
  .print()
  .clear()
  .print()

do console.log

result = convertToObject [['media', 'facebook'], ['company', 'github'], ['likes', 58445]]
console.log "Question 4:\n#{JSON.stringify result}\n"

result = convertToArray { media: 'facebook', company: 'github', likes: 58445 }
console.log "Question 5:\n", result
