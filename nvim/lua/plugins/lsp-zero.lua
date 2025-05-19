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
        ensure_installed = { "clangd", "rust_analyzer", "ts_ls", "asm_lsp", "jdtls", "cssls" }, -- Add other servers if needed
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
      lsp.skip_server_setup({ "tsserver" })
      lsp.configure("clangd", {
        cmd = { "clangd" },
        filetypes = { "c", "cpp", "tpp", "objc", "objcpp" },
      })
      lsp.configure("rust_analyzer", {
              cmd = { "rust-analyzer" },
              filetypes = {"rust"}
      })
      lsp.configure("ts_ls", {  -- Using tsserver
              cmd = { "typescript-language-server", "--stdio" },
              filetypes = {"javascript", "typescript", "typescriptreact", "javascriptreact"}
      })
      lsp.configure("asm_lsp", {
              cmd = { "asm-lsp "},
              filetypes = {"assembly"}
      })
      lsp.configure("jdtls", {
              cmd = { "jdtls" },
              filetypes = { "java" }
      })
      lsp.configure("cssls", {
              cmd = { "css-lsp" },
              filetypes = { "css", "scss" }
      })
      lsp.setup()
    end,
  },
  -- nvim-cmp setup for autocompletion
  {
    "hrsh7th/nvim-cmp",
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp" }, -- For LSP source in nvim-cmp
    },
    config = function()
      local cmp = require("cmp")
      cmp.setup({
        completion = {
          autocomplete = { cmp.TriggerEvent.TextChanged, cmp.TriggerEvent.InsertEnter },
        },
        mapping = {
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item() -- Select the next item in the completion list
            else
              cmp.complete() -- Trigger autocompletion if nothing is visible
            end
          end, { "i", "s" }), -- Apply to insert and select mode
          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item() -- Select the previous item in the completion list
            else
              fallback() -- Default behavior when no completion is visible
            end
          end, { "i", "s" }),
        },
        sources = {
          { name = "nvim_lsp" }, -- Use LSP source for completion
        },
      })
    end,
  },
}
