-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
	-- Packer can manage itself
	use 'wbthomason/packer.nvim'

	use {
		'nvim-telescope/telescope.nvim', tag = '0.1.8',
		-- or                            , branch = '0.1.x',
		requires = { {'nvim-lua/plenary.nvim'} }
	}

	use {
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
	}

	use {
		"rebelot/kanagawa.nvim"
	}

	use {
		"scottmckendry/cyberdream.nvim" -- the main theme of the project
	}

	use (
		"nvim-treesitter/nvim-treesitter",
		{run = ":TSUpdate"}
	)

	use {
		"ThePrimeagen/harpoon",
		branch = "harpoon2",
		requires = { {"nvim-lua/plenary.nvim"} }
	}

	use {
		'nvim-telescope/telescope-fzf-native.nvim',
		run = 'make'
	}

	use ("mbbill/undotree")

	-- LSP & Server Installer
	use { "neovim/nvim-lspconfig" }
	use { "williamboman/mason.nvim" }
	use { "williamboman/mason-lspconfig.nvim" }

	-- Autocompletion
	use { "hrsh7th/nvim-cmp" }
	use { "hrsh7th/cmp-nvim-lsp" }
	use { "L3MON4D3/LuaSnip" }
	use { "saadparwaiz1/cmp_luasnip" }

	-- Optional: display LSP status
	use { "nvim-lua/lsp-status.nvim" }

	use({
		"nvim-neo-tree/neo-tree.nvim",
		branch = "v3.x",
		requires = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-web-devicons", -- not strictly required, but recommended
			"MunifTanjim/nui.nvim",
			-- "3rd/image.nvim", -- Optional image support in preview window: See `# Preview Mode` for more information
		}
	});

    use({
        "folke/which-key.nvim",
        event = "VimEnter", -- or "BufWinEnter", etc.
        config = function()
            local wk = require("which-key")

            wk.setup({})

            vim.keymap.set("n", "<leader>?", function()
                wk.show("<leader>", { mode = "n" })
            end, { desc = "Show leader keymaps" })
        end,
    });

end)
