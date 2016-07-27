#= require_tree .

Game.Galactics = ->

  settings = {
    element:  $('.map .body'),
    fps:      5
  }

  engine = new (Game.Engine)(settings).initialize()

$ ->
  Game.Galactics()
