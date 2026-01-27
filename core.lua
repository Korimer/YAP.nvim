local ps = require('pair_structure')
local default_pairs = require('default_pairs')

local bufflines = vim.api.nvim_buf_get_lines(0,0,-1,false)
for i=1, #bufflines do
  for opn, dat in pairs(default_pairs) do
    print(string.find(bufflines[i],opn))
  end
end

