if vim.g.neovide then
  -- Put anything you want to happen only in Neovide here
  -- vim.o.guifont = "Ubuntu Mono:h15" -- text below applies for VimScript
  -- vim.o.guifont = "Ubuntu Mono,UbuntuSansMono Nerd Font:h15" -- text below applies for VimScript
  -- vim.o.guifont = "UbuntuSansMono Nerd Font:h15:#e-subpixelantialias" -- text below applies for VimScript
  vim.o.guifont = "UbuntuSansMono Nerd Font:h15:#h-full" -- text below applies for VimScript
  vim.g.neovide_scale_factor = 1.0
  vim.g.neovide_text_gamma = 0.8
  vim.g.neovide_text_contrast = 0.1
  -- family = ""

  -- vim.g.neovide_opacity = 0.8
  vim.g.neovide_opacity = 1
  -- vim.g.neovide_normal_opacity = 0.8 -- for background
  vim.g.neovide_normal_opacity = 1 -- for background

  -- vim.g.neovide_position_animation_length = 0.01
  -- vim.g.neovide_scroll_animation_length = 0.01
  -- vim.g.neovide_cursor_animation_length = 0.01

  vim.g.neovide_position_animation_length = 0
  vim.g.neovide_scroll_animation_length = 0
  vim.g.neovide_cursor_animation_length = 0

  vim.g.neovide_refresh_rate = 60
  vim.g.neovide_confirm_quit = false
end
