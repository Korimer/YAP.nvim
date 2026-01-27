---@class CompletePair
---@field open Index2d
---@field close Index2d
local CompletePair = {}
CompletePair.__index = CompletePair

---@param open Index2d
---@param close Index2d
function CompletePair.new(self,open,close)
  return setmetatable({open=open, close=close}, CompletePair)
end

---@class Index2d
---@field head Index
---@field tail Index
local Index2d = {}
Index2d.__index = Index2d

---@param head Index
---@param tail Index
function Index2d.new(self,head,tail)
  return setmetatable({head=head, tail=tail},Index2d)
end

---@param index_any Index2d|Index
function Index2d.intersects(self,index_any)
  if getmetatable(index_any) == Index then
    ---@cast index_any Index
    return self:contains(index_any)
  else
    return
      self.tail <= index_any.head
      and
      self.head >= index_any.tail
  end
end

---@param point Index
function Index2d.contains(self,point)
  return point <= self.head and point >= self.tail
end

---@class Index
---@field col integer
---@field row integer
local Index = {}
Index.__index = Index

function Index.new(self,row,col)
  return setmetatable({row=row, col=col}, Index)
end

function Index.__eq(a, b)
  return a.row == b.row and a.col == b.col
end
function Index.__lt(a, b)
  return a.row < b.row or (a.row == b.row and a.col < b.col)
end
function Index.__le(a, b)
  return a < b or a == b
end
function Index.__gt(a, b)
  return b < a
end
function Index.__ge(a, b)
  return b <= a
end

return {
  Index = Index,
  Index2d = Index2d,
  CompletePair = CompletePair
}
