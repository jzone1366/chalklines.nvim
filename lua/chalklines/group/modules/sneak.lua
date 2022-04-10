-- https://github.com/justinmk/vim-sneak

local M = {}

function M.get(p, groups)
  -- stylua: ignore
  return {
    Sneak      = { fg = groups.background, bg = p.magenta },
    SneakScope = { bg = p.hl_med },
  }
end

return M
