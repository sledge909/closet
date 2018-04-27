$(document).on 'click', '[data-submit]', (e) ->
  e.preventDefault()
  document.querySelector(e.currentTarget.dataset.target).dispatchEvent(new Event('submit'))
