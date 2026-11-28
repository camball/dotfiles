return {
  "nvim-tree/nvim-tree.lua",
  opts = {},
  keys = {
    -- Currently configured to select current file on open; may switch to `NvimTreeToggle`
    -- down the road to plainly open the file explorer.
    { "<leader>e", "<cmd>NvimTreeFindFileToggle<cr>", desc = "Toggle file explorer" },
  },
}
