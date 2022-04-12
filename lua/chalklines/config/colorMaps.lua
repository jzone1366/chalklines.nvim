local collect = require 'chalklines.lib.collect'

local M = {}

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
local defaults = {
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
}

function M.get(cnf)
  if cnf then
    local ovr = cnf.colorMaps or {}
    return collect.deep_extend(defaults, ovr)
  end
  return defaults
end

return M
