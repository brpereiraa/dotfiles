return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "clangd", "rust_analyzer, ts_ls " }, -- Add clangd to the list
    },
  }
  
