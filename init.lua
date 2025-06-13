require("syumjoba")
require("syumjoba.remap")
require("syumjoba.packer")
require("syumjoba.setuptheme")
require("syumjoba.diagnostics")
require("syumjoba.editorconfig")

-- setup the theme
require("cyberdream").setup({
	-- Enable transparent background
	transparent = true,

	-- Reduce the overall saturation of colours for a more muted look
	saturation = 1, -- accepts a value between 0 and 1. 0 will be fully desaturated (greyscale) and 1 will be the full color (default)

	-- Enable italics comments
	italic_comments = true,

	-- Replace all fillchars with ' ' for the ultimate clean look
	hide_fillchars = false,

	-- Apply a modern borderless look to pickers like Telescope, Snacks Picker & Fzf-Lua
	borderless_pickers = true,

	-- Improve start up time by caching highlights. Generate cache with :CyberdreamBuildCache and clear with :CyberdreamClearCache
	cache = false,

	-- Override colors
	colors = {
		-- For a list of colors see `lua/cyberdream/colours.lua`
	},

	-- Disable or enable colorscheme extensions
	extensions = {
		telescope = true,
		notify = true,
		mini = true,
		...
	},
})


