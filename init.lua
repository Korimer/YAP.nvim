local mydefaults = require('defaults.setup')
local pairfmt = require('config.pair_setup')

local M = {}

function M.setup(user_config)
  local trueconf = vim.tbl_deep_extend('force',mydefaults,user_config or {})
  M.init(trueconf)
end

function M.init(conf)
  M.conf = conf
  M._internal = {}
  pairfmt.apply_defaults(conf.default_pair)
  M._internal.pairs = pairfmt.complete_set(M.conf.pairs)
  return M.conf
end

return M
