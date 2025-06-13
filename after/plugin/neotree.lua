



require("neo-tree").setup({
	window = {
		position = "float", -- use "float" instead of "left" or "right"
		popup = {
			size = {
				height = "80%",
				width = "50%",
			},
			position = "50%", -- center of screen,
			border = "solid"
		},
	},
	filesystem = {
		filtered_items = {
			hide_dotfiles = false,
			hide_gitignored = false,
		},
	},
	--[[
	event_handlers = {
		--TODO: implement finder like file browsing
	},
	]]--
})


