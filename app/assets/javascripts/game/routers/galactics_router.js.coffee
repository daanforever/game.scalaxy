class Game.Routers.Galactics extends Backbone.Router
  routes:
    '': 'index'

  index: ->
    @engine     = new (Game.Engine)({ output: $('.map .body')  })
    @collection = new (Game.Collections.Galactics)({@engine})
    @view       = new (Game.Views.GalacticsIndex)({@collection})
    @collection.on('any', ->
      console.log('change')
    )

    # @collection.fetch({reset: true})
