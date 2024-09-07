local wezterm = require("wezterm")

local config = {}
if wezterm.config_builder then
	config = wezterm.config_builder()
end

config.check_for_updates = true
config.color_scheme = "carbonfox"
config.font_size = 14
config.window_padding = {
	left = "6px",
	right = "6px",
	top = "2px",
	bottom = 0,
}
config.colors = {
	tab_bar = {
		background = "#333333",
		active_tab = {
			fg_color = "#ffffff",
			bg_color = "#444444",
		},
		new_tab = {
			bg_color = "#333333",
			fg_color = "#ffffff",
		},
		new_tab_hover = {
			bg_color = "#555555",
			fg_color = "#ffffff",
		},
	},
}

config.tab_max_width = 100
config.use_fancy_tab_bar = true
config.hide_mouse_cursor_when_typing = false
config.send_composed_key_when_left_alt_is_pressed = false
config.send_composed_key_when_right_alt_is_pressed = false
config.window_decorations = "INTEGRATED_BUTTONS | RESIZE"

config.window_frame = {
	border_left_width = "3px",
	border_right_width = "3px",
	border_bottom_height = "3px",
	border_top_height = "3px",
}

wezterm.on("update-right-status", function(window, pane)
	local title = pane:get_title()
	local date = " " .. wezterm.strftime("%H:%M %m-%d-%Y") .. " "

	window:set_right_status(wezterm.format({
		{ Background = { Color = "#555555" } },
		{ Text = " " .. title .. " " },
		{ Background = { Color = "#333333" } },
		{ Text = date },
	}))
end)

wezterm.on("format-tab-title", function(tab, _, _, _, _)
	local is_zoomed = ""
	if tab.active_pane.is_zoomed then
		is_zoomed = "z"
	end

	return {
		{ Text = " " .. tab.tab_index + 1 .. is_zoomed .. " " },
	}
end)

return config
