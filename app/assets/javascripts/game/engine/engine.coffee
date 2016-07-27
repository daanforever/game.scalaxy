console.log('Loading Game.Engine')
Game.Engine = (settings) ->
  console.log('Initializing Game.Engine')
  graphics = new (Game.Engine.Graphics.Three)(settings)

  @initialize = ->
    graphics.render()
    return

  return
