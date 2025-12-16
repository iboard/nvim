vim.cmd "set colorcolumn=90"
vim.cmd "set foldmethod=syntax"
vim.cmd "set foldlevel=4"
vim.cmd "set norelativenumber"
vim.cmd "set number"


-- if vim.fn.has('macunix') then
--   print("On MacOS")
-- elseif vim.fn.has('linux') then
--   print("On Linux")
-- end


-- Set my local keybindings
-- TODO: implement buftype elixir/ruby

local opts = { noremap = true, silent = true }
local term_opts = { silent = true }
local keymap = vim.api.nvim_set_keymap

keymap("n", "<C-s><C-f>", ":lua test_current_file() <CR>", opts)
keymap("n", "<C-s><C-s>", ":lua test_current_line() <CR>", opts)

