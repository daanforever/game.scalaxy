class Game.Collections.Galactics extends Backbone.Collection
  url: '/api/v1/galactics'
  model: Game.Models.Galactic
  initialize: (options) ->
    console.log('Initializing Game.Collections.Galactics')
    @engine = options.engine
    @fetch({reset: true})
