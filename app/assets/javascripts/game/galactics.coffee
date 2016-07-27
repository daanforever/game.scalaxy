#= require_tree .

Game.Galactics = ->

  settings = {
    element: $('.map .body'),
    fps: 5
  }

  graphics    = new (Engine.Graphics)(settings)

  geometry    = new (THREE.BoxGeometry)(1, 1, 1)
  material    = new (THREE.MeshBasicMaterial)(color: 0xAACCFF)

  cube        = new (THREE.Mesh)(geometry, material)

  graphics.scene.add( cube )
  graphics.render()

  graphics.animate = (options) ->
    cube.rotation.x += 0.1
    cube.rotation.y += 0.1

$ ->
  Game.Galactics()
