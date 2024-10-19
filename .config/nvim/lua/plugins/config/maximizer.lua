-- [[ Vim Maximizer ]]
--  Maximize and restore the current window

return {
  "szw/vim-maximizer",
  config = function()
    vim.keymap.set("n", "<leader>mw", "<cmd>MaximizerToggle<CR>", { desc = "Toggle Maximizer" })
  end,
}
