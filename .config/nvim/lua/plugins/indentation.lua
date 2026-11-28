return {
  "NMAC427/guess-indent.nvim",

  -- Establish fallback settings before GuessIndent examines any buffers
  init = function()
    -- Indent with spaces when Tab key is pressed
    vim.opt.expandtab = true

    -- Default to two-column indentation (if a file doesn't provide enough evidence)
    vim.opt.shiftwidth = 2

    -- Make Insert-mode Tab and Backspace follow shiftwidth
    vim.opt.softtabstop = -1
  end,

  -- Automatically detect indentation in existing files
  opts = {},
}
