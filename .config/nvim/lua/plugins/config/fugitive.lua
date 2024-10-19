-- [[ Git ]]
--  Add git integration to Neovim

return {
  -- [[ Fugitive.nvim ]]
  --  Premier Vim plugin for Git
  {
    "tpope/vim-fugitive",
    dependencies = { "tpope/vim-rhubarb" },
  },

  -- [[ Gitsigns.nvim ]]
  --  Git decorations
  {
    "lewis6991/gitsigns.nvim",
    opts = {
      signs = {
        add = { text = '+' },
        change = { text = '~' },
        delete = { text = '_' },
        topdelete = { text = '‾' },
        changedelete = { text = '~' },
      },
    },
    config = function()
      vim.keymap.set("n", "<leader>gp", "<cmd>Gitsigns preview_hunk<CR>", {})
      vim.keymap.set("n", "<leader>gt", "<cmd>Gitsigns toggle_current_line_blame<CR>", {})
    end
  }
}
