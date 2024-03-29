local template = require 'chalklines.lib.template'

local M = {}

function M.generate(theme)
  local winColors = theme.generated
  winColors.meta = theme.meta

  local content = [[
{
    "name" : "${meta.name}",

    "background" : "${bg}",
    "foreground" : "${fg}",

    "black" : "${black}",
    "blue" : "${blue}",
    "cyan" : "${cyan}",
    "green" : "${green}",
    "purple" : "${purple}",
    "red" : "${red}",
    "white" : "${white}",
    "yellow" : "${yellow}",

    "brightBlack" : "${bg}",
    "brightBlue" : "${blue}",
    "brightCyan" : "${cyan}",
    "brightGreen" : "${green}",
    "brightPurple" : "${purple}",
    "brightRed" : "${red}",
    "brightWhite" : "${white}",
    "brightYellow" : "${yellow}"
},
  ]]

  local winterm = template.parse_template_str(content, winColors)

  return winterm
end

return M
