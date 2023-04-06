return {
  -- You can also add new plugins here as well:
  -- Add plugins, the lazy syntax
  "andweeb/presence.nvim",
  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "User AstroFile",
    opts = {},
    cmd = { "TSContextEnable" },
  },
  "Mofiqul/adwaita.nvim",
  {
    "ray-x/lsp_signature.nvim",
    event = "BufRead",
    config = function() require("lsp_signature").setup() end,
  },
  {
    "folke/todo-comments.nvim",
    event = "User AstroFile",
    opts = {},
    cmd = { "TodoQuickFix" },
    keys = {
      { "<leader>T", "<cmd>TodoTelescope<cr>", desc = "Open TODOs in telecope" },
    },
  },
}
