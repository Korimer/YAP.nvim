local init = require('init')

init.setup()

vim.print(init.conf._internal.pairs)

local lines = vim.api.nvim_buf_get_lines(0,0,-1,false)
local truepairs = init._internal.pairs
for i=1, #lines do
  for lhs, rhs in pairs(truepairs) do
    vim.print(string.find(lines[i],rhs.rhs,rhs.pattern))
  end
end
