
local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup({});

vim.keymap.set("n", "<leader>ha", function() harpoon:list():add() end, { desc = "add current file to harpoon"} );
vim.keymap.set("n", "<leader>hr", function() harpoon:list():remove() end, {desc = "remove current file from harpoon"} );
-- vim.keymap.set("n", "<loader>hv", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end)
-- replaced by harpoon_as_telescope
vim.keymap.set("n", "<leader>hc", function() harpoon:list():clear() end, {desc = "clear harpoon list"} );

vim.keymap.set("n", "<C-1>", function() harpoon:list():select(1) end)
vim.keymap.set("n", "<C-2>", function() harpoon:list():select(2) end)
vim.keymap.set("n", "<C-3>", function() harpoon:list():select(3) end)
vim.keymap.set("n", "<C-4>", function() harpoon:list():select(4) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)



vim.keymap.set("n", "<loader>hv", function() harpoon.ui:toggle_quick_menu(harpoon:list()) end, { desc = "open harpoon window" });
