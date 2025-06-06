--- @meta

--- Table structure used for render.GetViewSetup.  
--- @class SViewSetup
--- @field viewid number @The current view id
--- @field origin GVector @The view's origin/position
--- @field angles GAngle @The view's angles
--- @field aspect number @Width divided by height
--- @field x number @The x position of the viewport
--- @field y number @The y position of the viewport
--- @field width number @The width of the viewport
--- @field height number @The height of the viewport
--- @field fov number @The main view's FOV, adjusted for aspect ratio.
--- @field fov_unscaled number @The main view's FOV as the user setting.
--- @field fovviewmodel number @The viewmodel's FOV, adjusted for aspect ratio.
--- @field fovviewmodel_unscaled number @The viewmodel's FOV as the user setting.
--- @field ortho table @If the current view is orthogonal, a table with these keys:
--- @field znear number @The distance of the view's origin to the near clipping plane
--- @field zfar number @The distance of the view's origin to the far clipping plane
--- @field znearviewmodel number @The distance of the view's origin to the near clipping plane for the viewmodel
--- @field zfarviewmodel number @The distance of the view's origin to the far clipping plane for the viewmodel
--- @field bloomtone boolean @Whether default engine bloom and tonemapping are enabled at this instant for this view.
--- @field subrect boolean @Whether `m_bRenderToSubrectOfLargerScreen` if set for this view.
--- @field offcenter table @It's a table with 4 keys, controlling what portion of the screen to draw:
