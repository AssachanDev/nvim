return {
  {
    "williamboman/mason.nvim",
    config = function() require("mason").setup() end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    config = function()
      require("mason-lspconfig").setup({
        ensure_installed = { "basedpyright", "lua_ls", "rust_analyzer" },
      })
    end,
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      -- Python & Lua
      if vim.fn.executable("basedpyright") == 1 then vim.lsp.enable("basedpyright") end
      if vim.fn.executable("lua-language-server") == 1 then vim.lsp.enable("lua_ls") end

      -- Diagnostic Settings
      vim.diagnostic.config({
        virtual_text = true,
        float = { border = "rounded", source = "always" },
      })

      -- หน้าต่าง Error เด้งไว (ต้องไปแก้ updatetime ใน init.lua หรือ options.lua ด้วยนะ)
      vim.api.nvim_create_autocmd("CursorHold", {
        callback = function() vim.diagnostic.open_float(nil, { focusable = false }) end,
      })
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    dependencies = { 
      "hrsh7th/cmp-nvim-lsp", 
      "L3MON4D3/LuaSnip",
      "hrsh7th/cmp-buffer",
      "hrsh7th/cmp-path",
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        snippet = {
          expand = function(args) require("luasnip").lsp_expand(args.body) end,
        },
        -- เพิ่มส่วน Formatting เพื่อให้เห็น [Buffer] [LSP] [Path]
        formatting = {
          format = function(entry, vim_item)
            vim_item.menu = ({
              nvim_lsp = "[LSP]",
              buffer   = "[Buffer]",
              path     = "[Path]",
            })[entry.source.name]
            return vim_item
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-j>"] = cmp.mapping.select_next_item(),
          ["<C-k>"] = cmp.mapping.select_prev_item(),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then cmp.select_next_item() else fallback() end
          end, { "i", "s" }),
        }),
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "buffer", keyword_length = 3 },
          { name = "path" },
        }),
      })
    end,
  },
  {
    "mrcjkb/rustaceanvim",
    version = "^5",
    lazy = false,
  },
}
