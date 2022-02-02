vim.cmd "set colorcolumn=80"
vim.cmd "set foldmethod=syntax"
vim.cmd "set foldlevel=3"


if vim.fn.has('macunix') then
  print("On MacOS")
elseif vim.fn.has('linux') then
  print("On Linux")
end

