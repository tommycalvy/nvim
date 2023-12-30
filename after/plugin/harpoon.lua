local harpoon = require("harpoon")

-- REQUIRED
harpoon:setup()
-- REQUIRED

vim.keymap.set("n", "<leader>a", function() harpoon:list():append() end)
vim.keymap.set("n", "<C-e>", function()
    harpoon.ui:toggle_quick_menu(harpoon:list())
end)

vim.keymap.set({"n", "i"}, "<F1>", function() harpoon:list():select(1) end)
vim.keymap.set({"n", "i"}, "<F2>", function() harpoon:list():select(2) end)
vim.keymap.set({"n", "i"}, "<F3>", function() harpoon:list():select(3) end)
vim.keymap.set({"n", "i"}, "<F4>", function() harpoon:list():select(4) end)
vim.keymap.set({"n", "i"}, "<F5>", function() harpoon:list():select(5) end)
vim.keymap.set({"n", "i"}, "<F6>", function() harpoon:list():select(6) end)

-- Toggle previous & next buffers stored within Harpoon list
vim.keymap.set("n", "<C-S-P>", function() harpoon:list():prev() end)
vim.keymap.set("n", "<C-S-N>", function() harpoon:list():next() end)
