A pair consists of a
- lhs
- - The first half of the pair.
- - This may be a lua pattern.
- - When writing these, be careful to avoid including stray `+` or `*` characters, as this may explode the complexity of the pattern.
- rhs
- - The closing half of the pair.
- - This may be the same as the opening half.
- - This may be a lua pattern.
- - Just as in the case of string.gsub, %1,%2, and so forth will be replaced with the contents of the lhs' respective capture.
- - In order to distinguish something like `%12` from `%1` followed by the character `2`, you may use parentheses like so: `(%1)2`.
- opts
- - An optional table that describes how you want this pair to interact. See **ADD THIS LATER** for more info.

## Opts:
```lua
local opts = {
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
    
}
```

This extension exposes some convenience functions. These are:
- `yap_get_rhs(lhs)` - given a lhs, return the corresponding rhs (or nil if there is none.)

