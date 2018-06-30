# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/

#= require ace
#= require theme-monokai
#= require mode-ruby

$(document).on('turbolinks:load', ->
  if $('#editor').length
    editor = ace.edit("editor");
    # editor.setTheme("ace/theme/monokai");
    editor.session.setMode("ace/mode/ruby");
    $('#submit').click( (e) ->
      text = editor.getValue()
      $('#source_code').prop('value', text)
    )
)
