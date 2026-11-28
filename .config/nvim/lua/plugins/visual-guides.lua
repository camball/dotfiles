-- Use the same colour cycle for indent guides, scopes, and brackets.
local highlights = {
  "RainbowDelimiterRed",
  "RainbowDelimiterYellow",
  "RainbowDelimiterBlue",
  "RainbowDelimiterOrange",
  "RainbowDelimiterGreen",
}

return {
  "lukas-reineke/indent-blankline.nvim",

  -- Rainbow Delimiters colours the actual bracket pairs.
  dependencies = {
    "HiPhish/rainbow-delimiters.nvim",
  },

  config = function()
    local hooks = require("ibl.hooks")

    -- Recreate these groups whenever the colorscheme changes.
    hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
      -- Reuse Earthsong's palette instead of unrelated hard-coded colours.
      local palette = require("earthsong.palette")

      vim.api.nvim_set_hl(0, "RainbowDelimiterRed", {
        fg = palette.terracotta,
      })

      vim.api.nvim_set_hl(0, "RainbowDelimiterYellow", {
        fg = palette.amber,
      })

      vim.api.nvim_set_hl(0, "RainbowDelimiterBlue", {
        fg = palette.sage,
      })

      vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", {
        fg = palette.clay,
      })

      vim.api.nvim_set_hl(0, "RainbowDelimiterGreen", {
        fg = palette.moss,
      })
    end)

    -- Tell Rainbow Delimiters to use our Earthsong colour cycle.
    vim.g.rainbow_delimiters = {
      highlight = highlights,
    }

    require("ibl").setup({
      -- Alternate indent-guide colours by nesting depth.
      indent = {
        char = "▏",
        highlight = highlights,
      },

      -- Highlight the Tree-sitter scope containing the cursor.
      scope = {
        enabled = true,
        highlight = highlights,
        show_start = false,
        show_end = false,
      },
    })

    -- Make the active scope guide match its enclosing bracket pair.
    hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)
  end,
}
