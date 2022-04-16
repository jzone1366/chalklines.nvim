-- https://github.com/airblade/vim-gitgutter

local M = {}

-- gitgutter
function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    GitGutterAdd = { fg = p.green },
    GitGutterChange = { fg = p.yellow },
    GitGutterDelete = { fg = p.red },
  }
end
return M
