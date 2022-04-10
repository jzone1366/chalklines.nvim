local M = {}

---Walk path (one.two.three) in a table and return value
---@param t table
---@param path string
---@return any
local function get_path(t, path)
  for segment in path:gmatch '[^.]+' do
    if type(t) == 'table' then
      t = t[segment]
    end
  end
  return t
end

function M.parse_template_str(template, spec)
  return (
      template:gsub('($%b{})', function(w)
        local path = w:sub(3, -2)
        local value = get_path(spec, path) or w
        if type(value) == 'table' then
          return value.base and value.base or value
        else
          return value or w
        end
      end)
    )
end

return M
