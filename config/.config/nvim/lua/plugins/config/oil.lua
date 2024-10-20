-- [[ Oil.nvim ]]
--  Browse files in buffer

return {
  "stevearc/oil.nvim",
  config = function()
    local oil = require "oil"
    oil.setup()
    vim.keymap.set("n", "-", oil.open, { desc = "Open parent directory" })
  end,
}
