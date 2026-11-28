-- UI for running commands, search, and notifications
return {
  "folke/noice.nvim",
  event = "VeryLazy",
  opts = {
    routes = {
      {
        filter = {
          event = "msg_show",
          kind = "list_cmd",
        },
        view = "popup",
      },
    },
  },
  dependencies = {
    "MunifTanjim/nui.nvim",
    {
      "rcarriga/nvim-notify",
      opts = {
        background_colour = "#000000", -- Support transparent background
      },
    },
  },
}
