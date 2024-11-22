return {
    -- Mason setup
    {
      "williamboman/mason.nvim",
      config = function()
        require("mason").setup()
      end,
    },
    -- Mason LSPconfig setup
    {
      "williamboman/mason-lspconfig.nvim",
      dependencies = { "williamboman/mason.nvim" },
      config = function()
        require("mason-lspconfig").setup({
          ensure_installed = { "clangd" }, -- Add other servers here as needed
        })
      end,
    },
    -- lsp-zero setup
    {
      "VonHeikemen/lsp-zero.nvim",
      branch = "v2.x",
      dependencies = {
        { "neovim/nvim-lspconfig" },
        { "williamboman/mason.nvim" },
        { "williamboman/mason-lspconfig.nvim" },
        { "hrsh7th/nvim-cmp" },
        { "hrsh7th/cmp-nvim-lsp" },
      },
      config = function()
        local lsp = require("lsp-zero").preset({})
        lsp.configure("clangd", {
          cmd = { "clangd" },
          filetypes = { "c", "cpp", "objc", "objcpp" },
        })
        lsp.setup()
      end,
    },
  }
  