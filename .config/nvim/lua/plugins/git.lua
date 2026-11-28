return {
  "lewis6991/gitsigns.nvim",

  -- Load whenever you open or create a file.
  event = { "BufReadPre", "BufNewFile" },

  opts = {
    -- Show the latest commit beside the line under your cursor.
    current_line_blame = true,
    current_line_blame_opts = {
      delay = 100, -- Decrease default delay to make UI feel snappier.
    },
    -- Don't display popup on top of the current line.
    preview_config = {
      row = 1,
      col = 0,
    },
  },
  keys = {
    { "<leader>gb", "<cmd>Gitsigns blame_line full=true<cr>", desc = "Git blame line" },
    { "<leader>gB", "<cmd>Gitsigns blame<cr>", desc = "Git blame file" },
    { "<leader>gp", "<cmd>Gitsigns preview_hunk<cr>", desc = "Git preview hunk" },
  },
}
