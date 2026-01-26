local ps = require('pair_structure')
local default_pairs = require('default_pairs')

local mystruct = (
  ps.Index2d:new(
    ps.Index:new(1,1),
    ps.Index:new(1,2)
  )
)

vim.print(mystruct)
