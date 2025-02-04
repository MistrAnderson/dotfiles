return {
  "lewis6991/gitsigns.nvim",
  cond = function()
    -- Check if the current buffer is within a Git repository
    local is_git_repo = vim.fn.systemlist("git rev-parse --is-inside-work-tree")[1] == "true"
    return is_git_repo
  end,
  config = function()
    require("gitsigns").setup()
  end,
}

