-- https://github.com/j-hui/fidget.nvim

local M = {}

function M.get(cnf)
  local p = cnf.palette
  local colorMaps = cnf.colorMaps
  local styles = cnf.styles

  -- stylua: ignore
  return {
    FidgetTitle = { link = "Title" },
    FidgetTask = { link = "LineNr" },
  }
end

return M
