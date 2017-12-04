$(document).on 'shown.bs.modal', '[data-sub-modal]', ->
  $('body').addClass 'modal-open'

$(document).on 'turbolinks:load', ->
  anchor = window.location.hash.substr(1)
  $("##{anchor}").modal('show') if anchor.length
