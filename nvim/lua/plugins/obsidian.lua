return {
  "epwalsh/obsidian.nvim",
  version = "*", -- recommended, use latest release instead of latest commit
  lazy = true,
  event = {
    "BufReadPre " .. vim.fn.expand("~") .. "/ObsidianSync/PARA+/*.md",
    "BufReadPre " .. vim.fn.expand("~") .. "/ObsidianSync/Zettelkasten+/*.md",
  },
  dependencies = {
    -- Required.
    "nvim-lua/plenary.nvim",
    "nvim-telescope/telescope.nvim",
    "hrsh7th/nvim-cmp",
  },
  init = function()
		vim.opt.conceallevel = 1
	end,
  opts = {
    workspaces = {
      {
        name = "PARA",
        path = "~/ObsidianSync/PARA+",
      },
      {
        name = "Zettelkasten",
        path = "~/ObsidianSync/Zettelkasten+",
      },
    },
    completion = {
      nvim_cmp = true,
      min_chars = 2,
    },
  },
}
