local M = {}

M.styles = {
  'main',
  'bright',
}
-- Returns a color table based on the name provided
-- This returns the initial colors defined by the colorscheme
-- without overrides from the configuration
-- If name is not found will default to dark
-- If the style is invalid the it will return dark colors
-- @param name string (optional)
-- @return table of colors
function M.init(name)
  if name == 'bright' or vim.o.background == 'light' then
    return require 'chalklines.palettes.bright'
  end

  return require 'chalklines.palettes.main'
end

return M
