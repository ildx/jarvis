-- [[ Twilight ]]
--  Dim inactive portions of the code

return {
  "folke/twilight.nvim",
  opts = {
    context = 3,
    treesitter = true,
    expand = {
      "function",
      "method",
      "table",
      "if_statement",
    },
  },
  config = function()
    vim.keymap.set("n", "<leader>tw", "<cmd>Twilight<CR>", { desc = "Toggle [TW]ilight" })
  end,
}
