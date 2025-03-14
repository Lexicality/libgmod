--- @meta

--- Table structure used for render.RenderView.  
--- Unless stated otherwise, the default values for all these keys would be inherited from the engine's CViewSetup and do not have static representations.  
--- @class SViewData
--- @field origin GVector @The view's original position
--- @field angles GAngle @The view's angles
--- @field aspect number @Default width divided by height
--- @field x number @The x position of the viewport to render in
--- @field y number @The y position of the viewport to render in
--- @field w number @The width of the viewport to render in
--- @field h number @The height of the viewport to render in
--- @field drawhud? boolean @Draw the HUD and call the hud painting related hooks
--- @field drawmonitors? boolean @Draw monitors
--- @field drawviewmodel? boolean @The weapon's viewmodel
--- @field drawviewer? boolean @Whether to force draw the local player or not.
--- @field viewmodelfov number @The viewmodel's FOV
--- @field fov number @The main view's FOV
--- @field ortho table @If set, renders the view orthogonally
--- @field ortholeft number @Coordinate for the left clipping plane
--- @field orthoright number @Coordinate for the right clipping plane
--- @field orthotop number @Coordinate for the top clipping plane
--- @field orthobottom number @Coordinate for the bottom clipping plane
--- @field znear number @The distance of the view's origin to the near clipping plane
--- @field zfar number @The distance of the view's origin to the far clipping plane
--- @field znearviewmodel number @The distance of the view's origin to the near clipping plane for the viewmodel
--- @field zfarviewmodel number @The distance of the view's origin to the far clipping plane for the viewmodel
--- @field dopostprocess? boolean @Currently works identically to the "bloomtone" option (it also overrides it if you set this to false).
--- @field bloomtone? boolean @Disables default engine bloom and pauses the "brightness changes" on HDR maps.
--- @field viewid? number @This is identifying which logical part of the scene an entity is being redered in, see Enums/VIEW.
--- @field offcenter table @This allows you to "zoom in" on a part of the screen - for example, the top-left quarter of the screen
