local collect = require 'chalklines.lib.collect'

local M = {}
local defaults = {
  barbar = true,
  bufferline = true,
  cmp = true,
  dashboard = true,
  diagnostic = {
    enable = true,
    background = true,
  },
  fern = true,
  fidget = true,
  gitgutter = true,
  gitsigns = true,
  glyph_palette = true,
  hop = true,
  indent_blankline = true,
  illuminate = true,
  lightspeed = true,
  lsp_saga = true,
  lsp_trouble = true,
  modes = true,
  native_lsp = true,
  neogit = true,
  neorg = true,
  neotree = true,
  notify = true,
  nvimtree = true,
  pounce = true,
  sneak = true,
  symbol_outline = true,
  telescope = true,
  telekasten = true,
  treesitter = true,
  tsrainbow = true,
  vimwiki = true,
  whichkey = true,
}

---@class ChalklinesModules
function M.get(ovr)
  if ovr and ovr.modules then
    return collect.deep_extend(defaults, ovr.modules)
  end
  return defaults
end

return M
