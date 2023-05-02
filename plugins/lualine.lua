return {
  {
    "nvim-lualine/lualine.nvim",
    opts = {
      options = {
        theme = require "user.plugins.colours.lualine",
        section_separators = {
          left = "",
          right = "",
        },
      },
      sections = {
        lualine_a = {
          {
            "mode",
            separator = { left = " " },
            right_padding = 2,
          },
        },
        lualine_b = { "filename", "branch" },
        lualine_c = { "fileformat" },
        lualine_x = {},
        lualine_y = {
          {
            "datetime",
            style = "%a %H:%M:%S %Y-%m-%d (%Z)",
          },
          {
            "filetype",
            colored = false,
          },
          "diagnostics",
          "selectioncount",
          "searchcount",
          "progress",
        },
        lualine_z = {
          {
            "location",
            separator = { right = " " },
            left_padding = 2,
          },
        },
      },
      inactive_sections = {
        lualine_a = { "filename" },
        lualine_b = {},
        lualine_c = {},
        lualine_x = {},
        lualine_y = {},
        lualine_z = { "location" },
      },
    },
  },
}
