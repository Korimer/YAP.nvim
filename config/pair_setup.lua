local M = {}

function M.apply_defaults(defaults)
  M.defaults = defaults
end

function M.complete_set(...)
  local complete = {}
  local arg = {...} -- What? Why?
  for i=1, #arg do
    local pair_table = arg[i]
    for lhs,rhs in pairs(pair_table) do
      complete[lhs] = M.normalize(rhs)
    end
  end
  return complete
end

function M.normalize(rhs)
  local tblstat
  if type(rhs) == "string" then
    tblstat = {rhs = rhs}
  else
    tblstat = rhs
  end
  return vim.tbl_deep_extend('force',M.defaults,tblstat)
end

return M
