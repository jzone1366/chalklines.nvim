local template = require 'chalklines.lib.template'
local util = require 'chalklines.util'

local M = {}

--- @param colors ColorScheme
function M.generate(colors)
  local component_names = { 'r', 'g', 'b' }
  local itermcolors = {}

  for k, v in pairs(colors) do
    if type(v) == 'string' then
      -- Skip the name, only colors
      if v:match '^#' then
        local comp = util.hex_to_norm_rgb(v)
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

  local iterm = template.parse_template_str(
    [[
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
    <real>${base.b}</real>
    <key>Green Component</key>
    <real>${base.g}</real>
    <key>Red Component</key>
    <real>${base.r}</real>
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
    <real>${magenta.b}</real>
    <key>Green Component</key>
    <real>${magenta.g}</real>
    <key>Red Component</key>
    <real>${magenta.r}</real>
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
    <real>${text.b}</real>
    <key>Green Component</key>
    <real>${text.g}</real>
    <key>Red Component</key>
    <real>${text.r}</real>
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
    <real>${magenta.b}</real>
    <key>Green Component</key>
    <real>${magenta.g}</real>
    <key>Red Component</key>
    <real>${magenta.r}</real>
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
    <real>${text.b}</real>
    <key>Green Component</key>
    <real>${text.g}</real>
    <key>Red Component</key>
    <real>${text.r}</real>
  </dict>
  <key>Ansi 8 Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${base.b}</real>
    <key>Green Component</key>
    <real>${base.g}</real>
    <key>Red Component</key>
    <real>${base.r}</real>
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
    <real>${base.b}</real>
    <key>Green Component</key>
    <real>${base.g}</real>
    <key>Red Component</key>
    <real>${base.r}</real>
  </dict>
  <key>Bold Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${text.b}</real>
    <key>Green Component</key>
    <real>${text.g}</real>
    <key>Red Component</key>
    <real>${text.r}</real>
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
    <real>${base.b}</real>
    <key>Green Component</key>
    <real>${base.g}</real>
    <key>Red Component</key>
    <real>${base.r}</real>
  </dict>
  <key>Foreground Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${text.b}</real>
    <key>Green Component</key>
    <real>${text.g}</real>
    <key>Red Component</key>
    <real>${text.r}</real>
  </dict>
  <key>Selected Text Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${base.b}</real>
    <key>Green Component</key>
    <real>${base.g}</real>
    <key>Red Component</key>
    <real>${base.r}</real>
  </dict>
  <key>Selection Color</key>
  <dict>
    <key>Color Space</key>
    <string>sRGB</string>
    <key>Blue Component</key>
    <real>${hl_med.b}</real>
    <key>Green Component</key>
    <real>${hl_med.g}</real>
    <key>Red Component</key>
    <real>${hl_med.r}</real>
  </dict>
</dict>
</plist>
  ]],
    itermcolors
  )

  return iterm
end

return M
