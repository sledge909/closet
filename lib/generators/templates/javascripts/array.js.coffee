Array.prototype.clean = ->
  newArray = []
  for item in this
    newArray.push item if item
  newArray

unless typeof [].includes == 'function'
  Array.prototype.includes = (item) ->
    this.indexOf(item) != -1
