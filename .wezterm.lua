-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
local config = wezterm.config_builder()

-- This is where you actually apply your config choices.

-- For example, changing the initial geometry for new windows:
config.initial_cols = 120
config.initial_rows = 28

-- or, changing the font size and color scheme.
config.font_size = 14
config.color_scheme = "Kanagawa Dragon (Gogh)"

-- Colors & Appearance
config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
config.window_background_opacity = 0.98

-- Fonts
config.font = wezterm.font("JetBrains Mono", { weight = "Medium" })
config.freetype_render_target = "HorizontalLcd"
config.window_decorations = "RESIZE"

-- Finally, return the configuration to wezterm:
return config
