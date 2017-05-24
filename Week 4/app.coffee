colors = require 'colors'
inquirer = require 'inquirer'

wordlist = require './wordlist'


class Game
  constructor: (@level) ->
    @attemptCount = 4
    @word = do @getRandomWord
    @locations = {}
    # Use 'fat' arrow to automatically binding the lambda to @
    @secretWord = @word.map (character, index) =>
      if character of @locations
        @locations[character].push index
      else
        @locations[character] = [index]
      return '_'
    # @guessedLetters =
    #   right: []
    #   wrong: []
    @guessedLetters = []

  getRandomWord: ->
    words = if @level == 'easy' then wordlist.easy else wordlist.hard
    word = words[Math.floor Math.random() * words.length].toLowerCase()

    word.split ''

  guessLetter: ->
    inquirer.prompt([{
      type: 'input',
      name: 'letter',
      message: '>>> ',
      filter: (input) ->
        if input == ''
          alphabet = 'abcdefghijklmnopqrstuvwxyz'
          return alphabet[Math.floor Math.random() * alphabet.length]
        return do input[0].toLowerCase
    }]).then (response) =>
      winOrLose = false

      if @guessedLetters.indexOf(response.letter) == -1
        @guessedLetters.push(response.letter)
      else
        do @prompt
        return

      if response.letter of @locations
        @locations[response.letter].forEach (index) =>
          @secretWord[index] = response.letter

        if @secretWord.join('') == @word.join('')
          console.log "You win!\n".green
          winOrLose = true
      else
        if --@attemptCount == 0
          console.log 'You lose!'.red
          console.log "The word was #{@word.join ''}\n".red
          winOrLose = true

      if winOrLose
        do @promptToPlayAgain
        return

      do @prompt

  hint: ->
    underscores = (index for character, index in @secretWord when character == '_')

    if underscores.length > 1
      r = Math.floor Math.random() * underscores.length
      @secretWord[underscores[r]] = @word[underscores[r]]

    do @prompt

  prompt: ->
    console.log "\n#{@secretWord.join ' '}\n".yellow

    inquirer.prompt([{
      type: 'list',
      name: 'option',
      message: 'What do you want to do?',
      choices: [
        'Enter a letter'
        'Get a hint'
        'View guessed letters'
        'Attempts left'
      ]
    }]).then (response) =>
      if response.option == 'Enter a letter'
        do @guessLetter  # Same as @guessLetter()
      else if response.option == 'Get a hint'
        do @hint
      else if response.option == 'View guessed letters'
        console.log "\nGuessed letters: #{@guessedLetters.join ' '}".blue
        do @prompt
      else
        attempt = if @attemptCount == 1 then 'attempt' else 'attempts'
        numberOfAttempts = @attemptCount.toString().yellow
        console.log "\nYou have #{numberOfAttempts} more #{attempt}"
        do @prompt

  promptToPlayAgain: ->
    inquirer.prompt([{
      type: 'list',
      name: 'playAgain',
      message: 'Would you like to play again?',
      choices: ['Yes', 'No']
    }]).then (response) =>
      if response.playAgain == 'Yes'
        @constructor @level  # Reset game
        do @prompt


run = (level) ->
  game = new Game level

  game.prompt()


module.exports.run = run
