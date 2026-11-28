return {
  "ibhagwan/fzf-lua",
  cmd = "FzfLua",
  opts = {},
  keys = {
    { "<leader>ff", "<cmd>FzfLua files<cr>", desc = "Find files" },
    { "<leader>fg", "<cmd>FzfLua live_grep<cr>", desc = "Search project text" },
    { "<leader>fb", "<cmd>FzfLua buffers<cr>", desc = "Find buffers" },
  },
}
