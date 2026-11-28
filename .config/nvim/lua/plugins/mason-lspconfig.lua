return {
  "mason-org/mason-lspconfig.nvim",

  -- Install these servers and automatically enable them.
  opts = {
    ensure_installed = {
      -- Lua
      "lua_ls",

      -- Web
      "ts_ls",
      "svelte",
      "html",
      "cssls",
      "oxlint",

      -- Python
      "ty",
      "ruff",

      -- Markdown
      "marksman",
    },
  },

  dependencies = {
    -- Installs the actual language-server programs.
    { "mason-org/mason.nvim", opts = {} },

    -- Supplies standard configurations for those servers.
    "neovim/nvim-lspconfig",
  },
}
