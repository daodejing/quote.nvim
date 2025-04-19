-- main module file
local mod = require("teacup.module")

---@class Config
local config = {
  msg = "Hello World!",
}

local M = {}

---@type Config
M.config = config

-- Hello method
M.hello = function()
  return mod.great(M.config.msg)
end

-- Execute plugin
M.execute = function()
  vim.api.nvim_create_user_command("Teacup", function()
    vim.notify(M.hello())
  end, {})
end

-- Setup method
M.setup = function(args)
  M.config = vim.tbl_deep_extend("force", M.config, args or {})
  M.execute()
end

return M
