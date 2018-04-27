$(document).on 'click', '[data-submit]', (e) ->
  e.preventDefault()
  event = new Event 'submit',
    view: window
    bubbles: true
    cancelable: true
  document.querySelector(e.currentTarget.dataset.target).dispatchEvent(event)
