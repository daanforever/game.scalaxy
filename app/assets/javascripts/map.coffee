GalaxyMap = ->

  settings = {
    element: $('.map .body'),
    animate: animate,
    fps: 5
  }

  graphics    = new (Engine.Graphics)(settings)

  geometry    = new (THREE.BoxGeometry)(1, 1, 1)
  material    = new (THREE.MeshBasicMaterial)(color: 0xAACCFF)

  cube        = new (THREE.Mesh)(geometry, material)
  light       = new (THREE.AmbientLight)( 0x000000 )

  graphics.scene.add( cube )
  graphics.scene.add( light );

  graphics.render()

  return

animate = ->
  # window.cube.rotation.x += 0.1
  # window.cube.rotation.y += 0.1
  return

$(document).ready(GalaxyMap)
$(document).on('page:load', GalaxyMap)
