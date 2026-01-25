local proper_pairs = require("default_pairs.lua")

---@class CompletePair
---@field open Index2d
---@field close Index2d
local CompletePair = {}

function CompletePair.new(open,close)
  return setmetatable({open=open, close=close}, CompletePair)
end

---@class Index2d
---@field head Index
---@field tail Index
local Index2d = {}

function Index2d.new(head,tail)
  return setmetatable({head=head, tail=tail}, Index2d)
end

--function Index2d.new(start,end)
--  return setmetatable({start=start, end=end}, Index2d)
--end

---@class Index
---@field col integer
---@field row integer
local Index = {}

function Index.new(row,col)
  return setmetatable({row=row, col=col}, Index)
end



