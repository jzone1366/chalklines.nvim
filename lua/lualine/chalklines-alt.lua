local p = require('chalklines.palette').init()

return {
  normal = {
    a = { bg = p.surface, fg = p.cyan, gui = 'bold' },
    b = { bg = p.surface, fg = p.text },
    c = { bg = p.surface, fg = p.subtle, gui = 'italic' },
  },
  insert = {
    a = { bg = p.surface, fg = p.green, gui = 'bold' },
  },
  visual = {
    a = { bg = p.surface, fg = p.magenta, gui = 'bold' },
  },
  replace = {
    a = { bg = p.surface, fg = p.green, gui = 'bold' },
  },
  command = {
    a = { bg = p.surface, fg = p.red, gui = 'bold' },
  },
  inactive = {
    a = { bg = p.base, fg = p.subtle, gui = 'bold' },
    b = { bg = p.base, fg = p.subtle },
    c = { bg = p.base, fg = p.subtle, gui = 'italic' },
  },
}
