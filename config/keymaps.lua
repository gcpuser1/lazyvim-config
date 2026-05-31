-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("n", "<Leader>dt", "<cmd>DapToggleBreakpoint<CR>", { desc = "Toggle Breakpoint" })
vim.keymap.set("n", "<Leader>dc", "<cmd>DapContinue<CR>",         { desc = "Continue" })
vim.keymap.set("n", "<Leader>do", "<cmd>DapStepOver<CR>",         { desc = "Step Over" })
vim.keymap.set("n", "<Leader>dx", "<cmd>DapTerminate<CR>",        { desc = "Terminate" })
