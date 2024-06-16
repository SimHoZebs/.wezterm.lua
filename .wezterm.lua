local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.default_prog = { "pwsh.exe" }

config.leader = { key = "a", mods = "CTRL" }
config.keys = {

	{ key = "c", mods = "LEADER", action = wezterm.action({ SpawnTab = "CurrentPaneDomain" }) },

	{ key = "V", mods = "LEADER", action = wezterm.action({ SplitVertical = { domain = "CurrentPaneDomain" } }) },
	{ key = "v", mods = "LEADER", action = wezterm.action({ SplitHorizontal = { domain = "CurrentPaneDomain" } }) },

	{ key = "h", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Left" }) },
	{ key = "j", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Down" }) },
	{ key = "k", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Up" }) },
	{ key = "l", mods = "LEADER", action = wezterm.action({ ActivatePaneDirection = "Right" }) },

	{ key = "0", mods = "LEADER", action = wezterm.action({ ActivateTab = 0 }) },
	{ key = "1", mods = "LEADER", action = wezterm.action({ ActivateTab = 1 }) },
	{ key = "2", mods = "LEADER", action = wezterm.action({ ActivateTab = 2 }) },
	{ key = "3", mods = "LEADER", action = wezterm.action({ ActivateTab = 3 }) },
	{ key = "4", mods = "LEADER", action = wezterm.action({ ActivateTab = 4 }) },
	{ key = "5", mods = "LEADER", action = wezterm.action({ ActivateTab = 5 }) },
	{ key = "6", mods = "LEADER", action = wezterm.action({ ActivateTab = 6 }) },
	{ key = "7", mods = "LEADER", action = wezterm.action({ ActivateTab = 7 }) },
	{ key = "8", mods = "LEADER", action = wezterm.action({ ActivateTab = 8 }) },
	{ key = "9", mods = "LEADER", action = wezterm.action({ ActivateTab = 9 }) },
	{ key = "x", mods = "LEADER", action = wezterm.action({ CloseCurrentPane = { confirm = true } }) },
	{ key = "f", mods = "LEADER", action = wezterm.action.ToggleFullScreen },
}

config.font = wezterm.font("Iosevka Term", { stretch = "Expanded" })
config.window_decorations = "RESIZE"
config.tab_and_split_indices_are_zero_based = true
config.color_scheme = "One Dark (Gogh)"
config.harfbuzz_features = { "calt=0", "clig=0", "liga=0" }
config.initial_rows = 32
config.initial_cols = 150

return config
