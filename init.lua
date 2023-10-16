local api = vim.api
local utils = require("utils")


-- check if we have the latest stable version of nvim
local expected_ver = "0.9.1"
local nvim_ver = utils.get_nvim_version()

if nvim_ver ~= expected_ver then
  local msg = string.format("Unsupported nvim version: expect %s, but got %s instead!", expected_ver, nvim_ver)
  api.nvim_err_writeln(msg)
  return
end

local core_conf_files = {
  "base-setup.vim",
  "globals.lua",
  "plugins.lua",
  "nvim-tree-setup.lua",
  "typescript.lua",
  "autocomplete.lua",
  "fzf-lua.lua",
  "lspsaga_setup.lua",
  "nvim-comment.lua",
  "null-ls.lua",
  "prettier.lua",
  "eslint.lua", 
  -- "syntax-highlightings.lua", -- need to test, i do not see any differences

  "base-setup-after-all.vim"
}

-- source all the core config files
for _, name in ipairs(core_conf_files) do
  local path = string.format("%s/core/%s", vim.fn.stdpath("config"), name)
  local source_cmd = "source " .. path
  vim.cmd(source_cmd)
end
