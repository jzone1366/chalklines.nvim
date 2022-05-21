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

## Color palette

| Dark                                           |    Hex    | Light                                           |    Hex    | Name          | Usage                                               |
| :----------------------------------------------| :-------: | :-----------------------------------------------| :-------: | :------------ | :-------------------------------------------------- |
| <img src="assets/dark/base.svg" width="30">    | `#181818` |  <img src="assets/light/base.svg" width="30">   | `#E7E7E7` | base          | Background                                          |
| <img src="assets/dark/surface.svg" width="30"> | `#242424` |  <img src="assets/light/surface.svg" width="30">| `#DBDBDB` | surface       | StatusLine                                          |
| <img src="assets/dark/overlay.svg" width="30"> | `#303030` |  <img src="assets/light/overlay.svg" width="30">| `#CFCFCF` | overlay       | PopUps, Floats                                      |
| <img src="assets/dark/text.svg" width="30">    | `#C1C7D6` |  <img src="assets/light/text.svg" width="30">   | `#525A69` | text          | Base Text, Foreground                               |
| <img src="assets/dark/subtle.svg" width="30">  | `#727A8C` |  <img src="assets/light/subtle.svg" width="30"> | `#727A8C` | subtle        | Subtle Text, comments                               |
| <img src="assets/dark/muted.svg" width="30">   | `#525A69` |  <img src="assets/light/muted.svg" width="30">  | `#C1C7D6` | muted         | Muted Text, virtual_text                            |
| <img src="assets/dark/hl_low.svg" width="30">  | `#212121` |  <img src="assets/light/hl_low.svg" width="30"> | `#DEDEDE` | hl_low        |                                                     |
| <img src="assets/dark/hl_med.svg" width="30">  | `#333333` |  <img src="assets/light/hl_med.svg" width="30"> | `#CBCBCB` | hl_med        |                                                     |
| <img src="assets/dark/hl_high.svg" width="30"> | `#474747` |  <img src="assets/light/hl_high.svg" width="30">| `#B7B7B7` | hl_high       |                                                     |
| <img src="assets/dark/red.svg" width="30">     | `#FF355B` |  <img src="assets/light/red.svg" width="30">    | `#FF355B` | Red           |                                                     |
| <img src="assets/dark/green.svg" width="30">   | `#B7E876` |  <img src="assets/light/green.svg" width="30">  | `#70AE1E` | Green         |                                                     |
| <img src="assets/dark/yellow.svg" width="30">  | `#FFC251` |  <img src="assets/light/yellow.svg" width="30"> | `#FFA600` | Yellow        |                                                     |
| <img src="assets/dark/blue.svg" width="30">    | `#76D5FF` |  <img src="assets/light/blue.svg" width="30">   | `#00A4EB` | Blue          |                                                     |
| <img src="assets/dark/magenta.svg" width="30"> | `#BA76E7` |  <img src="assets/light/magenta.svg" width="30">| `#BA76E7` | magenta       |                                                     |
| <img src="assets/dark/cyan.svg" width="30">    | `#6CBFB5` |  <img src="assets/light/cyan.svg" width="30">   | `#4EB1A6` | cyan          |                                                     |
| <img src="assets/dark/orange.svg" width="30">  | `#F34B00` |  <img src="assets/light/orange.svg" width="30"> | `#F34B00` | orange        |                                                     |
| <img src="assets/dark/pink.svg" width="30">    | `#DD56A1` |  <img src="assets/light/pink.svg" width="30">   | `#DD56A1` | pink          |                                                     |

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

colorMaps = {
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
## Support Me
<p align="center">
	<a href="https://www.buymeacoffee.com/jzone1366"><img src="https://img.buymeacoffee.com/button-api/?text=Buy me a beer&emoji=🍺&slug=jzone1366&button_colour=f24b03&font_colour=000000&font_family=Lato&outline_colour=000000&coffee_colour=FFDD00" /></a>
</p>

## 💝 Heavily inspired by:

-   [rose-pine](https://github.com/rose-pine/neovim)
-   [Bright Lights](https://github.com/mbadolato/iTerm2-Color-Schemes/blob/master/screenshots/bright_lights.png)

&nbsp;

<p align="center"><a href="https://github.com/jzone1366/chalklines.nvim/blob/main/LICENSE"><img src="https://img.shields.io/static/v1.svg?style=for-the-badge&label=License&message=MIT&logoColor=FFEBFF&colorA=181818&colorB=76D5FF"/></a></p>
