$(document).on 'ajax:error', 'form[data-remote]', (e, xhr, status, error) ->
  e.preventDefault()
  $(this).replaceWith(xhr.responseText)
  $(document).trigger('turbolinks:load')
