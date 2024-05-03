local dpi = require( "beautiful.xresources" ).apply_dpi
local theme_assets = require("beautiful.theme_assets")

local theme = {}

theme.confdir = os.getenv( "HOME" ) .. "/.config/awesome/themes/theme.lua"
theme.font = "sans 8"
theme.color_red = "#f7768e"
theme.color_orange = "#ff9e64"
theme.color_yellow = "#e0af68"
theme.color_green = "#9ece6a"
theme.color_torquise = "#73daca"
theme.color_torquise_light = "#b4f9f8"
theme.color_torquise_dark = "#2ac3de"
theme.color_blue_light = "#7dcfff"
theme.color_blue = "#7aa2f7"
theme.color_purple = "#bb9af7"
theme.color_fg = "#c0caf5"
theme.color_fg_dark = "#a9b1d6"
theme.color_fg_darker = "#9aa5ce"
theme.color_dark1 = "#565f89"
theme.color_dark2 = "#414868"
theme.color_dark3 = "#24283b"
theme.color_dark4 = "#1a1b26"
theme.menu_bg_normal = theme.color_dark4 .. "99"
theme.menu_bg_focus = theme.color_dark3 .. "60"
theme.bg_solid = theme.color_dark4
theme.bg_normal = theme.color_dark4
theme.bg_focus = theme.color_dark3
theme.bg_urgent = theme.color_dark4
theme.fg_normal = theme.color_fg
theme.fg_focus = theme.color_blue
theme.fg_urgent = theme.color_yellow
theme.fg_minimize = theme.color_fg
theme.border_width = dpi( 1.2 )
theme.border_radius = dpi( 7 )
theme.border_normal = theme.color_dark3
theme.border_focus = theme.color_dark2
theme.border_marked = theme.color_dark3
theme.menu_border_width = 0
theme.menu_width = dpi( 130 )
theme.menu_fg_normal = theme.color_fg
theme.menu_fg_focus = theme.color_orange
theme.menu_bg_normal = "#050505dd"
theme.menu_bg_focus = "#050505dd"
theme.taglist_fg_focus = theme.color_dark3
--theme.taglist_fg_focus = theme.color_dark4
--theme.taglist_fg_empty = theme.color_dark2
--theme.taglist_bg_focus = theme.color_blue_light
theme.taglist_bg_focus = theme.color_blue_light .. "99"

local taglist_square_size = dpi(5)
theme.taglist_squares_sel = theme_assets.taglist_squares_sel(
    taglist_square_size, theme.fg_normal
)

theme.taglist_squares_unsel = theme_assets.taglist_squares_unsel(
    taglist_square_size, theme.fg_normal
)

theme.useless_gap = 0
theme.window_switcher_widget_bg = "#1a1b26d0" -- The bg color of the widget
theme.window_switcher_widget_border_width = 1 -- The border width of the widget
theme.window_switcher_widget_border_radius = 10 -- The border radius of the widget
theme.window_switcher_widget_border_color = "#ffffff10" -- The border color of the widget
theme.window_switcher_clients_spacing = 0 -- The space between each client item
theme.window_switcher_client_icon_horizontal_spacing = 5 -- The space between client icon and text
theme.window_switcher_client_width = 150 -- The width of one client widget
theme.window_switcher_client_height = 250 -- The height of one client widget
theme.window_switcher_client_margins = 0 -- The margin between the content and the border of the widget
theme.window_switcher_thumbnail_margins = 10 -- The margin between one client thumbnail and the rest of the widget
theme.thumbnail_scale = false -- If set to true, the thumbnails fit policy will be set to "fit" instead of "auto"
theme.window_switcher_name_margins = 0 -- The margin of one clients title to the rest of the widget
theme.window_switcher_name_valign = "left" -- How to vertically align one clients title
theme.window_switcher_name_forced_width = 240 -- The width of one title
theme.window_switcher_name_font = theme.font -- The font of all titles
theme.window_switcher_name_normal_color = "#c0caf5" -- The color of one title if the client is unfocused
theme.window_switcher_name_focus_color = "#7dcfff" -- The color of one title if the client is focused
theme.window_switcher_icon_valign = "center" -- How to vertically align the one icon
theme.window_switcher_icon_width = 40

theme.tabbed_spawn_in_tab = false -- whether a new client should spawn into the focused tabbing container

-- For tabbar in general
theme.tabbar_ontop = false
theme.tabbar_radius = 7 -- border radius of the tabbar
theme.tabbar_style = "default" -- style of the tabbar ("default", "boxes" or "modern")
--theme.tabbar_font = "Roboto Medium 10" -- font of the tabbar
theme.tabbar_size = 10 -- size of the tabbar
theme.tabbar_position = "top" -- position of the tabbar
theme.tabbar_bg_normal = theme.bg_normal .. "90" -- background color of the focused client on the tabbar
theme.tabbar_fg_normal = theme.fg_normal -- foreground color of the focused client on the tabbar
theme.tabbar_bg_focus = theme.color_dark2 .. "90" -- background color of unfocused clients on the tabbar
theme.tabbar_fg_focus = theme.fg_focus -- foreground color of unfocused clients on the tabbar
theme.tabbar_bg_focus_inactive = nil -- background color of the focused client on the tabbar when inactive
theme.tabbar_fg_focus_inactive = nil -- foreground color of the focused client on the tabbar when inactive
theme.tabbar_bg_normal_inactive = nil -- background color of unfocused clients on the tabbar when inactive
theme.tabbar_fg_normal_inactive = nil -- foreground color of unfocused clients on the tabbar when inactive
theme.tabbar_disable = false -- disable the tab bar entirely

-- the following variables are currently only for the "modern" tabbar style
theme.tabbar_color_close = "#f9929b" -- chnges the color of the close button
theme.tabbar_color_min = "#fbdf90" -- chnges the color of the minimize button
theme.tabbar_color_float = "#ccaced"

return theme
