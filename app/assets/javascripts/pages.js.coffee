# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

$(document).ready ->
  $('.ui.primary.button').click ->
    $('.ui.modal').modal 'show'
    return
 return

$(document).ready ->
  $('.ui.top.attached.tabular.menu a.active.item').tab history: false
return