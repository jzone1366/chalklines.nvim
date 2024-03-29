local template = require 'chalklines.lib.template'
local color = require 'chalklines.lib.colors'

local M = {}

function M.generate(theme)
  local colors = theme.generated

  local component_names = { 'r', 'g', 'b' }
  local itermcolors = {}

  for k, v in pairs(colors) do
    if type(v) == 'string' then
      -- Skip the name, only colors
      if v:match '^#' then
        local comp = color.hex_to_norm_rgb(v)
        local result = {}
        for i, name in ipairs(component_names) do
          result[name] = comp[i]
        end
        itermcolors[k] = result
      else
        -- This is for the name
        itermcolors[k] = v
      end
    else
      itermcolors[k] = v
    end
  end

  itermcolors.meta = theme.meta

  local content = [[
<?xml version="1.0" encoding="UTF-8"?>
<!DOCTYPE plist PUBLIC "-//Apple//DTD PLIST 1.0//EN" "http://www.apple.com/DTDs/PropertyList-1.0.dtd">
<plist version="1.0">
<!-- Chalklines ITerm Colors -->
<!-- Style: ${meta.name} -->
<!-- Upstream: ${meta.url} -->
<dict>
  <key>Ansi 0 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${black.b}</real>
    <key>Green Component</key>
    <real>${black.g}</real>
    <key>Red Component</key>
    <real>${black.r}</real>
  </dict>
  <key>Ansi 1 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${red.b}</real>
    <key>Green Component</key>
    <real>${red.g}</real>
    <key>Red Component</key>
    <real>${red.r}</real>
  </dict>
  <key>Ansi 10 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${green.b}</real>
    <key>Green Component</key>
    <real>${green.g}</real>
    <key>Red Component</key>
    <real>${green.r}</real>
  </dict>
  <key>Ansi 11 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${yellow.b}</real>
    <key>Green Component</key>
    <real>${yellow.g}</real>
    <key>Red Component</key>
    <real>${yellow.r}</real>
  </dict>
  <key>Ansi 12 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${blue.b}</real>
    <key>Green Component</key>
    <real>${blue.g}</real>
    <key>Red Component</key>
    <real>${blue.r}</real>
  </dict>
  <key>Ansi 13 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${purple.b}</real>
    <key>Green Component</key>
    <real>${purple.g}</real>
    <key>Red Component</key>
    <real>${purple.r}</real>
  </dict>
  <key>Ansi 14 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${cyan.b}</real>
    <key>Green Component</key>
    <real>${cyan.g}</real>
    <key>Red Component</key>
    <real>${cyan.r}</real>
  </dict>
  <key>Ansi 15 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Ansi 2 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${green.b}</real>
    <key>Green Component</key>
    <real>${green.g}</real>
    <key>Red Component</key>
    <real>${green.r}</real>
  </dict>
  <key>Ansi 3 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${yellow.b}</real>
    <key>Green Component</key>
    <real>${yellow.g}</real>
    <key>Red Component</key>
    <real>${yellow.r}</real>
  </dict>
  <key>Ansi 4 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${blue.b}</real>
    <key>Green Component</key>
    <real>${blue.g}</real>
    <key>Red Component</key>
    <real>${blue.r}</real>
  </dict>
  <key>Ansi 5 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${purple.b}</real>
    <key>Green Component</key>
    <real>${purple.g}</real>
    <key>Red Component</key>
    <real>${purple.r}</real>
  </dict>
  <key>Ansi 6 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${cyan.b}</real>
    <key>Green Component</key>
    <real>${cyan.g}</real>
    <key>Red Component</key>
    <real>${cyan.r}</real>
  </dict>
  <key>Ansi 7 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Ansi 8 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${black.b}</real>
    <key>Green Component</key>
    <real>${black.g}</real>
    <key>Red Component</key>
    <real>${black.r}</real>
  </dict>
  <key>Ansi 9 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${red.b}</real>
    <key>Green Component</key>
    <real>${red.g}</real>
    <key>Red Component</key>
    <real>${red.r}</real>
  </dict>
  <key>Background Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg.b}</real>
    <key>Green Component</key>
    <real>${bg.g}</real>
    <key>Red Component</key>
    <real>${bg.r}</real>
  </dict>
  <key>Bold Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Cursor Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${orange.b}</real>
    <key>Green Component</key>
    <real>${orange.g}</real>
    <key>Red Component</key>
    <real>${orange.r}</real>
  </dict>
  <key>Cursor Text Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg.b}</real>
    <key>Green Component</key>
    <real>${bg.g}</real>
    <key>Red Component</key>
    <real>${bg.r}</real>
  </dict>
  <key>Foreground Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${fg.b}</real>
    <key>Green Component</key>
    <real>${fg.g}</real>
    <key>Red Component</key>
    <real>${fg.r}</real>
  </dict>
  <key>Selected Text Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${bg.b}</real>
    <key>Green Component</key>
    <real>${bg.g}</real>
    <key>Red Component</key>
    <real>${bg.r}</real>
  </dict>
  <key>Selection Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${selection.b}</real>
    <key>Green Component</key>
    <real>${selection.g}</real>
    <key>Red Component</key>
    <real>${selection.r}</real>
  </dict>
</dict>
</plist>
  ]]

  local iterm = template.parse_template_str(content, itermcolors)

  return iterm
end

return M
