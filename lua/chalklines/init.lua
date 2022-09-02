local M = {}

local override = {}

function override.colors(colors)
  require('chalklines.override').colors = colors
end

function override.highlights(highlights)
  require('chalklines.override').highlights = highlights
end

function override.ft_highlights(highlights)
  require('chalklines.override').ft_highlights = highlights
end

M.override = override

---Setup the theme via the default config or the users own
---@param opts table  User's config
---@return nil
function M.setup(opts)
  opts = opts or {}
  require('chalklines.config').setup(opts)

  if opts.colors then
    override.colors(opts.colors)
  end

  if opts.hlgroups then
    override.highlights(opts.hlgroups)
  end

  if opts.filetype_hlgroups then
    override.ft_highlights(opts.filetype_hlgroups)
  end
end

local highlight = {}

function highlight.editor(editor)
  require('chalklines.highlight').editor = editor
end

function highlight.syntax(syntax)
  require('chalklines.highlight').syntax = syntax
end

function highlight.plugins(plugins)
  require('chalklines.highlight').plugins = plugins
end

function highlight.apply(highlights, theme)
  return require('chalklines.utils.variable').replace_vars(
    vim.deepcopy(highlights),
    require('chalklines.utils.collect').deep_extend(theme.palette, theme.generated)
  )
end

function highlight.custom(highlights)
  require('chalklines.highlight').custom = highlights
end

function highlight.ft(highlights)
  require('chalklines.highlight').ft = highlights
end

M.highlight = highlight

-- Load the theme
-- @return nil
function M.load()
  local theme = require('chalklines.theme').load()
  override = require 'chalklines.override'

  highlight.editor(require('chalklines.highlights.editor').groups(theme))
  highlight.syntax(require('chalklines.highlights.syntax').groups(theme))
  highlight.plugins(require('chalklines.highlights.plugin').groups(theme))

  if override.highlights then
    highlight.custom(highlight.apply(override.highlights, theme))
  end

  if override.ft_highlights then
    highlight.ft(highlight.apply(override.ft_highlights, theme))
  end

  return require('chalklines.main').load(theme)
end

--Get the color palette for a specific theme
--@param theme_name string
--@return table
function M.get_colors(theme_name)
  if vim.g.chalklines_colors then
    return vim.g.chalklines_colors
  end

  local theme = require('chalklines.theme').load(theme_name)
  return require('chalklines.utils.collect').deep_extend(theme.palette, theme_name)
end

return M
