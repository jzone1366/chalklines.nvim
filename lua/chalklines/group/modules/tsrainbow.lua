-- https://github.com/p00f/nvim-ts-rainbow

local M = {}

function M.get(p, groups, styles)

  -- stylua: ignore
  return {
    rainbowcol1 = { fg = p.red },
    rainbowcol2 = { fg = p.yellow },
    rainbowcol3 = { fg = p.green },
    rainbowcol4 = { fg = p.blue },
    rainbowcol5 = { fg = p.cyan },
    rainbowcol6 = { fg = p.magenta },
    rainbowcol7 = { fg = p.orange },
  }
end

return M
