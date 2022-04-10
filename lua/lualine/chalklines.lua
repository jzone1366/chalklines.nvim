local p = require 'chalklines.palette'

return {
  normal = {
    a = { bg = p.cyan, fg = p.base, gui = 'bold' },
    b = { bg = p.overlay, fg = p.cyan },
    c = { bg = p.base, fg = p.text },
  },
  insert = {
    a = { bg = p.blue, fg = p.base, gui = 'bold' },
    b = { bg = p.overlay, fg = p.blue },
    c = { bg = p.base, fg = p.text },
  },
  visual = {
    a = { bg = p.magenta, fg = p.base, gui = 'bold' },
    b = { bg = p.overlay, fg = p.magenta },
    c = { bg = p.base, fg = p.text },
  },
  replace = {
    a = { bg = p.green, fg = p.base, gui = 'bold' },
    b = { bg = p.overlay, fg = p.green },
    c = { bg = p.base, fg = p.text },
  },
  command = {
    a = { bg = p.red, fg = p.base, gui = 'bold' },
    b = { bg = p.overlay, fg = p.red },
    c = { bg = p.base, fg = p.text },
  },
  inactive = {
    a = { bg = p.base, fg = p.muted, gui = 'bold' },
    b = { bg = p.base, fg = p.muted },
    c = { bg = p.base, fg = p.muted },
  },
}
