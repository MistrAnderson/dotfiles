return {
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "williamboman/mason.nvim",
      "williamboman/mason-lspconfig.nvim",
    },
    config = function()
      local capabilities = require("cmp_nvim_lsp").default_capabilities()
      require("mason").setup()
      require("mason-lspconfig").setup({
        ensure_installed = {
          "lua_ls",
        },
        handlers = {
          function(server_name)
            --local capabilities = require("cmp_nvim_lsp").default_capabilities()
            require("lspconfig")[server_name].setup({
              on_attach = attach,
              capabilities = capabilities,
            })
          end,
        },
      })

      vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
      vim.keymap.set("n", "<leader>ff", vim.lsp.buf.format , {})
      vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
      vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
    end,
  },
}
