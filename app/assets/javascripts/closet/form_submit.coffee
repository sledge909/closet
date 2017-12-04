$(document).on 'click', '[data-submit]', (e) ->
  e.preventDefault()
  $($(this).data('target')).trigger 'submit'
