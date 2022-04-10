package.path = './lua/?/init.lua;./lua/?.lua'

--local color_module = require 'chalklines.palette'
--
--local function write(str, filename)
--  print('[write]: extra/' .. filename)
--  local file = io.open('extras/' .. filename, 'w')
--  file:write(str)
--  file:close()
--end
--
--local extras = {
--  --	alacritty = "yml",
--  --	fish = "fish",
--  --	kitty = "conf",
--  --	iterm = "itermcolors",
--  tmux = 'tmux',
--  wezterm = 'lua',
--  --	windows_terminal = "json",
--  --	xresources = "Xresources",
--}
--
--for extra, ext in pairs(extras) do
--  local plugin = require('chalklines.extras.' .. extra)
--  for _, style in ipairs(color_module.styles) do
--    local colors = color_module.init(style)
--    local filename = string.format('%s/chalklines_%s_%s.%s', style, style, extra, ext)
--    colors.meta.name = string.format('chalklines_%s', style)
--    colors.meta.url = 'https://github.com/jzone1366/chalklines.nvim/raw/main/extra/' .. filename
--    write(plugin.generate(colors), filename)
--  end
--end
--
local config = require('chalklines.config').get()

print(config)
for name, value in pairs(config) do
  print(name)
  print(value)
end
