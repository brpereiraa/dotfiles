return {
    "williamboman/mason-lspconfig.nvim",
    opts = {
      ensure_installed = { "clangd", "rust_analyzer", "ts_ls", "asm_lsp", "jdtls", "cssls" }, -- Add clangd to the list
    },
  }
  
