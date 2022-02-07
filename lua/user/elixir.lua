-- Elixir key binding
-- TODO: Initialize with bufftype

local M = {}

local opts = { noremap = true, silent = false }
local function curline()
	local pos = vim.api.nvim_win_get_cursor(0)
	return tostring(pos[1])
end

function test_suite()
	vim.api.nvim_command(":sp term://mix test ")
end

function test_current_file()
	vim.api.nvim_command(":sp term://mix test %")
end

function test_current_line()
	vim.api.nvim_command(":sp term://mix test %:" .. curline())
end

return M
