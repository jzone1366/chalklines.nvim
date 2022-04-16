local M = {}

-- vimwiki/vimwiki
function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  return {
    VimwikiHR = { fg = p.subtle },
    VimwikiHeader1 = { fg = colorMaps.headings.h1, style = 'bold' },
    VimwikiHeader2 = { fg = colorMaps.headings.h2, style = 'bold' },
    VimwikiHeader3 = { fg = colorMaps.headings.h3, style = 'bold' },
    VimwikiHeader4 = { fg = colorMaps.headings.h4, style = 'bold' },
    VimwikiHeader5 = { fg = colorMaps.headings.h5, style = 'bold' },
    VimwikiHeader6 = { fg = colorMaps.headings.h6, style = 'bold' },
    VimwikiHeaderChar = { fg = p.green },
    VimwikiLink = { fg = colorMaps.link, style = 'underline' },
    VimwikiList = { fg = p.magenta },
    VimwikiNoExistsLink = { fg = p.red },
  }
end

return M
