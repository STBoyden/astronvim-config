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
  {
    "LhKipp/nvim-nu",
    event = "BufRead",
    opts = {
      use_lsp_features = true,
      all_cmd_names = [[nu -c 'help commands | get name | str join "\n"']],
    },
  },
  {
    "ThePrimeagen/harpoon",
    deps = { "nvim-lua/plenary.nvim" },
    event = "User AstroFile",
    keys = {
      {
        "<leader>Ha",
        "<cmd>lua require('harpoon.mark').add_file()<cr>",
        desc = "Add file to harpoon",
      },
      {
        "<leader>Hm",
        "<cmd>lua require('harpoon.ui').toggle_quick_menu()<cr>",
        desc = "Open harpoon quick menu",
      },
    },
  },
  {
    "mbbill/undotree",
    event = "User AstroFile",
    cmd = { "UndotreeToggle" },
    keys = {
      {
        "<leader>lu",
        "<cmd>UndotreeToggle<cr>",
        desc = "Open undotree",
      },
    },
  },
  { "tpope/vim-rhubarb" },
  {
    "tpope/vim-fugitive",
    deps = { "tpope/vim-rhubarb" },
    event = "User AstroFile",
    cmd = { "Git" },
  },
}
