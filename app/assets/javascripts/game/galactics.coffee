#= require_tree .

Game.Galactics = ->
  window.router = new (Game.Routers.Galactics)()
  Backbone.history.start()

$ ->
  Game.Galactics()
