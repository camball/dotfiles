return {
  "nvim-treesitter/nvim-treesitter",
  lazy = false, -- Lazy-loading explicitly not supported.
  build = ":TSUpdate", -- Keep installed parsers compatible with future plugin updates.

  config = function()
    -- Enable Treesitter highlighting for the following Neovim filetypes.
    vim.api.nvim_create_autocmd("FileType", {
      pattern = {
        "lua",
        "javascript",
        "javascriptreact",
        "typescript",
        "typescriptreact",
        "html",
        "css",
        "svelte",
        "python",
        "markdown",
      },

      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
