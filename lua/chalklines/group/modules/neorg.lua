-- nvim-neorg/neorg

local M = {}

function M.get(p, groups)
  return {
    NeorgHeading1Prefix = { fg = groups.headings.h1, style = 'bold' },
    NeorgHeading1Title = { link = 'NeorgHeading1Prefix' },
    NeorgHeading2Prefix = { fg = groups.headings.h2, style = 'bold' },
    NeorgHeading2Title = { link = 'NeorgHeading2Prefix' },
    NeorgHeading3Prefix = { fg = groups.headings.h3, style = 'bold' },
    NeorgHeading3Title = { link = 'NeorgHeading3Prefix' },
    NeorgHeading4Prefix = { fg = groups.headings.h4, style = 'bold' },
    NeorgHeading4Title = { link = 'NeorgHeading4Prefix' },
    NeorgHeading5Prefix = { fg = groups.headings.h5, style = 'bold' },
    NeorgHeading5Title = { link = 'NeorgHeading5Prefix' },
    NeorgHeading6Prefix = { fg = groups.headings.h6, style = 'bold' },
    NeorgHeading6Title = { link = 'NeorgHeading6Prefix' },
    NeorgMarkerTitle = { fg = p.text, style = 'bold' },
  }
end

return M
