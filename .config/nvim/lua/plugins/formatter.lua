return {
  "stevearc/conform.nvim",
  lazy = false,
  opts = {
    formatters_by_ft = {
      lua = { "stylua" },
      python = { "ruff_format" },

      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      json = { "oxfmt" },
      css = { "oxfmt" },
      html = { "oxfmt" },

      markdown = { "markdownlint-cli2" },
    },

    formatters = {
      stylua = {
        prepend_args = {
          "--indent-type",
          "Spaces",
          "--indent-width",
          "2",
        },
      },
    },

    default_format_opts = {
      lsp_format = "fallback",
    },

    format_on_save = {
      timeout_ms = 1000,
      lsp_format = "fallback",
    },
  },

  keys = {
    {
      "<leader>cf",
      function()
        require("conform").format({ async = true })
      end,
      desc = "Format buffer",
    },
  },
}
