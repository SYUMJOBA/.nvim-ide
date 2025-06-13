
vim.keymap.set("n", "<leader><leader>", function()
    require("which-key").show("<leader>")
end, { desc = "Show all leader mappings" })

