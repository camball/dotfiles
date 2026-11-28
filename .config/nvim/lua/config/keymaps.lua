-- Hide search highlighting without clearing the search itself.
vim.keymap.set("n", "<leader>/", "<cmd>nohlsearch<CR>", {
  desc = "Clear search highlighting",
})

-- More ergonomic mappings for clipboard copy/paste
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')
