-- [[ Nvim-cmp ]]
-- Autocomplete engine

return {
  "hrsh7th/nvim-cmp",
  event = "InsertEnter",
  dependencies = {
    -- Snippet Engine and friends
    {
      "L3MON4D3/LuaSnip",
      build = (function()
        -- Build is required for regex in snippets
        return "make install_jsregexp"
      end)(),
    },
    "saadparwaiz1/cmp_luasnip",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-path",

    -- Pre-configured snippets
    "rafamadriz/friendly-snippets",
  },
  config = function()
    -- See `:help cmp`
    local cmp = require "cmp"
    local luasnip = require "luasnip"
    luasnip.config.setup {}

    cmp.setup {
      snippet = {
        expand = function(args)
          luasnip.lsp_expand(args.body)
        end,
      },
      completion = { completeopt = "menu,menuone,noinsert" },

      -- See `:help ins-complettion` for more info about mappings
      mapping = cmp.mapping.preset.insert {
        -- Select the [n]ext item
        ["<S-cn>"] = cmp.mapping.select_next_item(),
        -- Select the [p]revious item
        ["<S-cp>"] = cmp.mapping.select_prev_item(),

        -- Accept ([y]es) the completion
        --  This will auto-import if LSP supports it
        --  This will expand snippets if LSP sends one
        ["<Enter>"] = cmp.mapping.confirm { select = true },

        -- Manually trigger a completion
        --  Generally not needed, nvim-cmp handles things
        ["<S-Space>"] = cmp.mapping.complete {},

        -- Move inside snipppets
        ["<S-cl>"] = cmp.mapping(function()
          if luasnip.expand_or_locally_jumpable() then
            luasnip.expand_or_jump()
          end
        end, { "i", "s" }),
        ["<S-ch>"] = cmp.mapping(function()
          if luasnip.locally_jumpable(-1) then
            luasnip.jump(-1)
          end
        end, { "i", "s" }),
      },
      sources = {
        { name = "nvim_lsp" },
        { name = "luasnip" },
        { name = "path" },
      },
    }
  end,
}
