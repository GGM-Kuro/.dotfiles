return {
  "hrsh7th/nvim-cmp",
  dependencies = {
    "hrsh7th/cmp-buffer",
    "hrsh7th/cmp-path",
    "hrsh7th/cmp-nvim-lua",
    "hrsh7th/cmp-nvim-lsp",
    { "j-hui/fidget.nvim", tag = "legacy" },
			-- support for dart hot reload on save
    "RobertBrunhage/dart-tools.nvim",
    "hrsh7th/cmp-nvim-lsp",
    "hrsh7th/cmp-cmdline",
    "hrsh7th/cmp-git",
    "saadparwaiz1/cmp_luasnip",
    "onsails/lspkind-nvim",
    { "L3MON4D3/LuaSnip", version = "v1.*" },
    "windwp/nvim-autopairs",
    "rafamadriz/friendly-snippets",
    -- {
    --   "zbirenbaum/copilot-cmp",
    --   dependencies = {
    --     "zbirenbaum/copilot.lua",
    --     cmd = { "Copilot" },
    --     event = { "VeryLazy" },
    --     opts = {
    --       suggestion = { enabled = false },
    --       panel = { enabled = false },
    --     },
    --   },
    --   config = true,
    -- },
  },
  event = "VeryLazy",
  config = function()
    require "kuro.completition"
  end,
}
