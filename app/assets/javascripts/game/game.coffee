console.log('Loading Game')

window.Game =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->
    console.log('Initializing Game')

$(document).ready ->
  Game.initialize()
