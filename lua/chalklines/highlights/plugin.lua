local M = {}

function M.groups(theme)
  local groups = {}
  local plugins = require('chalklines.config').config.plugins

  local function load_plugin(plugin)
    if plugin == 'all' then
      return
    end
    groups = vim.tbl_deep_extend('force', groups, require('chalklines.highlights.plugins.' .. plugin).groups(theme))
  end

  for plugin, load in pairs(plugins) do
    if load then
      load_plugin(plugin)
    end
  end

  return groups
end

return M
