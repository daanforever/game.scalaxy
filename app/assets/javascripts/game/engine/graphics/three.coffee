#= require three

Game.Engine.Graphics.Three = (settings) ->
  console.log('Initializing Game.Engine.Graphics.Three')

  @settings                 = $.extend({ fps: 1 }, settings)
  @scene                    = new (THREE.Scene)
  @camera                   = new (THREE.PerspectiveCamera)(
    75,
    @settings.output.innerWidth() / @settings.output.innerHeight(),
    0.1,
    1000
  )
  @renderer                 = new (THREE.WebGLRenderer)

  @camera.position.z        = 5

  @renderer.setClearColor   0xffffff, 1
  @renderer.setSize         @settings.output.innerWidth(),
                            @settings.output.innerHeight()
  @settings.output.append   @renderer.domElement

  gfx = @

  @animate = ->

  @iterate = ->
    setTimeout ->
      requestAnimationFrame(gfx.iterate)
    , 1000 / gfx.settings.fps
    gfx.animate(gfx.options)
    gfx.renderer.render gfx.scene, gfx.camera
    return

  @render = (options) ->
    gfx.options = options
    gfx.iterate()

  $(window).resize ->
    x = gfx.settings.output.innerWidth()
    y = gfx.settings.output.innerHeight()
    gfx.renderer.setSize x, y
    gfx.camera.aspect = x / y
    gfx.camera.updateProjectionMatrix()
    return

  return
