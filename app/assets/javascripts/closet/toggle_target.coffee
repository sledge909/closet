$(document).on 'change', '[data-enable-target-if-checked]', (e) ->
  els_to_enable = $(e.currentTarget).data('enable-target-if-checked')
  if ($(e.currentTarget).is(':checked'))
    $(els_to_enable).prop('disabled', false)
  else
    $(els_to_enable).prop('disabled', true)

$(document).on 'change', '[data-disable-target-if-checked]', (e) ->
  els_to_disable = $(e.currentTarget).data('disable-target-if-checked')
  if ($(e.currentTarget).is(':checked'))
    $(els_to_disable).prop('disabled', true)
  else
    $(els_to_disable).prop('disabled', false)
