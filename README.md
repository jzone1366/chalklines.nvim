<h3 align="center">
	Chalklines for NeoVim
</h3>

<p align="center">
    <a href="https://github.com/jzone1366/chalklines.nvim/stargazers"><img src="https://img.shields.io/github/stars/jzone1366/chalklines.nvim?colorA=181818&colorB=BA76E7&style=for-the-badge&logo=starship style=for-the-badge"></a>
    <a href="https://github.com/jzone1366/chalklines.nvim/issues"><img src="https://img.shields.io/github/issues/jzone1366/chalklines.nvim?colorA=181818&colorB=FF355B&style=for-the-badge"></a>
    <a href="https://github.com/jzone1366/chalklines.nvim/contributors"><img src="https://img.shields.io/github/contributors/jzone1366/chalklines.nvim?colorA=181818&colorB=B7E876&style=for-the-badge"></a>
</p>


# About
Currently a WIP. Please check issues for things that are missing.
Chalklines is a Light/Dark color scheme for neovim written in lua.

# 🎁 Features

-   Handy CLI.
-   Extensible for many use cases.
-   Integrations with a bunch of plugins:
    - [BarBar](https://github.com/romgrk/barbar.nvim)
    - [BufferLine](https://github.com/akinsho/bufferline.nvim)
    - [Nvim-cmp](https://github.com/hrsh7th/nvim-cmp)
    - [Dashboard](https://github.com/glepnir/dashboard-nvim)
    - [Fern](https://github.com/lambdalisue/fern.vim)
    - [Fidget](https://github.com/j-hui/fidget.nvim)
    - [Git Gutter](https://github.com/airblade/vim-gitgutter)
    - [Git signs](https://github.com/lewis6991/gitsigns.nvim)
    - [Glyph Palette](https://github.com/lambdalisue/glyph-palette.vim/)
    - [Hop](https://github.com/phaazon/hop.nvim)
    - [Indent Blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
    - [Illuminate](https://github.com/RRethy/vim-illuminate)
    - [Lightspeed](https://github.com/ggandor/lightspeed.nvim)
    - [LSP Saga](https://github.com/glepnir/lspsaga.nvim)
    - [Trouble](https://github.com/folke/trouble.nvim)
    - [Modes](https://github.com/mvllow/modes.nvim)
    - [Native LSP](https://github.com/neovim/nvim-lspconfig)
    - [Neogit](https://github.com/TimUntersberger/neogit)
    - [Neorg](https://github.com/nvim-neorg/neorg)
    - [Neo-tree](https://github.com/nvim-neo-tree/neo-tree.nvim)
    - [Notify](https://github.com/rcarriga/nvim-notify)
    - [NvimTree](https://github.com/kyazdani42/nvim-tree.lua)
    - [Pounce](https://github.com/rlane/pounce.nvim)
    - [Sneak](https://github.com/justinmk/vim-sneak)
    - [Symbols-Outline](https://github.com/simrat39/symbols-outline.nvim)
    - [Telescope](https://github.com/nvim-telescope/telescope.nvim)
    - [Telekasten](https://github.com/renerocksai/telekasten.nvim)
    - [Treesitter](https://github.com/tree-sitter/tree-sitter)
    - [Nvim-ts-Rainbow](https://github.com/p00f/nvim-ts-rainbow)
    - [Vim Wiki](https://github.com/vimwiki/vimwiki)
    - [WhichKey](https://github.com/folke/which-key.nvim)
    - [Feline](https://github.com/feline-nvim/feline.nvim)
    - [Markdown](https://www.markdownguide.org/)
    - [Lualine](https://github.com/hoob3rt/lualine.nvim)
    - [Lightline](https://github.com/itchyny/lightline.vim)

## Usage

You can use your favorite plugin manager for this. Here are some examples with the most popular ones:

#### Vim-plug

```lua
Plug 'chalklines.nvim', {'as': 'chalklines'}
```

#### Packer.nvim

```lua
use({
	'chalklines.nvim',
	as = 'chalklines'
})
```

#### Vundle

```lua
Plugin 'chalklines.nvim', {'name': 'chalklines'}
```

### Setup

There are already some sane defaults that you may like, however you can change them to match your taste. These are the defaults:

```lua
bold_vert_split = false,
dim_nc_background = false,
disable_background = false,
disable_float_background = false,
disable_italics = false,

modules = {
  barbar = true,
  bufferline = true,
  cmp = true,
  dashboard = true,
  diagnostic = {
    enable = true,
    background = true,
  },
  fern = true,
  fidget = true,
  gitgutter = true,
  gitsigns = true,
  glyph_palette = true,
  hop = true,
  indent_blankline = true,
  illuminate = true,
  lightspeed = true,
  lsp_saga = true,
  lsp_trouble = true,
  modes = true,
  native_lsp = true,
  neogit = true,
  neorg = true,
  neotree = true,
  notify = true,
  nvimtree = true,
  pounce = true,
  sneak = true,
  symbol_outline = true,
  telescope = true,
  treesitter = true,
  tsrainbow = true,
  vimwiki = true,
  whichkey = true,
},

groups = {
  background = 'base',
  panel = 'surface',
  border = 'hl_med',
  comment = 'muted',
  link = 'magenta',
  punctuation = 'muted',

  error = 'red',
  hint = 'magenta',
  info = 'blue',
  warn = 'yellow',

  git_add = 'blue',
  git_change = 'cyan',
  git_delete = 'red',
  git_dirty = 'cyan',
  git_ignore = 'muted',
  git_merge = 'magenta',
  git_rename = 'green',
  git_stage = 'magenta',
  git_text = 'cyan',

  headings = {
    h1 = 'magenta',
    h2 = 'blue',
    h3 = 'cyan',
    h4 = 'yellow',
    h5 = 'green',
    h6 = 'blue',
  },
},
highlight_groups = {},
}
```

The way you setup the settings on your configuration varies on whether you are using vimL for this or Lua.

<details>
    <summary>For init.lua</summary>
<p>

```lua
local chalklines = require("chalklines")

-- configure it
chalklines.setup(<settings>)
```

<br />
</details>

<details>
    <summary>For init.vim</summary>
<p>

```lua
lua << EOF
local chalklines = require("chalklines")

-- configure it
chalklines.setup(<settings>)
EOF
```

<br />
</details>

After setting things up, you can load chalklines like so:

```vim
" Vim Script
colorscheme chalklines
```

```lua
-- Lua
vim.cmd[[colorscheme chalklines]]
```

### Configuration

Although settings already have self-explanatory names, here is where you can find info about each one of them and their classifications!

#### General
You must set the background to either light / dark if depending on the colors you would like.

This settings are unrelated to any group and are independent.

-   `transparent_background`: (Boolean) if true, disables setting the background color.
-   `term_colors`: (Boolean) if true, sets terminal colors (e.g. `g:terminal_color_0`).

#### Integrations

These integrations allow chalklines to set the theme of various plugins/stuff. To enable an integration you just need to set it to `true`, however, there are some special integrations...

If you'd like to know which highlight groups are being affected by chalklines, checkout this directory: [`lua/chalklines/group/modules/`](https://github.com/chalklines.nvim/tree/main/lua/chalklines/core/integrations).

##### Special Integrations

-   **Feline.nvim**: chalklines provides this integration as a component that you can select on your Feline config:

```lua
require("feline").setup({
	components = require('chalklines.group.modules.feline'),
})
```

-   **Indent-blankline.nvim**: setting `enabled` to `true` enables this integration. `colored_indent_levels` enables char highlights per indent level. Follow the instructions [here](https://github.com/lukas-reineke/indent-blankline.nvim#with-custom-gindent_blankline_char_highlight_list) to set the latter up.
-   **Lightline:** use this to set it up (Note: `chalklines` is the only valid colorscheme name. It will pick the one set in your config):

```lua
let g:lightline = {'colorscheme': 'chalklines'}
```

-   **Lualine:** use this to set it up (Note: `chalklines` is the only valid theme name. It will pick the one set in your config):

```lua
require('lualine').setup {
  options = {
    theme = "chalklines"
	-- ... the rest of your lualine config
  }
}
```

-   **Native Nvim LSP:** setting `enabled` to `true` enables this integration. In the inners tables you can set the style for the diagnostics, both `virtual_text` (what you see on the side) and `underlines` (what points directly at the thing (e.g. an error)).
-   **NvimTree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  nvimtree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
	transparent_panel = false, -- make the panel transparent
  }
}
```
-   **Neo-tree:** setting `enabled` to `true` enables this integration:

```lua
integration = {
  neotree = {
    enabled = true,
    show_root = true, -- makes the root folder not transparent
	transparent_panel = false, -- make the panel transparent
  }
}
```

## 💝 Heavily inspired by:

-   [rose-pine](https://github.com/rose-pine/neovim)
-   [Bright Lights](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/screenshots/bright_lights.png)

&nbsp;

<p align="center"><a href="https://github.com/jzone1366/chalklines.nvim/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=FFEBFF&colorA=181818&colorB=76D5FF"/></a></p>
