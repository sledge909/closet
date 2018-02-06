$(document).on 'change', '[data-enable-target-if-checked]', (e) ->
  els_to_enable = $(e.currentTarget).data('enable-target-if-checked')
  toggleDisabled(els_to_enable, !($(e.currentTarget).is(':checked')))

$(document).on 'change', '[data-disable-target-if-checked]', (e) ->
  els_to_disable = $(e.currentTarget).data('disable-target-if-checked')
  toggleDisabled(els_to_disable, ($(e.currentTarget).is(':checked')))

$(document).on 'change', '[data-show-target-if-checked]', (e) ->
  els_to_show = $(e.currentTarget).data('show-target-if-checked')
  toggleVisible(els_to_show, ($(e.currentTarget).is(':checked')))

$(document).on 'change', '[data-hide-target-if-checked]', (e) ->
  els_to_hide = $(e.currentTarget).data('hide-target-if-checked')
  toggleVisible(els_to_hide, !($(e.currentTarget).is(':checked')))

toggleDisabled = (el, flag) ->
  $(el).prop('disabled', flag)

toggleVisible = (el, flag) ->
  if (flag)
    $(el).show()
  else
    $(el).hide()
