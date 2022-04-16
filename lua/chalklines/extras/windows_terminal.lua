local template = require 'chalklines.lib.template'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local winterm = template.parse_template_str(
    [[
{
    "name" : "${meta.name}",

    "background" : "${base}",
    "foreground" : "${text}",

    "black" : "${base}",
    "blue" : "${blue}",
    "cyan" : "${cyan}",
    "green" : "${green}",
    "purple" : "${magenta}",
    "red" : "${red}",
    "white" : "${text}",
    "yellow" : "${yellow}",

    "brightBlack" : "${base}",
    "brightBlue" : "${blue}",
    "brightCyan" : "${cyan}",
    "brightGreen" : "${green}",
    "brightPurple" : "${magenta}",
    "brightRed" : "${red}",
    "brightWhite" : "${text}",
    "brightYellow" : "${yellow}"
},
  ]],
    colors
  )
  return winterm
end

return M
