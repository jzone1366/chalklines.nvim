package.path = './lua/?/init.lua;./lua/?.lua'

local color_module = require 'chalklines.theme'

local function write(str, filename)
  print('[write]: extra/' .. filename)
  local file = io.open('extras/' .. filename, 'w')
  file:write(str)
  file:close()
end

local extras = {
  alacritty = 'yml',
  fish = 'fish',
  kitty = 'conf',
  iterm = 'itermcolors',
  tmux = 'tmux',
  wezterm = 'lua',
  windows_terminal = 'json',
  xresources = 'Xresources',
}

for extra, ext in pairs(extras) do
  local plugin = require('chalklines.extras.' .. extra)
  for _, style in ipairs(color_module.themes) do
    local theme = require(string.format('chalklines.themes.%s', style))
    local filename = string.format('%s/chalklines_%s_%s.%s', style, style, extra, ext)
    theme.meta.name = string.format('chalklines_%s', style)
    theme.meta.url = 'https://github.com/jzone1366/chalklines.nvim/raw/main/extra/' .. filename
    write(plugin.generate(theme), filename)
  end
end
