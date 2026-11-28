return {
  "guillermodotn/nvim-earthsong",

  -- Load colorscheme during startup and before ordinary plugins.
  lazy = false,
  priority = 1000,

  config = function()
    require("earthsong").setup({
      styles = {
        transparency = true,
      },

      highlight_groups = {
        LineNr = { fg = "subtle" },
        CursorLineNr = { fg = "moss" },
        GitSignsCurrentLineBlame = { fg = "subtle" },

        -- Colour whitespace symbols in Visual selections.
        -- Ensures visual-whitespace.nvim displays properly.
        VisualNonText = { fg = "subtle" },
      },
    })

    vim.cmd("colorscheme earthsong")
  end,
}
