return {
  "nvimtools/none-ls.nvim",
  config = function()
    local nulls_ls = require("null-ls")

    nulls_ls.setup({
      sources = {
        nulls_ls.builtins.formatting.stylua,
        nulls_ls.builtins.formatting.black,
      },
    })

    vim.keymap.set("n", "<leader>gf", vim.lsp.buf.format, {})
  end,
}
