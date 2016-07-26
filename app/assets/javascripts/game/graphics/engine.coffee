#= require game/engine
#= require three/three

$(window).resize ->
  renderer.setSize element.innerWidth(), element.innerHeight()
  camera.aspect = element.innerWidth() / element.innerHeight()
  camera.updateProjectionMatrix()
  return

Engine.Graphics = (settings) ->
  @settings           = $.extend({ fps: 1 }, settings)
  @scene              = new (THREE.Scene)
  @camera             = new (THREE.PerspectiveCamera)(75, @settings.element.innerWidth() / @settings.element.innerHeight(), 0.1, 1000)
  @renderer           = new (THREE.WebGLRenderer)

  @camera.position.z  = 5

  @renderer.setClearColor   0xffffff, 1
  @renderer.setSize         @settings.element.innerWidth(), @settings.element.innerHeight()
  @settings.element.append  @renderer.domElement

  graphics = @
  @render = ->
    setTimeout ->
      requestAnimationFrame(graphics.render)
    , 1000 / graphics.settings.fps
    graphics.settings.animate()
    graphics.renderer.render graphics.scene, graphics.camera
    return

  return
