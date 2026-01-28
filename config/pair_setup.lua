local M = {}

function M.apply_defaults(defaults)
  M.defaults = defaults
end

function M.complete_set(...)
  local complete = {}
  local arg = {...} -- What? Why?
  for i=1, #arg do
    local pair_table = arg[i]
    local pcnt = 1
    for lhs,rhs in pairs(pair_table) do
      complete[pcnt] = {
        side = {lhs=lhs, rhs=rhs};
        data = M.normalize(rhs);
      }
      pcnt = pcnt+1
    end
  end
  return complete
end

function M.normalize(rhs)
  local tblstat
  if type(rhs) == "string" then
    tblstat = {}
  else
    tblstat = rhs
    tblstat["rhs"] = nil
  end
  return vim.tbl_deep_extend('force',M.defaults,tblstat)
end

return M
