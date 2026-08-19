return {
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      "hrsh7th/cmp-nvim-lsp",
      "hrsh7th/cmp-buffer",
      "L3MON4D3/LuaSnip",
    },

    config = function()
      local cmp = require("cmp")

      cmp.setup({
        mapping = {
          -- ↓ / Ctrl+j = próxima opção
          ["<Down>"] = cmp.mapping.select_next_item(),
          ["<C-j>"] = cmp.mapping.select_next_item(),

          -- ↑ / Ctrl+k = opção anterior
          ["<Up>"] = cmp.mapping.select_prev_item(),
          ["<C-k>"] = cmp.mapping.select_prev_item(),

          -- Tab = confirma a opção
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.confirm({ select = true })
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Shift+Tab = opção anterior
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            else
              fallback()
            end
          end, { "i", "s" }),

          -- Enter = confirma a opção selecionada
          ["<CR>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.confirm({ select = true })
            else
              fallback()
            end
          end, { "i", "s" }),
        },

        sources = {
          { name = "nvim_lsp" },
          { name = "buffer" },
        },
      })
    end,
  },
}
