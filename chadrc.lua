-- First read our docs (completely) then check the example_config repo

local M = {}

-- Path to overriding theme and highlights files
local highlights = require "custom.highlights"

M.ui = {
  theme = "everforest_light",
  hl_override = highlights.override,
  hl_add = highlights.add,

  transparency = false,
}

M.plugins = require "custom.plugins"

-- check core.mappings for table structure
M.mappings = require "custom.mappings"

return M
