return {
  "m4xshen/autoclose.nvim",
  config = function()
    require("autoclose").setup({
      options = {
        pair_spaces = true,
        disable_when_touch = true,
      },
      keys = {
        ["<"] = { escape = false, close = true, pair = "<>", disabled_filetypes = {} },
      }
    })
  end,
}
