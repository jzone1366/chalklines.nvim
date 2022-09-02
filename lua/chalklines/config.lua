local utils = require 'chalklines.utils.collect'
local M = {}

-- Default options for the theme
local defaults = {
  dark_theme = 'chalklines_main',
  light_theme = 'chalklines_bright',
  theme = function()
    if vim.o.background == 'dark' then
      return M.config.dark_theme
    else
      return M.config.light_theme
    end
  end,
  colors = {}, -- Override default colors
  -- TODO: Deprecated hlgroups in favour of highlights
  hlgroups = {}, -- Override default highlight groups
  -- TODO: Deprecate filetype_hlgroups in favour of ft_highlights
  filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
  filetype_hlgroups_ignore = { -- Filestypes which are ignored when applying filetype highlight groups
    filetypes = {
      '^aerial$',
      '^alpha$',
      '^frecency$',
      '^fugitive$',
      '^fugitiveblame$',
      '^help$',
      '^minimap$',
      '^neotest--summary$',
      '^neo--tree$',
      '^neo--tree--popup$',
      '^NvimTree$',
      '^packer$',
      '^qf$',
      '^startify$',
      '^startuptime$',
      '^TelescopePrompt$',
      '^terminal$',
      '^toggleterm$',
      '^undotree$',
    },
    buftypes = { '^terminal$' },
  },
  plugins = { -- Enable/Disable specific plugins
    aerial = true,
    barbar = true,
    copilot = true,
    dashboard = true,
    gitsigns_nvim = true,
    hop = true,
    indentline = true,
    lsp_saga = true,
    marks = true,
    native_lsp = true,
    neotest = true,
    neo_tree = true,
    nvim_cmp = true,
    nvim_dap = true,
    nvim_dap_ui = true,
    nvim_hlslens = true,
    nvim_navic = true,
    nvim_notify = true,
    nvim_tree = true,
    nvim_ts_rainbow = true,
    packer = true,
    polyglot = true,
    startify = true,
    telescope = true,
    toggleterm = true,
    treesitter = true,
    trouble_nvim = true,
    vim_ultest = true,
    which_key_nvim = true,
  },
  styles = {
    strings = 'NONE',
    comments = 'NONE',
    keywords = 'NONE',
    functions = 'NONE',
    variables = 'NONE',
    virtual_text = 'NONE',
  },
  options = {
    bold = false,
    italic = false,
    underline = false,
    undercurl = false,
    cursorline = false, -- cursorline highlighting?
    transparency = false, -- Transparent Background?
    terminal_colors = false, -- Use the theme's colors for Neovim's :terminal?
    window_unfocused_color = false, -- When the window is out of focus, change the normal background?
  },
}

-- Set the theme's options
-- @return table
local function set_options(opts)
  if opts.cursorline then
    vim.wo.cursorline = true
  end

  M.config.options = {
    bold = opts.bold and 'bold' or 'NONE',
    italic = opts.italic and 'italic' or 'NONE',
    undercurl = opts.undercurl and 'undercurl' or 'NONE',
    underline = opts.underline and 'underline' or 'NONE',
    undercurl_underline = (opts.undercurl and 'undercurl' or (opts.underline and 'underline' or 'NONE')),
    bold_italic = (opts.bold ~= 'NONE' and opts.italic ~= 'NONE') and 'bold,italic' or 'NONE',
    cursorline = opts.cursorline,
    transparency = opts.transparency,
    terminal_colors = opts.terminal_colors,
    window_unfocused_color = opts.window_unfocused_color,
  }

  return M.config.options
end

-- Set the plugins to load with the theme
-- @return nil
local function set_plugins(plugin_list, opts)
  for plugin, _ in pairs(plugin_list) do
    if opts['all'] == false then
      M.config.plugins[plugin] = false
    end

    if opts[plugin] then
      M.config.plugins[plugin] = opts[plugin]
    end
  end
end

M.config = vim.deepcopy(defaults)

-- Apply the users custome config on top of default
-- @param opts table
-- @return nil
function M.setup(opts)
  opts = opts or {}
  M.config = utils.deep_extend(defaults, opts)

  set_options(M.config.options)

  if opts.plugins then
    set_plugins(M.config.plugins, opts.plugins)
  end
end

return M
