$(document).on 'shown.bs.modal', '[data-sub-modal]', ->
  $('body').addClass 'modal-open'

$(document).on 'turbolinks:load', ->
  anchor = window.location.hash.substr(1)
  if anchor.length && document.querySelectorAll("##{anchor}.modal").length
    $("##{anchor}").modal('show')

$(document).on 'ajax:beforeSend', '[data-modal]', (e, xhr, settings) ->
  if ((typeof Rails) == 'object')
    [xhr, options] = e.detail
  xhr.setRequestHeader 'X-Modal', 'true'

$(document).on 'ajax:success', '[data-modal]', (e, data, status, xhr) ->
  if ((typeof Rails) == 'object')
    [data, status, xhr] = e.detail
  $modal = $(xhr.responseText)
  $('body').append($modal)
  $modal.modal('show')
  $modal.on 'hidden.bs.modal', (event) ->
    $(this).remove()
