return {
  "rose-pine/neovim",
  name = "rose-pine",
  lazy = false,
  config = function()
    require("rose-pine").setup({
      variant = "main",        -- Choose 'main', 'moon', or 'dawn'
      dark_variant = "moon",
      disable_background = false, -- Disable background color (useful for terminal transparency)
    })
    --vim.cmd("colorscheme rose-pine")
  end,
}
