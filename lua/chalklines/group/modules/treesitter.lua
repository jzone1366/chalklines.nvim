local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    TSAttribute          = { link = 'Constant' }, -- Annotations that can be attached to the code to denote some kind of meta information. e.g. C++/Dart attributes.
    TSBoolean            = { link = 'Boolean' }, -- Boolean literals: `True` and `False` in Python.
    TSCharacter          = { link = 'Character' }, -- Character literals: `'a'` in C.
    TSComment            = { link = 'Comment' }, -- Line comments and block comments.
    TSConditional        = { link = 'Conditional' }, -- Keywords related to conditionals: `if`, `when`, `cond`, etc.
    TSConstant           = { fg = p.blue }, -- Constants identifiers. These might not be semantically constant.  E.g. uppercase variables in Python.
    TSConstBuiltin       = { fg = p.orange }, -- Built-in constant values: `nil` in Lua.
    -- TSConstMacro         = {}, -- Constants defined by macros: `NULL` in C.
    TSConstructor        = { fg = p.blue }, -- For constructor calls and definitions: `= { }` in Lua, and Java constructors.
    TSError              = { fg = colorMaps.error }, -- Syntax/parser errors. This might highlight large sections of code while the user is typing still incomplete code, use a sensible highlight.
    -- TSException          = {}, -- Exception related keywords: `try`, `except`, `finally` in Python.
    TSField              = { fg = p.blue }, -- Object and struct fields.
    -- TSFloat              = {}, -- Floating-point number literals.
    TSFunction           = { fg = p.cyan }, -- Function calls and definitions.
    TSFuncBuiltin        = { fg = p.orange }, -- Built-in functions: `print` in Lua.
    -- TSFuncMacro          = { }, -- Macro defined functions (calls and definitions): each `macro_rules` in Rust.
    TSInclude            = { fg = p.green }, -- File or module inclusion keywords: `#include` in C, `use` or `extern crate` in Rust.
    TSKeyword            = { fg = p.green }, -- Keywords that don't fit into other categories.
    -- TSKeywordFunction    = {}, -- Keywords used to define a function: `function` in Lua, `def` and `lambda` in Python.
    TSKeywordOperator    = { fg = p.subtle, style = 'bold' }, -- Unary and binary operators that are English words: `and`, `or` in Python; `sizeof` in C.
    -- TSKeywordReturn      = {}, -- Keywords like `return` and `yield`.
    TSLabel              = { fg = p.blue }, -- GOTO labels: `label:` in C, and `::label::` in Lua.
    -- TSMethod             = {}, -- Method calls and definitions.
    -- TSNamespace          = {}, -- Identifiers referring to modules and namespaces.
    -- TSNone               = {}, -- No highlighting (sets all highlight arguments to `NONE`). this group is used to clear certain ranges, for example, string interpolations. Don't change the values of this highlight group.
    TSNumber             = { link = 'Number' }, -- Numeric literals that don't fit into other categories.
    TSOperator           = { fg = p.subtle }, -- Binary or unary operators: `+`, and also `->` and `*` in C.
    TSParameter          = { fg = p.magenta, style = styles.italic }, -- Parameters of a function.
    -- TSParameterReference = {}, -- References to parameters of a function.
    TSProperty           = { link = 'TSField' }, -- Same as `TSField`.
    TSPunctDelimiter     = { fg = colorMaps.punctuation }, -- Punctuation delimiters: Periods, commas, semicolons, etc.
    TSPunctBracket       = { fg = colorMaps.punctuation }, -- Brackets, braces, parentheses, etc.
    TSPunctSpecial       = { fg = colorMaps.punctuation }, -- Special punctuation that doesn't fit into the previous categories.
    -- TSRepeat             = {}, -- Keywords related to loops: `for`, `while`, etc.
    TSString             = { link = 'String'}, -- String literals.
    -- TSStringRegex        = {}, -- Regular expression literals.
    TSStringEscape       = { fg = p.green}, -- Escape characters within a string: `\n`, `\t`, etc.
    TSStringSpecial      = { link = 'TSString' }, -- Strings with special meaning that don't fit into the previous categories.
    -- TSSymbol             = {}, -- Identifiers referring to symbols or atoms.
    TSTag                = { fg = p.blue }, -- Tags like HTML tag names.
    -- TSTagAttribute       = {}, -- HTML tag attributes.
    TSTagDelimiter       = { fg = p.subtle }, -- Tag delimiters like `<` `>` `/`.
    TSText               = { fg = p.text }, -- Non-structured text. Like text in a markup language.
    -- TSStrong             = {}, -- Text to be represented in bold.
    -- TSEmphasis           = {}, -- Text to be represented with emphasis.
    -- TSUnderline          = {}, -- Text to be represented with an underline.
    -- TSStrike             = {}, -- Strikethrough text.
    TSTitle              = { fg = colorMaps.headings.h1, style = 'bold' }, -- Text that is part of a title.
    -- TSLiteral            = {}, -- Literal or verbatim text.
    TSURI                = { fg = colorMaps.link }, -- URIs like hyperlinks or email addresses.
    -- TSMath               = {}, -- Math environments like LaTeX's `$ ... $`
    TSTextReference      = { fg = p.subtle }, -- Footnotes, text references, citations, etc.
    -- TSEnvironment        = {}, -- Text environments of markup languages.
    -- TSEnvironmentName    = {}, -- Text/string indicating the type of text environment. Like the name of a `\begin` block in LaTeX.
    TSNote               = { fg = colorMaps.info }, -- Text representation of an informational note.
    TSWarning            = { fg = colorMaps.warn }, -- Text representation of a warning note.
    TSDanger             = { fg = colorMaps.error }, -- Text representation of a danger note.
    TSType               = { link = 'Type' }, -- Type (and class) definitions and annotations.
    -- TSTypeBuiltin        = {}, -- Built-in types: `i32` in Rust.
    TSVariable           = { fg = p.text, style = styles.italic }, -- Variable names that don't fit into other categories.
    TSVariableBuiltin    = { fg = p.orange }, -- Variable names defined by the language: `this` or `self` in Javascript.

    -- Languages ---------------------------------------------------------------
    -- Rust
    rustTSField          = { fg = p.subtle },
  }
end

return M
