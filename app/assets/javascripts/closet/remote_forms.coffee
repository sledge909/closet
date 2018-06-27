rails_ujs = typeof Rails # Check If Rails ujs is used if not default to jQuery_ujs
if (rails_ujs == 'object')
  $(document).on 'ajax:error', 'form[data-remote]', (e) ->
    [data, status, xhr] = e.detail
    if (status != 'abort')
      e.preventDefault()
      $(this).replaceWith(xhr.response)
      $(document).trigger('turbolinks:load')
else
  $(document).on 'ajax:error', 'form[data-remote]', (e, xhr, status, error) ->
    if (status != 'abort' && error != 'abort')
      e.preventDefault()
      $(this).replaceWith(xhr.responseText)
      $(document).trigger('turbolinks:load')
