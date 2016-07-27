Game.Engine = (settings) ->
  console.log('Initializing Game.Engine')
  graphics = new (Game.Engine.Graphics.Three)(settings)
  graphics.render()
  return
