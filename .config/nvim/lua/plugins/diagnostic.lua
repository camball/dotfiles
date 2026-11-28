return {
  "rachartier/tiny-inline-diagnostic.nvim",
  event = "VeryLazy",
  priority = 1000,
  config = function()
    require("tiny-inline-diagnostic").setup({
      preset = "modern",
      options = {
        show_source = {
          enabled = true,
        },
        multilines = {
          enabled = true,
          always_show = true,
          severity = { vim.diagnostic.severity.ERROR },
        },
      },
    })
    vim.diagnostic.config({ virtual_text = false }) -- Disable Neovim's default virtual text diagnostics
  end,
}
