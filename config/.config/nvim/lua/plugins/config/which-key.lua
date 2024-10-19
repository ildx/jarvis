-- [[ Which Key ]]
--  Show key bindings

return {
  "folke/which-key.nvim",
  event = "VimEnter", -- Load before all other UI elements
  config = function()
    require("which-key").setup()

    -- Document existing key chains
    require("which-key").add {
      { "", group = "[D]ocument" },
      { "", group = "[R]ename" },
      { "", group = "[W]orkspace" },
      { "", group = "[C]ode" },
      { "", group = "[S]earch" },
      { "", desc = "", hidden = true, mode = { "n", "n", "n", "n", "n" } },
    }
  end
}
