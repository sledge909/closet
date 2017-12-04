$(document).on 'click', '[data-show="tab"]', (e) ->
  e.preventDefault()
  console.log $(e.currentTarget).attr('href')
  $($(e.currentTarget).attr('href')).tab('show')

$(document).on 'form:reloaded', -> $('#subnav li:first a').tab('show')
