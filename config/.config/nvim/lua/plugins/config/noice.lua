-- [[ Noice ]]
--  UI niceness by folke

return {
  "folke/noice.nvim",
  opts = {},
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("noice").setup {
      notify = {
        enabled = false
      }
    }
  end
}
