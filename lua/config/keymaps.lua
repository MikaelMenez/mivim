-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- Mapeamento para abrir o Frogmouth usando a função nativa do LazyVim
vim.keymap.set("n", "<leader>md", function()
    local file = vim.api.nvim_buf_get_name(0)
    require("lazyvim.util").terminal.open({ "frogmouth", file }, {
        ctrl_hjkl = false,
        border = "rounded",
    })
end, { desc = "Frogmouth (Markdown Preview)" })
