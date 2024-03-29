--
-- ██╗    ██╗███████╗███████╗████████╗███████╗██████╗ ███╗   ███╗
-- ██║    ██║██╔════╝╚══███╔╝╚══██╔══╝██╔════╝██╔══██╗████╗ ████║
-- ██║ █╗ ██║█████╗    ███╔╝    ██║   █████╗  ██████╔╝██╔████╔██║
-- ██║███╗██║██╔══╝   ███╔╝     ██║   ██╔══╝  ██╔══██╗██║╚██╔╝██║
-- ╚███╔███╔╝███████╗███████╗   ██║   ███████╗██║  ██║██║ ╚═╝ ██║
--  ╚══╝╚══╝ ╚══════╝╚══════╝   ╚═╝   ╚══════╝╚═╝  ╚═╝╚═╝     ╚═╝
-- A GPU-accelerated cross-platform terminal emulator
-- https://wezfurlong.org/wezterm/

local k = require("utils/keys")

local wezterm = require("wezterm")
local act = wezterm.action

local config = {
	font_size = 15,
	color_scheme = "Catppuccin Mocha",
	colors = {
		background = '#232323',
	},
	line_height = 1.1,
	font = wezterm.font_with_fallback({
		{ family = "JetBrainsMono Nerd Font", weight = "Bold" },
		{ family = "Symbols Nerd Font Mono" },
	}),

	set_environment_variables = {
		TERM = "xterm-256color",
		LC_ALL = "en_US.UTF-8",
	},

	-- general options
	adjust_window_size_when_changing_font_size = false,
	debug_key_events = false,
	native_macos_fullscreen_mode = false,
	window_close_confirmation = "NeverPrompt",
	window_decorations = "RESIZE",
	hide_tab_bar_if_only_one_tab = true,

	-- keys
	keys = {
		-- k.cmd_key(".", k.multiple_actions(":ZenMode")),
		-- k.cmd_key("[", act.SendKey({ mods = "CTRL", key = "o" })),
		-- k.cmd_key("]", act.SendKey({ mods = "CTRL", key = "i" })),
		k.cmd_key("f", k.multiple_actions(":Telescope live_grep")),
		-- k.cmd_key("H", act.SendKey({ mods = "CTRL", key = "h" })),
		-- k.cmd_key("i", k.multiple_actions(":SmartGoTo")),
		-- k.cmd_key("L", act.SendKey({ mods = "CTRL", key = "l" })),
		k.cmd_key("P", k.multiple_actions(":Telescope lsp_workspace_symbols")),
		k.cmd_key("p", k.multiple_actions(":Telescope find_files")),
		k.cmd_key("q", k.multiple_actions(":bd")),
		k.cmd_to_tmux_prefix("1", "1"),
		k.cmd_to_tmux_prefix("2", "2"),
		k.cmd_to_tmux_prefix("3", "3"),
		k.cmd_to_tmux_prefix("4", "4"),
		k.cmd_to_tmux_prefix("5", "5"),
		k.cmd_to_tmux_prefix("6", "6"),
		k.cmd_to_tmux_prefix("7", "7"),
		k.cmd_to_tmux_prefix("8", "8"),
		k.cmd_to_tmux_prefix("9", "9"),
		k.cmd_to_tmux_prefix("`", "n"),
		-- k.cmd_to_tmux_prefix("b", "B"),
		-- k.cmd_to_tmux_prefix("C", "C"),
		k.cmd_to_tmux_prefix("d", "D"), -- detach
		-- k.cmd_to_tmux_prefix("G", "G"),
		k.cmd_to_tmux_prefix("g", "g"),
		-- k.cmd_to_tmux_prefix("K", "T"),
		-- k.cmd_to_tmux_prefix("k", "K"),
		k.cmd_to_tmux_prefix("l", "L"), -- last session
		k.cmd_to_tmux_prefix("L", "o"), -- session picker
		k.cmd_to_tmux_prefix("n", '\\'), -- split vertical
		k.cmd_to_tmux_prefix("N", "-"), -- split horizontal
		-- k.cmd_to_tmux_prefix("o", "u"),
		-- k.cmd_to_tmux_prefix("T", "!"),
		k.cmd_to_tmux_prefix("t", "c"), -- new "tab"
		k.cmd_to_tmux_prefix("w", "x"), -- close "tab"
		-- k.cmd_to_tmux_prefix("z", "z"),
		-- k.cmd_to_tmux_prefix("Z", "Z"),

		-- save in vim
		k.cmd_key(
			"s",
			act.Multiple({
				act.SendKey({ key = "\x1b" }), -- escape
				k.multiple_actions(":w"),
			})
		),

		-- ctrl+tab to switch between windows/"tabs"
		{
			mods = "CTRL",
			key = "Tab",
			action = act.Multiple({
				act.SendKey({ mods = "CTRL", key = "b" }),
				act.SendKey({ key = "n" }),
			}),
		},

		{
			mods = "CTRL|SHIFT",
			key = "Tab",
			action = act.Multiple({
				act.SendKey({ mods = "CTRL", key = "b" }),
				act.SendKey({ key = "n" }),
			}),
		},

	},
}

return config
