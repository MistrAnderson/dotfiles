-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.clipboard = "unnamedplus"

-- In options.lua or after Lazy setup
vim.api.nvim_create_autocmd("VimEnter", {
  callback = function()
    local colors_path = vim.fn.expand("~/.cache/hellwal/hellwm.lua")
    local colors = dofile(colors_path)

    local palette = {
      bg = colors.background,
      bg_alt = colors.color8,
      bg_highlight = colors.color0,
      fg = colors.foreground,
      fg_gutter = colors.border,

      black = colors.color0,
      white = colors.color15,

      color0 = colors.color0,
      color1 = colors.color1,
      color2 = colors.color2,
      color3 = colors.color3,
      color4 = colors.color4,
      color5 = colors.color5,
      color6 = colors.color6,
      color7 = colors.color7,
      color8 = colors.color8,
      color9 = colors.color9,
      color10 = colors.color10,
      color11 = colors.color11,
      color12 = colors.color12,
      color13 = colors.color13,
      color14 = colors.color14,
      color15 = colors.color15,

      border = colors.border,
      cursor = colors.cursor,
      comment = colors.color7,
    }

    local highlights = {
      -- -- Core Editor
      Normal = { fg = palette.fg, bg = palette.bg },
      NormalFloat = { fg = palette.fg, bg = palette.bg_alt },
      -- NormalNC = { fg = palette.fg_gutter, bg = palette.bg },
      LineNr = { fg = palette.fg_gutter },
      CursorLineNr = { fg = palette.white, bg = palette.color1 },
      -- SignColumn = { bg = palette.bg },
      --
      -- -- Gutter/Indent
      -- FoldColumn = { fg = palette.fg_gutter, bg = palette.none },
      -- Folded = { fg = palette.fg_gutter, bg = palette.bg_alt },
      --
      -- -- Indent guides (indent-blankline.nvim)
      -- IblIndent = { fg = palette.fg_gutter },
      -- IblIndentChar = { fg = palette.fg_gutter },
      -- IblScope = { fg = palette.orange },
      --
      -- -- Visual/Selection
      -- Visual = { bg = palette.bg_alt },
      -- Search = { bg = palette.yellow, fg = palette.black },
      --
      -- -- Windows/Borders (Telescope, etc.)
      -- WinSeparator = { fg = palette.border, bg = palette.none },
      -- FloatBorder = { fg = palette.border, bg = palette.bg_alt },
      -- TelescopeBorder = { fg = palette.border },
      -- TelescopePromptBorder = { fg = palette.border },
      -- TelescopeResultsBorder = { fg = palette.border },
      -- TelescopePreviewBorder = { fg = palette.border },

      -- -- Treesitter basics
      ["@variable"] = { fg = palette.color6 },

      ["@keyword"] = { fg = palette.color1 },
      ["@keyword.function"] = { fg = palette.color1 },
      ["@keyword.return"] = { fg = palette.color1 },
      ["@keyword.conditional"] = { fg = palette.color1 },
      ["@keyword.repeat"] = { fg = palette.color1 },

      ["@tag"] = { fg = palette.white },
      ["@tag.delimiter"] = { fg = palette.color3 },

      ["@function"] = { fg = palette.color3 },
      ["@string"] = { fg = palette.color15 },
      ["@comment"] = { fg = palette.color14, italic = true },
    }

    -- Apply all highlights
    for group, opts in pairs(highlights) do
      vim.api.nvim_set_hl(0, group, opts)
    end
  end,
  once = true,
})
