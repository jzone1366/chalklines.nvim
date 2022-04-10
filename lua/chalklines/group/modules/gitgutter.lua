-- https://github.com/airblade/vim-gitgutter

local M = {}

-- gitgutter
function M.get(p)
  return {
    GitGutterAdd = { fg = p.green },
    GitGutterChange = { fg = p.yellow },
    GitGutterDelete = { fg = p.red },
  }
end
return M
