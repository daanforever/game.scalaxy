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
  light       = new (THREE.AmbientLight)( 0x000000 )

  graphics.scene.add( cube )
  graphics.scene.add( light )

  graphics.animate = ->
    cube.rotation.x += 0.1
    cube.rotation.y += 0.1
    return

  graphics.render()

  return

$(document).ready(Game.Galactics)
$(document).on('page:load', Game.Galactics)
