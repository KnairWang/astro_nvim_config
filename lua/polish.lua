-- vim.o.guifont = "Hack Nerd Font Mono:h11"

if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- vim.o.guifont = "Hack Nerd Font Mono,Symbols Nerd Font Mono:h12"

  vim.o.guifont = "Hack Nerd Font Mono:h11:#e-antialias:#h-none"
  vim.opt.linespace = 0

  -- vim.g.neovide_text_gamma = 0.0
  -- vim.g.neovide_text_contrast = 0.5
  -- vim.g.neovide_padding_top = 0
  -- vim.g.neovide_padding_bottom = 0
  -- vim.g.neovide_padding_right = 0
  -- vim.g.neovide_padding_left = 0

  -- vim.g.neovide_floating_shadow = true
  -- vim.g.neovide_floating_z_height = 10
  -- vim.g.neovide_light_angle_degrees = 45
  -- vim.g.neovide_light_radius = 5
  -- vim.g.neovide_floating_corner_radius = 0.0

  vim.g.neovide_scroll_animation_length = 0.25
  vim.g.neovide_hide_mouse_when_typing = true
  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_refresh_rate_idle = 5
  vim.g.neovide_no_idle = false
  vim.g.neovide_fullscreen = false
  vim.g.neovide_remember_window_size = false

  vim.g.neovide_cursor_animation_length = 0.13
  vim.g.neovide_cursor_trail_size = 0.35
  vim.g.neovide_cursor_antialiasing = true
  vim.g.neovide_cursor_animate_in_insert_mode = true
  vim.g.neovide_cursor_animate_command_line = true
  vim.g.neovide_cursor_unfocused_outline_width = 0.125

  vim.g.neovide_cursor_smooth_blink = true

  -- "railgun", "torpedo", "pixiedust", "sonicboom", "ripple", "wireframe"
  vim.g.neovide_cursor_vfx_mode = "sonicboom"
  vim.g.neovide_cursor_vfx_opacity = 200.0 -- Sets the transparency of the generated particles.
  vim.g.neovide_cursor_vfx_particle_lifetime = 3.0 -- Sets the amount of time the generated particles should survive.
  vim.g.neovide_cursor_vfx_particle_density = 32.0 -- Sets the number of generated particles.
  vim.g.neovide_cursor_vfx_particle_speed = 15.0 -- Sets the speed of particle movement.
  vim.g.neovide_cursor_vfx_particle_phase = 1.5 -- Only for the railgun vfx mode.
  vim.g.neovide_cursor_vfx_particle_curl = 1.0 -- Only for the railgun vfx mode.
end
