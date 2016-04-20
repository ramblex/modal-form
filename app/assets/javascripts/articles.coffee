# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$ ->
  $('#create_article').click (e) ->
    e.preventDefault()
    url = $(this).attr('href')
    dialog_form = $('<div id="dialog-form">Loading form...</div>').dialog
      autoOpen: false,
      width: 520,
      modal: true,
      open: ->
        return $(this).load(url + '.js')
      close: ->
        $('#dialog-form').remove()
    dialog_form.dialog('open')
