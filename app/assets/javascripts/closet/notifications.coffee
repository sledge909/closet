class @Notifications
  containerSelector: '#alerts'

  constructor: ->
    @setListeners()
    $(document).trigger('notifications:init')

  setListeners: ->
    $(document).on 'notifications:init turbolinks:load', @showNewNotifications
    $(document).on 'click', '.notification .close i', @hideNotification
    $(document).on 'hide', '.notification', @hideNotification

  showNewNotifications: =>
    @hideAllNotifications()
    $('.alerts:hidden .notification').appendTo($('#alerts'))
    $notifications = $(@containerSelector).find('.notification')
    $notifications.focus().addClass 'fade-in'
    $notifications.filter('[data-clear]').on 'transitionend', (e) ->
      setTimeout (-> $(e.currentTarget).trigger 'hide'), 3000

  hideNotification: (e) ->
    $note = $(e.currentTarget).closest('.notification')
    $note.on 'transitionend', ->
      $(this).remove()
    setTimeout (->$note.addClass('fade-out')), 3

  hideAllNotifications: ->
    $('.notification.fade-in[data-form],.notification.fade-in[data-clear]').trigger('hide')

$ -> new Notifications()
