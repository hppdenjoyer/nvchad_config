require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })
map("i", "jk", "<ESC>")

-- map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>")

local toggleterm = require("toggleterm")

-- Основное переключение терминала
vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm<cr>", { desc = "Toggle terminal" })

-- Специальные терминалы (например, lazygit)
local Terminal = require("toggleterm.terminal").Terminal
local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
vim.keymap.set("n", "<leader>tg", function() lazygit:toggle() end, { desc = "Toggle lazygit" })

-- Горизонтальный и вертикальный терминалы
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=10 direction=horizontal<cr>", { desc = "Horizontal terminal" })
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=80 direction=vertical<cr>", { desc = "Vertical terminal" })

-- Выход из терминального режима в Normal mode
vim.keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true, desc = "Exit terminal mode" })

-- Альтернатива (если Esc не срабатывает)
vim.keymap.set("t", "<C-[>", "<C-\\><C-n>", { noremap = true, silent = true }) -- Аналог Esc в терминале
