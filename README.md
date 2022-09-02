<h1 align="center">
	Chalklines for NeoVim
</h1>

<p align="center">
    <a href="https://github.com/jzone1366/chalklines.nvim/stargazers"><img src="https://img.shields.io/github/stars/jzone1366/chalklines.nvim?colorA=181818&colorB=BA76E7&style=for-the-badge&logo=starship style=for-the-badge"></a>
    <a href="https://github.com/jzone1366/chalklines.nvim/issues"><img src="https://img.shields.io/github/issues/jzone1366/chalklines.nvim?colorA=181818&colorB=FF355B&style=for-the-badge"></a>
    <a href="https://github.com/jzone1366/chalklines.nvim/contributors"><img src="https://img.shields.io/github/contributors/jzone1366/chalklines.nvim?colorA=181818&colorB=B7E876&style=for-the-badge"></a>
</p>


# About
Currently a WIP. Please check issues for things that are missing.
Chalklines is a Light/Dark color scheme for neovim written in lua.

## :book: Table of Contents<!-- omit in toc -->

- [Features](#features)
- [Requirements](#requirements)
- [Installation](#installation)
- [Usage](#usage)
- [Configuration](#configuration)
  - [Default configuration](#default-configuration)
  - [Configuring themes](#configuring-themes)
  - [Configuring plugins](#configuring-plugins)
  - [Configuring styles](#configuring-styles)
  - [Configuring colors](#configuring-colors)
  - [Configuring highlight groups](#configuring-highlight-groups)
  - [Configuring filetype highlight groups](#configuring-filetype-highlight-groups)
  - [Configuring options](#configuring-options)
- [Supported Plugins](#supported-plugins)
- [Comparison to VS Code's One Dark Pro](#microscope-comparison-to-vs-codes-one-dark-pro)
- [Extras](#extras)
- [FAQs](#faqs)
- [Credits](#credits)

## Features

- Override default styles, colors and highlight groups
- Create custom highlight groups and even highlight groups by filetypes
- [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) support
- Support for many [popular plugins](#electric_plug-supported-plugins)

## Requirements

- Neovim 0.5+ (0.7+ for filetype highlights)
- `termguicolors` enabled for true color support
- `treesitter` for full syntax highlighting

## Installation

Install with your package manager:

```lua
use "jzone1366/chalklines.nvim"    -- Packer
```
```vim
Plug 'jzone1366/chalklines.nvim'   " Vim-Plug
```
## Usage

Use the built-in `:colorscheme` command to load:

```lua
vim.cmd("colorscheme chalklines")  -- Lua
```
```vim
colorscheme chalklines             " Vimscript
```

## Configuration

### Default configuration

A call to the `setup` function is only required if you wish to change the defaults:

```lua
require("chalklines").setup({
  dark_theme = "chalklines_main", -- The default dark theme
  light_theme = "chalklines_bright", -- The default light theme
  -- The theme function can be overwritten with a string value for the theme
  theme = function()
      if vim.o.background == "dark" then
          return config.dark_theme
      else
          return config.light_theme
      end
  end,
  colors = {}, -- Override default colors by specifying colors for 'chalklines_main' or 'chalklines_bright' themes
  hlgroups = {}, -- Override default highlight groups
  filetype_hlgroups = {}, -- Override default highlight groups for specific filetypes
  plugins = { -- Override which plugin highlight groups are loaded
    -- ...
  },
  styles = { -- Choose from "bold,italic,underline"
      strings = "NONE", -- Style that is applied to strings.
      comments = "NONE", -- Style that is applied to comments
      keywords = "NONE", -- Style that is applied to keywords
      functions = "NONE", -- Style that is applied to functions
      variables = "NONE", -- Style that is applied to variables
      virtual_text = "NONE", -- Style that is applied to virtual text
  },
  options = {
      bold = false, -- Use the colorscheme's opinionated bold styles?
      italic = false, -- Use the colorscheme's opinionated italic styles?
      underline = false, -- Use the colorscheme's opinionated underline styles?
      undercurl = false, -- Use the colorscheme's opinionated undercurl styles?
      cursorline = false, -- Use cursorline highlighting?
      transparency = false, -- Use a transparent background?
      terminal_colors = false, -- Use the colorscheme's colors for Neovim's :terminal?
      window_unfocussed_color = false, -- When the window is out of focus, change the normal background?
  }
})
```

### Configuring themes

Currently, there are two themes available:

- `chalklines_main`
- `chalklines_bright`

A default theme can be set with:

```lua
theme = "chalklines_main",
```

If no value is specified, the colorscheme will use the values as per the default config which uses `vim.o.background`. With a dark background, the theme will use `onedark` and with a light background, `onelight`, by default. For greater customisation with `vim.o.background`, default dark and light themes can be set:

```lua
dark_theme = "chalklines_main",
light_theme = "chalklines_bright",
```

### Configuring plugins

By default, all of the plugins supported by the theme are loaded at runtime. Specific plugins can be disabled as follows:

```lua
plugins = {
  native_lsp = false,
  polygot = false,
  treesitter = false
}
```

Alternatively, all of the plugins can be disabled at once:

```lua
plugins = {
  all = false
}
```

Or, all of the plugins can be disabled with only a select few enabled:

```lua
plugins = {
  all = false
  native_lsp = true,
  treesitter = true
}
```

> **Note:** For a full list of plugins supported, and their names, see the plugins [section](#electric_plug-supported-plugins)

### Configuring styles

Within the colorscheme, collections of highlight groups have been grouped together into `styles`. For users who use monospaced fonts with nice italics, this can go someway to enhancing the aesthetic of the colorscheme. These styles may be configured as below:

```lua
styles = {
  comments = "italic",
  functions = "NONE",
  keywords = "bold,italic",
  strings = "NONE",
  variables = "NONE",
  virtual_text = "NONE"
}
```

| **Note:** See the [Neovim help](https://neovim.io/doc/user/api.html#nvim_set_hl()) for a full list of styles

### Configuring colors

The colorscheme has a palette of 13 core colors alongside many additional ones which are used for menus and git diffs. These colors can be found in the [themes](https://github.com/jzone1366/chalklines.nvim/tree/main/lua/chalklines/themes).

The default colors can be changed by specifying the name of the color and a new hex code:

```lua
colors = {
  red = "#FF0000"
}
```

#### Specifying new colors

New colors may be created which will then be merged into a theme's color palette:

```lua
colors = {
  my_new_red = "#f44336"
}
```

> **Note:** Custom colors can also be referenced when creating custom highlight group overrides

#### Specifying colors by theme

It's possible to override default colors within a theme such as the `bg` color. This is a common question for those who wish to have a darker background than the default. Of course it would make sense to have different `bg` colors for the `chalklines_main` and `chalklines_bright` themes. This can be achieved by specifying the theme name as a table, followed by the color:

```lua
colors = {
  chalklines_main = {
    bg = "#FFFF00" -- yellow
  },
  chalklines_bright = {
    bg = "#00FF00" -- green
  }
}
```

### Configuring highlight groups

The [editor](https://github.com/jzone1366/chalklines.nvim/tree/main/lua/chalklines/highlights/editor.lua), [syntax](https://github.com/jzone1366/chalklines.nvim/tree/main/lua/chalklines/highlights/syntax.lua) and [plugin](https://github.com/jzone1366/chalklines.nvim/tree/main/lua/chalklines/highlights/plugins) files use a large array of highlight groups. There are three ways to customize or *override* them:

1. Using specific hex colors:
```lua
hlgroups = {
  Comment = { fg = "#FF0000", bg = "#FFFF00" }
}
```
2. Referencing the name of colors:
```lua
hlgroups = {
  Comment = { fg = "${my_new_red}" bg = "${yellow}" }
}
```
3. Linking to other highlight groups:
```lua
hlgroups = {
  Comment = { link = "Substitute" }
}
```

### Configuring filetype highlight groups

```lua
filetype_hlgroups = {
  -- Use the filetype as per the `set filetype?` command
  yaml = {
    TSField = { fg = "${red}" }
  },
  python = {
    TSConstructor = { fg = "${bg}", bg = "${red}" }
  }
}
```

> **Note:**
> - Neovim 0.7+ is required for filetype highlights
> - Currently support for highlighting in Telescope's previewer is unavailable
> - The excellent [hlargs.nvim](https://github.com/m-demare/hlargs.nvim) plugin allows for greater customisation over arguments definitions and usages

#### Ignoring filetypes and buffer types

Certain file and buffer types may be ignored to prevent filetype highlights being overwritten when navigating to a new
buffer. The default types to be ignored are:

```lua
filetype_hlgroups_ignore = {
  filetypes = {
    "^aerial$",
    "^alpha$",
    "^fugitive$",
    "^fugitiveblame$",
    "^help$",
    "^NvimTree$",
    "^packer$",
    "^qf$",
    "^startify$",
    "^startuptime$",
    "^TelescopePrompt$",
    "^TelescopeResults$",
    "^terminal$",
    "^toggleterm$",
    "^undotree$"
  },
  buftypes = {
    "^terminal$"
  }
```

### Configuring options

#### Formatting

Alongside styles, the colorscheme applies some opinionated formatting. These can be configured with the following options:

```lua
options = {
  bold = true, -- Use the colorscheme's opinionated bold styles?
  italic = true, -- Use the colorscheme's opinionated italic styles?
  underline = true, -- Use the colorscheme's opinionated underline styles?
  undercurl = true -- Use the colorscheme's opinionated undercurl styles?
}
```

#### Transparency

The colorscheme supports transparent backgrounds:

```lua
options = {
  transparency = true
}
```

By setting the transparency option to true, the `Normal`, `Folded`, `SignColumn`, `Statusline` and `Tabline` groups will have `NONE` as the background color. Additional transparency may be achieved by overriding more highlight groups.

#### Terminal Colors

The colorscheme supports changing the colors for Neovim's `:terminal` to the current theme:

```lua
options = {
  terminal_colors = true
}
```

#### Window Focus Color

The colorscheme supports changing the color of the main window in Neovim when focussed is lost. For example, when a `telescope` or `packer` pop up appears:

```lua
options = {
  window_unfocussed_color = true
}
```

> **Note:** This can be seen in the screenshots above where `nvim-tree` is opened and out of focus

#### Cursorline

Cursorline highlighting is supported in the colorscheme using a `cursorline` color (which may of course be overriden). This can be enabled with the following:

```lua
colors = {
  cursorline = "#FF0000" -- This is optional. The default cursorline color is based on the background
},
options = {
  cursorline = true
}
```

## Supported Plugins

The colorscheme supports the following plugins:
  - [aerial.nvim](https://github.com/stevearc/aerial.nvim) (`aerial`)
  - [barbar.nvim](https://github.com/romgrk/barbar.nvim) (`barbar`)
  - [Copilot.vim](https://github.com/github/copilot.vim) (`copilot`)
  - [Dashboard](https://github.com/glepnir/dashboard-nvim) (`dashboard`)
  - [gitsigns.nvim](https://github.com/lewis6991/gitsigns.nvim) (`gitsigns_nvim`)
  - [Hop.nvim](https://github.com/phaazon/hop.nvim) (`hop`)
  - [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim/tree/lua) (`indentline`)
  - [lspsaga.nvim](https://github.com/glepnir/lspsaga.nvim) (`lsp_saga`)
  - [marks.nvim](https://github.com/chentau/marks.nvim) (`marks`)
  - [Neotest](https://github.com/nvim-neotest/neotest) (`neotest`)
  - [neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim) (`neo_tree`)
  - [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) (`nvim_cmp`)
  - [nvim-dap](https://github.com/mfussenegger/nvim-dap) (`nvim_dap`)
  - [nvim-dap-ui](https://github.com/rcarriga/nvim-dap-ui) (`nvim_dap_ui`)
  - [nvim-hlslens](https://github.com/kevinhwang91/nvim-hlslens) (`nvim_hlslens`)
  - [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) (`native_lsp`)
  - [nvim-navic](https://github.com/SmiteshP/nvim-navic) (`nvim_navic`)
  - [nvim-notify](https://github.com/rcarriga/nvim-notify) (`nvim_notify`)
  - [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua) (`nvim_tree`)
  - [nvim-ts-rainbow](https://github.com/p00f/nvim-ts-rainbow) (`nvim_ts_rainbow`)
  - [packer.nvim](https://github.com/wbthomason/packer.nvim) (`packer`)
  - [polygot](https://github.com/sheerun/vim-polyglot) (`polygot`)
  - [startify](https://github.com/mhinz/vim-startify) (`startify`)
  - [telescope.nvim](https://github.com/nvim-telescope/telescope.nvim) (`telescope`)
  - [toggleterm.nvim](https://github.com/akinsho/toggleterm.nvim) (`toggleterm`)
  - [Treesitter](https://github.com/nvim-treesitter/nvim-treesitter) (`treesitter`)
  - [Trouble](https://github.com/folke/trouble.nvim) (`trouble_nvim`)
  - [Vim Ultest](https://github.com/rcarriga/vim-ultest) (`vim_ultest`)
  - [Which Key](https://github.com/folke/which-key.nvim) (`which_key_nvim`)

## Support Me
<p align="center">
	<a href="https://www.buymeacoffee.com/jzone1366"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=jzone1366&button_colour=f24b03&font_colour=000000&font_family=Lato&outline_colour=000000&coffee_colour=FFDD00" /></a>
</p>

## 💝 Heavily inspired by:

-   [rose-pine](https://github.com/rose-pine/neovim)
-   [Bright Lights](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/screenshots/bright_lights.png)

&nbsp;

<p align="center"><a href="https://github.com/jzone1366/chalklines.nvim/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=FFEBFF&colorA=181818&colorB=76D5FF"/></a></p>
