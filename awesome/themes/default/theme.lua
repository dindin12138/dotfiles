--[[
    Cesious Awesome WM theme
    Created by Culinax
--]]

theme = {}
theme.dir = "~/.config/awesome/themes/default"

theme.wallpaper = theme.dir .. "/wave.jpg"
theme.awesome_icon = theme.dir .. "/icons/arch65.png"

theme.font = "Fira Code Nerd Font 10"
theme.taglist_font = "Fira Code Nerd Font 12"
theme.tasklist_font = "Fira Code Nerd Font 11"
theme.notification_font = "Fira Code Nerd Font 12"

-- catppuccin mocha
theme.White = "#ffffff"
theme.Rosewater = "#f5e0dc"
theme.Flamingo = "#f2cdcd"
theme.Pink = "#f5c2e7"
theme.Mauve = "#cba6f7"
theme.Red = "#f38ba8"
theme.Maroon = "#eba0ac"
theme.Peach = "#fab387"
theme.Yellow = "#f9e2af"
theme.Green = "#a6e3a1"
theme.Teal = "#94e2d5"
theme.Sky = "#89dceb"
theme.Sapphire = "#74c7ec"
theme.Blue = "#89b4fa"
theme.Lavender = "#b4befe"
theme.Text = "#cdd6f4"
theme.Subtext1 = "#bac2de"
theme.Subtext0 = "#a6adc8"
theme.Overlay2 = "#9399b2"
theme.Overlay1 = "#7f849c"
theme.Overlay0 = "#6c7086"
theme.Surface2 = "#585b70"
theme.Surface1 = "#45475a"
theme.Surface0 = "#313244"
theme.Base = "#1e1e2e"
theme.Mantle = "#181825"
theme.Crust = "#11111b"

theme.bg_normal = theme.Base
theme.bg_focus = theme.Surface0
theme.bg_urgent = theme.Surface0
theme.bg_minimize = theme.Text
theme.bg_systray = theme.Base

theme.fg_normal = theme.White
theme.fg_focus = theme.White
theme.fg_urgent = theme.Blue
theme.fg_minimize = theme.White

theme.border_width = 1
theme.border_normal = theme.Base
theme.border_focus = theme.Blue
theme.border_marked = theme.Blue

theme.useless_gap = 3
theme.master_width_factor = 0.55

-- There are other variable sets
-- overriding the default one when
-- defined, the sets are:
-- [taglist|tasklist]_[bg|fg]_[focus|urgent]
-- titlebar_[bg|fg]_[normal|focus]
-- tooltip_[font|opacity|fg_color|bg_color|border_width|border_color]
-- mouse_finder_[color|timeout|animate_timeout|radius|factor]
-- Example:
--theme.taglist_bg_focus = "#ff0000"

-- Display the taglist squares
theme.taglist_squares_sel = theme.dir .. "/taglist/squarefw.png"
theme.taglist_squares_unsel = theme.dir .. "/taglist/squarew.png"

-- Variables set for theming the menu:
-- menu_[bg|fg]_[normal|focus]
-- menu_[border_color|border_width]
theme.menu_submenu_icon = theme.dir .. "/icons/submenu.png"
theme.menu_height = 25
theme.menu_width = 200

-- You can add as many variables as
-- you wish and access them by using
-- beautiful.variable in your rc.lua
--theme.bg_widget = "#cc0000"

-- Define the image to load
theme.titlebar_close_button_normal = theme.dir .. "/titlebar/close_normal.png"
theme.titlebar_close_button_focus = theme.dir .. "/titlebar/close_focus.png"

theme.titlebar_ontop_button_normal_inactive = theme.dir .. "/titlebar/ontop_normal_inactive.png"
theme.titlebar_ontop_button_focus_inactive = theme.dir .. "/titlebar/ontop_focus_inactive.png"
theme.titlebar_ontop_button_normal_active = theme.dir .. "/titlebar/ontop_normal_active.png"
theme.titlebar_ontop_button_focus_active = theme.dir .. "/titlebar/ontop_focus_active.png"

theme.titlebar_sticky_button_normal_inactive = theme.dir .. "/titlebar/sticky_normal_inactive.png"
theme.titlebar_sticky_button_focus_inactive = theme.dir .. "/titlebar/sticky_focus_inactive.png"
theme.titlebar_sticky_button_normal_active = theme.dir .. "/titlebar/sticky_normal_active.png"
theme.titlebar_sticky_button_focus_active = theme.dir .. "/titlebar/sticky_focus_active.png"

theme.titlebar_floating_button_normal_inactive = theme.dir .. "/titlebar/floating_normal_inactive.png"
theme.titlebar_floating_button_focus_inactive = theme.dir .. "/titlebar/floating_focus_inactive.png"
theme.titlebar_floating_button_normal_active = theme.dir .. "/titlebar/floating_normal_active.png"
theme.titlebar_floating_button_focus_active = theme.dir .. "/titlebar/floating_focus_active.png"

theme.titlebar_maximized_button_normal_inactive = theme.dir .. "/titlebar/maximized_normal_inactive.png"
theme.titlebar_maximized_button_focus_inactive = theme.dir .. "/titlebar/maximized_focus_inactive.png"
theme.titlebar_maximized_button_normal_active = theme.dir .. "/titlebar/maximized_normal_active.png"
theme.titlebar_maximized_button_focus_active = theme.dir .. "/titlebar/maximized_focus_active.png"

-- You can use your own layout icons like this:
-- theme.layout_fairh = theme.dir .. "/layouts/white/fairh.png"
-- theme.layout_fairv = theme.dir .. "/layouts/white/fairv.png"
-- theme.layout_floating = theme.dir .. "/layouts/white/floating.png"
-- theme.layout_magnifier = theme.dir .. "/layouts/white/magnifier.png"
-- theme.layout_max = theme.dir .. "/layouts/white/max.png"
-- theme.layout_fullscreen = theme.dir .. "/layouts/white/fullscreen.png"
-- theme.layout_tilebottom = theme.dir .. "/layouts/white/tilebottom.png"
-- theme.layout_tileleft = theme.dir .. "/layouts/white/tileleft.png"
-- theme.layout_tile = theme.dir .. "/layouts/white/tile.png"
-- theme.layout_tiletop = theme.dir .. "/layouts/white/tiletop.png"
-- theme.layout_spiral = theme.dir .. "/layouts/white/spiral.png"
-- theme.layout_dwindle = theme.dir .. "/layouts/white/dwindle.png"
theme.layout_floating = theme.dir .. "/layouts/yoru/floating.png"
theme.layout_tile = theme.dir .. "/layouts/yoru/tile.png"
theme.layout_dwindle = theme.dir .. "/layouts/yoru/dwindle.png"

-- Define the icon theme for application icons. If not set then the icons
-- from /usr/share/icons and /usr/share/icons/hicolor will be used.
theme.icon_theme = "Papirus-Dark"

return theme
-- vim: filetype=lua:expandtab:shiftwidth=4:tabstop=8:softtabstop=4:textwidth=80
