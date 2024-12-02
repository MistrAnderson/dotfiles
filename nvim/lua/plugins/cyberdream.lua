return {
  "scottmckendry/cyberdream.nvim",
  lazy = false,
  priority = 1000,
  name = "cyberdream",
  config = function()
    require("cyberdream").setup({
      -- Enable transparent background
      transparent = false,

      -- Enable italics comments
      italic_comments = true,

      -- Replace all fillchars with ' ' for the ultimate clean look
      hide_fillchars = false,

      -- Modern borderless telescope theme - also applies to fzf-lua
      borderless_telescope = true,
      options = {
        theme = "auto", -- "auto" will set the theme dynamically based on the colorscheme
      },
    })
    vim.cmd("colorscheme cyberdream")
  end,
}
