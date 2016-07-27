class Game.Views.GalacticsIndex extends Backbone.View

  template: JST['game/galactics/index']

  initialize: ->
    console.log('Initializing Game.Views.GalacticsIndex')
    @collection.on('sync', @render, @)
    return @

  render: ->
    console.log('Rendering Game.Views.GalacticsIndex')
    console.log(@collection)
    return @
