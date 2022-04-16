-- https://github.com/lewis6991/gitsigns.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    GitSignsAdd = { fg = colorMaps.git_add },
    GitSignsChange = { fg = colorMaps.git_change },
    GitSignsDelete = { fg = colorMaps.git_delete },

    SignAdd = { link = 'GitSignsAdd' },
    SignChange = { link = 'GitSignsChange' },
    SignDelete = { link = 'GitSignsDelete' },
  }
end

return M
