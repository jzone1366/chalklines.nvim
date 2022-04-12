local M = {}

M.styles = {
  'main',
  'bright',
}
-- Returns a color table based on the name provided
-- This returns the initial colors defined by the colorscheme
-- without overrides from the configuration
-- If name is not found will default to light
-- If the style is invalid the it will return light colors
-- @param name string (optional)
-- @return table of colors
function M.init(name)
  name = name or vim.o.background or 'dark'

  if name == 'light' then
    return require 'chalklines.core.palettes.bright'
  end

  return require 'chalklines.core.palettes.light'
end

return M
