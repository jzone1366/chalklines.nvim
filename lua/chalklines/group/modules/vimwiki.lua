local M = {}

-- vimwiki/vimwiki
function M.get(p, groups)
  return {
    VimwikiHR = { fg = p.subtle },
    VimwikiHeader1 = { fg = groups.headings.h1, style = 'bold' },
    VimwikiHeader2 = { fg = groups.headings.h2, style = 'bold' },
    VimwikiHeader3 = { fg = groups.headings.h3, style = 'bold' },
    VimwikiHeader4 = { fg = groups.headings.h4, style = 'bold' },
    VimwikiHeader5 = { fg = groups.headings.h5, style = 'bold' },
    VimwikiHeader6 = { fg = groups.headings.h6, style = 'bold' },
    VimwikiHeaderChar = { fg = p.green },
    VimwikiLink = { fg = groups.link, style = 'underline' },
    VimwikiList = { fg = p.magenta },
    VimwikiNoExistsLink = { fg = p.red },
  }
end

return M
