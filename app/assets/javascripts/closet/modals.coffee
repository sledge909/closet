$(document).on 'shown.bs.modal', '[data-sub-modal]', ->
  $('body').addClass 'modal-open'

$(document).on 'turbolinks:load', ->
  anchor = window.location.hash.substr(1)
  $("##{anchor}").modal('show') if anchor.length

$(document).on 'ajax:beforeSend', '[data-modal]', (e, xhr, settings) ->
  xhr.setRequestHeader 'X-Modal', 'true'

$(document).on 'ajax:success', '[data-modal]', (e, data, status, xhr) ->
  $modal = $(xhr.responseText)
  $('body').append($modal)
  $modal.modal('show')
  $modal.on 'hidden.bs.modal', (event) ->
    $(this).remove()
