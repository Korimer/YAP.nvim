local mydefaults = require('defaults.setup')
local pairfmt = require('config.pair_setup')

local M = {}

function M.setup(user_config)
  local trueconf = vim.tbl_deep_extend('force',mydefaults,user_config)
  M.init(trueconf)
end

function M.init(conf)
  M.conf = conf
  pairfmt.apply_defaults(conf.default_pair)
  M.conf._internal_pairs = pairfmt.complete_set(M.conf.pairs)
  return M.conf
end

return M
