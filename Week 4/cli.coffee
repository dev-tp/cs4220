yargs = require 'yargs'

hangman = require './app'


flag = yargs
  .usage('USAGE: $0 -d <level>')
  .option('h', {
    alias: 'help'
    describe: 'Displays this message'
  })
  .option('d', {
    alias: 'difficulty'
    describe: 'Dificulty of words: easy or hard'
  })
  .argv

if flag.help
  do yargs.showHelp

if flag.difficulty
  if flag.difficulty == 'easy'
    hangman.run 'easy'
  else
    hangman.run 'hard'
