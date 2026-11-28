return {
  "nvim-lualine/lualine.nvim",
  event = "VeryLazy",

  opts = function()
    local colors = require("earthsong.palette")

    -- Bubbles theme using Earthsong's native colors.
    local theme = {
      normal = {
        a = { fg = colors.base, bg = colors.clay },
        b = { fg = colors.text, bg = colors.surface },
        c = { fg = colors.text, bg = "NONE" },
      },
      insert = {
        a = { fg = colors.base, bg = colors.moss },
      },
      visual = {
        a = { fg = colors.base, bg = colors.sage },
      },
      replace = {
        a = { fg = colors.base, bg = colors.terracotta },
      },
      command = {
        a = { fg = colors.base, bg = colors.amber },
      },
      inactive = {
        a = { fg = colors.subtle, bg = "NONE" },
        b = { fg = colors.subtle, bg = "NONE" },
        c = { fg = colors.subtle, bg = "NONE" },
      },
    }

    local spacer = {
      function()
        return " "
      end,
      padding = 0,
      color = { bg = "NONE" },
      separator = "",
    }

    return {
      options = {
        theme = theme,
        component_separators = "",
        section_separators = { left = "", right = "" },
      },

      sections = {
        lualine_a = {
          spacer,
          { "mode", separator = { left = "" }, right_padding = 2 },
        },
        lualine_b = { "filename", "branch", "diagnostics" },
        lualine_c = { "%=" },
        lualine_x = {},
        lualine_y = { "filetype" },
        lualine_z = {
          { "location", separator = { right = "" }, left_padding = 2 },
          spacer,
        },
      },

      inactive_sections = {
        lualine_a = { spacer, "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location", spacer },
      },
    }
  end,
}
