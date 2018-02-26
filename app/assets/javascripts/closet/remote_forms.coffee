$(document).on 'ajax:error', 'form[data-remote]', (e, xhr, status, error) ->
  if (status != 'abort' && error != 'abort')
    e.preventDefault()
    $(this).replaceWith(xhr.responseText)
    $(document).trigger('turbolinks:load')
