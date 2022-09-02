M = {}

M.themes = {
  'chalklines_main',
  'chalklines_bright',
}

-- Get the name of the theme to load
-- @param theem function|string
-- @return string
local function get_theme(theme)
  if type(theme) == 'function' then
    theme = theme()
  end

  if vim.tbl_contains(M.themes, theme) then
    return theme
  end

  return 'chalklines_main'
end

-- Load a theme and apply overrides
-- @param theme string (optional)
-- @return table
function M.load(theme)
  theme = get_theme(theme or require('chalklines.config').config.theme)
  theme = require('chalklines.themes.' .. theme)

  if require('chalklines.override').has_override then
    theme.palette = require('chalklines.lib.palette').override(theme.palette, theme.meta.name)
  end

  if type(theme.generated) == 'function' then
    theme.generated = theme.generated(theme.palette)
  end

  return theme
end

return M
