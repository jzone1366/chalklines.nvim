-- nvim-neorg/neorg

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    NeorgHeading1Prefix = { fg = colorMaps.headings.h1, style = 'bold' },
    NeorgHeading1Title = { link = 'NeorgHeading1Prefix' },
    NeorgHeading2Prefix = { fg = colorMaps.headings.h2, style = 'bold' },
    NeorgHeading2Title = { link = 'NeorgHeading2Prefix' },
    NeorgHeading3Prefix = { fg = colorMaps.headings.h3, style = 'bold' },
    NeorgHeading3Title = { link = 'NeorgHeading3Prefix' },
    NeorgHeading4Prefix = { fg = colorMaps.headings.h4, style = 'bold' },
    NeorgHeading4Title = { link = 'NeorgHeading4Prefix' },
    NeorgHeading5Prefix = { fg = colorMaps.headings.h5, style = 'bold' },
    NeorgHeading5Title = { link = 'NeorgHeading5Prefix' },
    NeorgHeading6Prefix = { fg = colorMaps.headings.h6, style = 'bold' },
    NeorgHeading6Title = { link = 'NeorgHeading6Prefix' },
    NeorgMarkerTitle = { fg = p.text, style = 'bold' },
  }
end

return M
