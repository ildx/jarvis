-- [[ Treesitter ]]
--  Parse my language baby

return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSUpdate",
  config = function()
    -- See `:help nvim-treesitter`
    ---@diagnostic disable-next-line: missing-fields
    require("nvim-treesitter.configs").setup {
      ensure_installed = {
        "astro",
        "bash",
        "css",
        "gitcommit",
        "go",
        "graphql",
        "json",
        "json5",
        "html",
        "javascript",
        "lua",
        "markdown",
        "prisma",
        "svelte",
        "tsx",
        "typescript",
        "vim",
        "vimdoc",
      },
      auto_install = true,
      highlight = { enable = true },
      indent = { enable = true },
    }

    -- TODO: See addiotional modules:
    --  - Incremental selection: Included, see `:help nvim-treesitter-incremental-selection-mod`
    --  - Show your current context: https://github.com/nvim-treesitter/nvim-treesitter-context
    --  - Treesitter + textobjects: https://github.com/nvim-treesitter/nvim-treesitter-textobjects
  end,
}
