vim.g.mapleader = " "
vim.keymap.set("n", "<leader>e", vim.cmd.Ex, {desc = "open file explorer"} )

vim.keymap.set("n", "<leader>y", "\"+y", {desc = "yank to system register"} );
vim.keymap.set("v", "<leader>y", "\"+y", {desc = "yank to system register"} );
vim.keymap.set("n", "<leader>Y", "\"+Y", {desc = "yank to system register"} );

