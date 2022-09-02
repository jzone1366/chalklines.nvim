local colors = require('chalklines').get_colors()

local chalklines = {}

chalklines.normal = {
  a = { bg = colors.green, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.green },
  c = { bg = colors.bg_statusline, fg = colors.fg },
}

chalklines.insert = {
  a = { bg = colors.blue, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.blue },
}

chalklines.command = {
  a = { bg = colors.purple, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.purple },
}

chalklines.visual = {
  a = { bg = colors.yellow, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.yellow },
}

chalklines.replace = {
  a = { bg = colors.red, fg = colors.bg },
  b = { bg = colors.fg_gutter, fg = colors.red },
}

chalklines.inactive = {
  a = { bg = colors.bg_statusline, fg = colors.blue },
  b = { bg = colors.bg_statusline, fg = colors.fg_gutter, gui = 'bold' },
  c = { bg = colors.bg_statusline, fg = colors.fg_gutter },
}

return chalklines
