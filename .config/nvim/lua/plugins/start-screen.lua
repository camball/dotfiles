return {
  "goolord/alpha-nvim",
  config = function()
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣠⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀   ]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣿⣿⣇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣸⣿⣿⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⢀⣤⣀⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣼⣿⣿⣿⡄⠀⠀⠀⠀⠀⠀⠀⠀⠀⣀⣠⣄⣀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢠⣿⣿⣿⣧⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣀⣤⡀⠀]],
      [[⠈⠻⣿⣿⣷⣶⣤⣀⡀⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⣀⣠⣴⣶⣿⣿⣿⣿⣿⣿⣶⣦⣄⣀⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⢀⣀⣤⣶⣾⣿⣿⠟⠁⠀]],
      [[⠀⠀⠈⠙⢿⣿⣿⣿⣿⣷⣶⣤⣴⣿⣿⣿⣿⣷⣤⣴⣶⣿⣿⣿⣿⣿⠟⠉⠀⠀⠉⠻⣿⣿⣿⣿⣿⣶⣦⣤⣾⣿⣿⣿⣿⣦⣤⣶⣾⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠉⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠁⠀⠀⠀⠀⠀⠀⠈⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠉⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠙⢿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⠟⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠻⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⡿⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⡀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⣀⣴⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀⠀⠀⠀⢀⣠⣾⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣿⣦⣀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⢀⣠⣾⣿⣿⣿⣿⡿⠿⠛⠻⣿⣿⣿⣿⡿⠛⠻⠿⣿⣿⣿⣿⣿⣦⣀⠀⠀⣀⣴⣿⣿⣿⣿⣿⠿⠟⠛⢿⣿⣿⣿⣿⠟⠛⠿⢿⣿⣿⣿⣿⣷⣄⡀⠀⠀⠀]],
      [[⢀⣴⣿⣿⡿⠿⠛⠉⠁⠀⠀⠀⠀⣿⣿⣿⣿⡇⠀⠀⠀⠀⠉⠙⠻⠿⣿⣿⣿⣿⣿⣿⠿⠟⠋⠉⠀⠀⠀⠀⢸⣿⣿⣿⣿⠀⠀⠀⠀⠈⠉⠛⠿⢿⣿⣿⣦⡀⠀]],
      [[⠈⠛⠉⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⢻⣿⣿⣿⠃⠀⠀⠀⠀⠀⠀⠀⠀⠀⠉⠙⠋⠉⠀⠀⠀⠀⠀⠀⠀⠀⠀⠘⣿⣿⣿⡟⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠉⠛⠁⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⣿⣿⡏⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢹⣿⣿⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⣿⣿⡇⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⢸⣿⣿⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
      [[⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠈⠋⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠙⠁⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀⠀]],
    }

    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene<CR>"),
      dashboard.button("f", "󰈞  Find file", "<cmd>FzfLua files<CR>"),
      dashboard.button("g", "󰈬  Find word", "<cmd>FzfLua live_grep<CR>"),
    }

    -- Vertically center the entire dashboard.
    dashboard.config.layout = {
      { type = "group", val = dashboard.config.layout, opts = { position = "v_center" } },
    }

    require("alpha").setup(dashboard.config)

    -- Return to Alpha when the last file buffer is closed.
    vim.api.nvim_create_autocmd("BufDelete", {
      callback = function()
        vim.schedule(function()
          local buffers = vim.fn.getbufinfo({ buflisted = 1 })
          local buf = vim.api.nvim_get_current_buf()

          if
            #buffers <= 1
            and vim.api.nvim_buf_get_name(buf) == ""
            and vim.bo[buf].buftype == ""
            and not vim.bo[buf].modified
          then
            vim.cmd("Alpha")
          end
        end)
      end,
    })
  end,
}
