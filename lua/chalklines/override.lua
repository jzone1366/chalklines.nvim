--[[
--Credit to: https://github.com/olimorris/onedarkpro.nvim
--For this beautifully way of overriding the theme's config
--I've further simplified it to *try* and make it more concise
--]]

local utils = require 'chalklines.utils.collect'

local store = {
  colors = {},
  highlights = {},
  ft_highlights = {},
  has_override = false,
}

local function reset()
  store.colors = {}
  store.highlights = {}
  store.ft_highlights = {}
  store.has_override = false
end

return setmetatable({ reset = reset }, {
  __index = function(_, value)
    if store[value] then
      return store[value]
    end
  end,

  __newindex = function(_, key, value)
    if store[key] then
      store[key] = utils.deep_extend(store[key], value or {})
      store.has_override = true
    end
  end,
})
