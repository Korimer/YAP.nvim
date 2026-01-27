return {
  tmp_val = false,
  pairs = require('defaults.pairs'),
  default_pair = {
    -- In the event that two pairs contain patterns that could both match,
    -- the higher priority pair is chosen.
    -- Helpful when, say, the pair `<div></div>` could be confused for the pair `<>`
    -- When falsey, some heuristics are applied to attempt to prioritize the more complex pair.
    priority = nil,

    -- What filetypes this pair can exist in. If falsey, the pair exists in all filetypes. 
    filetypes = {"lua"}, -- can also be "*"
    
    -- can be "never|always|clean"
    -- "clean" refers to a pair with no characters between the lhs and the rhs.
    cr_target = "clean",

    is_pattern = false,
  }
}
