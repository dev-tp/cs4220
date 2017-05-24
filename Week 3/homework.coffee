countDown = (count, callback) ->
  interval = setInterval(( ->
    if count == 0
      console.log 'D\u00e9collez!'
      do callback
      clearInterval interval
    else
      console.log count--
  ), 500)


sortLetters = (letters, callback) ->
  sort = (character) ->
    new Promise (resolve, reject) ->
      code = character.charCodeAt 0

      if 65 <= code and code <= 90
        reject "This letter was rejected: #{character}"
      else
        resolve "This letter was resolved: #{character}"

  promises = letters.map (letter) ->
    sort(letter).catch (error) -> error

  Promise.all(promises).then (results) ->
    results.forEach (result) -> console.log result
    callback()


compare = (a, b) -> a == b


reverseWord = (word, callback) ->
  callback word, word.split('').reverse().join ''


print = (word) -> console.log reverseWord word, compare


printProblemsInOrder = ->
  console.log 'Problem 1:'
  countDown 5, ->
    console.log "\nProblem 2:"
    sortLetters ['A', 'b', 'c', 'D', 'e'], ->
      console.log "\nProblem 3:"
      print 'kayak'
      print 'canoe'


printProblemsInOrder()
