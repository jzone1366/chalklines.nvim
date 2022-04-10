local util = require 'chalklines.util'

local M = {}
---@class ChalklinesConfig
---@field bold_vert_split boolean
---@field dim_nc_background boolean
---@field disable_background boolean
---@field disable_float_background boolean
---@field disable_italics boolean
---@field groups ChalklinesGroups

---@class ChalklinesGroups
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

---@type ChalklinesConfig
local config = {
  bold_vert_split = false,
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,

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
    telekasten = false, -- NEED TO IMPLEMENT
    treesitter = true,
    tsrainbow = true,
    vimwiki = true,
    whichkey = true,
  },

  groups = {
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
  highlight_groups = {},
}

---@param opts ChalklinesConfig
function M.setup(opts)
  opts = opts or {}
  vim.g.chalklines_variant = 'main'

  if opts.groups and type(opts.groups.headings) == 'string' then
    opts.groups.headings = {
      h1 = opts.groups.headings,
      h2 = opts.groups.headings,
      h3 = opts.groups.headings,
      h4 = opts.groups.headings,
      h5 = opts.groups.headings,
      h6 = opts.groups.headings,
    }
  end

  config = vim.tbl_deep_extend('force', config, opts)
end

function M.colorscheme()
  if vim.g.colors_name then
    vim.cmd 'hi clear'
  end

  vim.opt.termguicolors = true
  vim.g.colors_name = 'chalklines'

  local theme = require('chalklines.mapper').get(config)

  for group, color in pairs(theme) do
    if config.highlight_groups[group] ~= nil then
      util.highlight(group, config.highlight_groups[group])
    else
      util.highlight(group, color)
    end
  end

  require 'chalklines.galaxyline.theme'
end

return M
