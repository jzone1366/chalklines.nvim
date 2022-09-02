local M = {}

local defaults = {
  bg = '#000000',
  fg = '#ffffff',
}

---Convert a hex color into an rgb
---@param hex_str string
---@return table
local function hex_to_rgb(hex_str)
  local hex = '[abcdef0-9][abcdef0-9]'
  local pat = '^#(' .. hex .. ')(' .. hex .. ')(' .. hex .. ')$'
  hex_str = string.lower(hex_str)

  assert(string.find(hex_str, pat) ~= nil, 'hex_to_rgb: invalid hex_str: ' .. tostring(hex_str))

  local r, g, b = string.match(hex_str, pat)
  return { tonumber(r, 16), tonumber(g, 16), tonumber(b, 16) }
end

---Blend colors together
---@param fg string foreground color
---@param bg string background color
---@param alpha number between 0 and 1. 0 results in bg, 1 results in fg
---@return string
function M.blend(fg, bg, alpha)
  fg = hex_to_rgb(fg)
  bg = hex_to_rgb(bg)

  local blendChannel = function(i)
    local ret = (alpha * fg[i] + ((1 - alpha) * bg[i]))
    return math.floor(math.min(math.max(0, ret), 255) + 0.5)
  end

  return string.format('#%02X%02X%02X', blendChannel(1), blendChannel(2), blendChannel(3))
end

---Darken a hex color
---@param hex string
---@param amount number
---@param bg string
---@return string
function M.darken(hex, amount, bg)
  return M.blend(hex, bg or defaults.bg, math.abs(amount))
end

---Lighten a hex color
---@param hex string
---@param amount number
---@param fg string
---@return string
function M.lighten(hex, amount, fg)
  return M.blend(hex, fg or defaults.fg, math.abs(amount))
end

function M.hex_to_norm_rgb(hex_str)
  local c = hex_to_rgb(hex_str)
  return { c[1] / 255, c[2] / 255, c[3] / 255 }
end

return M
