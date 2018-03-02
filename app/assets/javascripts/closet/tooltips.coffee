$(document).on 'turbolinks:load', ->
  $('[data-toggle="tooltip"]').tooltip(boundary: 'viewport')
