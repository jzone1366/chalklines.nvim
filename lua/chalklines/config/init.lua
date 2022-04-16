local collect = require 'chalklines.lib.collect'

local M = {}

---@class ChalklinesConfig
---@field options ChalklinesOptions
---@field palette ChalklinesPalette
---@field styles ChalklinesStyles
---@field colorMaps ChalklinesColorMaps
---@field modules ChalklinesModules
--
---@class ChalklinesColorMaps
---@field border string
---@field comment string
---@field link string
---@field punctuation string
---@field error string
---@field hint string
---@field info string
---@field warn string
---@field git ChalklinesGit
---@field headings string|ChalklinesHeadings

---@class ChalklinesGit
---@field add string
---@field change string
---@field delete string
---@field dirty string
---@field ignore string
---@field merge string
---@field rename string
---@field stage string
---@field text string

---@class ChalklinesHeadings
---@field h1 string
---@field h2 string
---@field h3 string
---@field h4 string
---@field h5 string
---@field h6 string

---@class ChalklinesModules
---@type ChalklinesConfig

M.config = {}

local default_config = {
  ---@class ChalklinesOptions
  ---@field bold_vert_split boolean
  ---@field dim_nc_background boolean
  ---@field disable_background boolean
  ---@field disable_float_background boolean
  ---@field disable_italics boolean
  options = {
    bold_vert_split = false,
    dim_nc_background = false,
    disable_background = false,
    disable_float_background = false,
    disable_italics = false,
  },

  colorMaps = {
    background = 'base',
    panel = 'surface',
    border = 'hl_med',
    comment = 'muted',
    link = 'magenta',
    punctuation = 'muted',

    error = 'red',
    hint = 'magenta',
    info = 'blue',
    warn = 'yellow',

    git_add = 'blue',
    git_change = 'cyan',
    git_delete = 'red',
    git_dirty = 'cyan',
    git_ignore = 'muted',
    git_merge = 'magenta',
    git_rename = 'green',
    git_stage = 'magenta',
    git_text = 'cyan',

    headings = {
      h1 = 'magenta',
      h2 = 'blue',
      h3 = 'cyan',
      h4 = 'yellow',
      h5 = 'green',
      h6 = 'blue',
    },
  },

  modules = {
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
  },
}

function M.create(user_config)
  M.config = collect.deep_extend(default_config, user_config)

  M.config.palette = require('chalklines.palettes').init()

  M.config.styles = require('chalklines.config.styles').get(M.config)

  return M.config
end

function M.get()
  return M.config
end

return M
