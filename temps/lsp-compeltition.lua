return {
  "neovim/nvim-lspconfig",
  dependencies = {
    {
      'VonHeikemen/lsp-zero.nvim',
      branch = 'v2.x',
      config = function ()
        require('lsp-zero')
      end
    },
    "jose-elias-alvarez/null-ls.nvim",
    {
      "williamboman/mason.nvim",
      opts = {
        ui = {
          border = "rounded",
        },
      },
    },
    "folke/neodev.nvim",
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  event = "VeryLazy",
  main = "kuro.lsp",
  opts = {
    mason = {
      enable = true,
      auto_install = false,
    },
    servers = {
      phpactor = { enable = true },
    },
  },
}
