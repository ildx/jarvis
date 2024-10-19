-- [[ Conform ]]
--  Lightweight formatter

return {
  "stevearc/conform.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    local conform = require "conform"

    conform.setup {
      formatters_by_ft = {
        css = { { "prettierd", "prettier" } },
        go = { { "gofumpt", "goimports" } },
        html = { { "prettierd", "prettier" } },
        javascript = { { "prettierd", "prettier" } },
        javascriptreact = { { "prettierd", "prettier" } },
        json = { { "prettierd", "prettier" } },
        lua = { "stylua" },
        markdown = { { "prettierd", "prettier" } },
        python = { "isort", "black" },
        typescript = { { "prettierd", "prettier" } },
        typescriptreact = { { "prettierd", "prettier" } },
        yaml = { { "prettierd", "prettier" } },
      },
      -- Leave this off for now
      -- format_on_save = {
      --  lsp_fallback = true,
      --  async = false,
      --  timeout_ms = 500,
      -- },
    }

    vim.keymap.set({ "n", "v" }, "<leader>fd", function()
      conform.format {
        lsp_fallback = true,
        async = false,
        timeout_ms = 500,
      }
    end, { desc = "[F]ormat [D]ocument or selection" })
  end,
}
