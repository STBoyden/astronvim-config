return {
  -- Add the community repository of plugin specifications
  "AstroNvim/astrocommunity",
  -- example of imporing a plugin, comment out to use it or add your own
  -- available plugins can be found at https://github.com/AstroNvim/astrocommunity

  -- { import = "astrocommunity.colorscheme.catppuccin" },
  -- { import = "astrocommunity.completion.copilot-lua-cmp" },

  -- language packs
  { import = "astrocommunity.pack.bash" },
  { import = "astrocommunity.pack.cmake" },
  { import = "astrocommunity.pack.go" },
  { import = "astrocommunity.pack.java" },
  { import = "astrocommunity.pack.json" },
  { import = "astrocommunity.pack.markdown" },
  { import = "astrocommunity.pack.rust" },
  { import = "astrocommunity.pack.svelte" },
  { import = "astrocommunity.pack.tailwindcss" },
  { import = "astrocommunity.pack.typescript" },
  { import = "astrocommunity.pack.typescript-all-in-one" },
  { import = "astrocommunity.pack.yaml" },
  { import = "astrocommunity.pack.full-dadbod" },
  { import = "astrocommunity.pack.haskell" },
  { import = "astrocommunity.pack.kotlin" },
  { import = "astrocommunity.pack.docker" },

  -- completion engine(s)
  -- { import = "astrocommunity.completion.copilot-lua" },
  -- {
  --   -- further customize the options set by the community
  --   "copilot.lua",
  --   opts = {
  --     suggestion = {
  --       keymap = {
  --         accept = "<C-l>",
  --         accept_word = false,
  --         accept_line = false,
  --         next = "<C-.>",
  --         prev = "<C-,>",
  --         dismiss = "<C/>",
  --       },
  --     },
  --   },
  -- },

  -- code time metrics
  { import = "astrocommunity.media.vim-wakatime" },

  { import = "astrocommunity.bars-and-lines.smartcolumn-nvim" },
  {
    "m4xshen/smartcolumn.nvim",
    opts = {
      colorcolumn = 120,
      disabled_filetypes = { "help" },
    },
  },

  -- colourschemes
  { import = "astrocommunity.colorscheme.nightfox-nvim" },
  {
    "EdenEast/nightfox.nvim",
    opts = {
      options = {
        dim_inactive = true,
        styles = {
          comments = "italic",
          keywords = "bold",
          types = "italic,bold",
        },
      },
    },
  },
  { import = "astrocommunity.colorscheme.catppuccin" },
  {
    "catppuccin",
    opts = {
      integrations = {
        sandwich = false,
        noice = true,
        mini = true,
        leap = true,
        markdown = true,
        neotest = true,
        cmp = true,
        overseer = true,
        lsp_trouble = true,
        ts_rainbow2 = true,
      },
      transparent_background = false,
      flavour = "frappe",
    },
  },

  -- notetaking
  { import = "astrocommunity.note-taking.neorg" },
  {
    "nvim-neorg/neorg",
    cmd = { "Neorg" },
    opts = {
      load = {
        ["core.defaults"] = {},
        ["core.dirman"] = {
          config = {
            workspaces = {
              personal = "~/Nextcloud/Notes/neorg",
              university = "~/Nextcloud/Documents/University/Notes",
              journal = "~/Nextcloud/Journal",
            },
            default_workspace = "personal",
          },
        },
        ["core.journal"] = {
          config = {
            workspace = "journal",
            journal_folder = ".",
            -- toc_format = function(data)
            --   return {
            --
            --   }
            -- end
          },
        },
        ["core.concealer"] = {},
        ["core.completion"] = {
          config = {
            engine = "nvim-cmp",
          },
        },
        ["core.export"] = {},
        ["core.export.markdown"] = {
          config = {
            extensions = "all",
          },
        },

        -- ["core.presenter"] = {
        --   config = {
        --     zen_mode = "zen-mode",
        --   },
        -- },
      },
    },
    keys = {
      {
        "<leader>Nwp",
        function()
          vim.cmd "Neorg workspace personal"
          vim.cmd "cd %:p:h"
        end,
        desc = "Open personal Neorg workspace",
      },
      {
        "<leader>Nwu",
        function()
          vim.cmd "Neorg workspace university"
          vim.cmd "cd %:p:h"
        end,
        desc = "Open university Neorg workspace",
      },
      {
        "<leader>Nwj",
        function()
          vim.cmd "Neorg workspace journal"
          vim.cmd "cd %:p:h"
        end,
        desc = "Open journal Neorg workspace",
      },
      {
        "<leader>Nc",
        "<cmd>Neorg toggle-concealer<cr>",
        desc = "Toggle concealer",
      },
      {
        "<leader>Ntb",
        "<cmd>Neorg toc qflist<cr>",
        desc = "Show table of contents at the bottom",
      },
      {
        "<leader>Ntr",
        "<cmd>Neorg toc right<cr>",
        desc = "Show table of contents on the right",
      },
      {
        "<leader>Ntl",
        "<cmd>Neorg toc left<cr>",
        desc = "Show table of contents on the left",
      },
      {
        "<leader>NT",
        "<cmd>Neorg tangle current-file<cr>",
        desc = "Tangle current file",
      },
      {
        "<leader>NI",
        "<cmd>Neorg inject-metadata<cr>",
        desc = "Inject file metadata",
      },
      {
        "<leader>Njt",
        "<cmd>Neorg journal today<cr>",
        desc = "Create or open journal entry for today's date",
      },
      {
        "<leader>NjT",
        "<cmd>Neorg journal tomorrow<cr>",
        desc = "Create or open journal entry for tomorrow's date",
      },
      {
        "<leader>Njy",
        "<cmd>Neorg journal yesterday<cr>",
        desc = "Create or open journal entry for yesterday's date",
      },
      {
        "<leader>Njc",
        "<cmd>Neorg journal toc open<cr>",
        desc = "Create or open journal's table of contents",
      },
      {
        "<leader>NjC",
        "<cmd>Neorg journal toc update<cr>",
        desc = "Update journal's table of contents",
      },
      {
        "<leader>Nef",
        function()
          local current_file_name = vim.fs.basename(vim.fn.expand "%:r")
          vim.ui.input(
            { prompt = "File name: ", default = current_file_name },
            function(text) vim.cmd("Neorg export to-file " .. text .. ".md") end
          )
        end,
        desc = "Export current file to markdown",
      },
      {
        "<leader>Ned",
        function()
          vim.ui.input({ prompt = "Export directory (default 'export'): ", default = "export" }, function(export_name)
            local export_directory_name = export_name
            local command = string.format("Neorg export directory . markdown %s", export_directory_name)

            vim.cmd(command)

            local original_dir = vim.fn.getcwd()
            local export_path_base = string.format("%s/%s", original_dir, export_directory_name)

            for name, type in vim.fs.dir(original_dir, { depth = 255 }) do
              if type ~= "directory" then goto continue end

              local export_path = string.format("%s/%s", export_path_base, name)
              local cmd = string.format("Neorg export directory %s/%s markdown %s", original_dir, name, export_path)

              vim.cmd(cmd)

              ::continue::
            end

            local function rmdir(path) vim.fn.system { "rm", "-rf", path } end

            rmdir(export_path_base .. "/" .. export_directory_name) -- remove extraneous export directory
          end)
        end,
        desc = "Export current directory to markdown",
      },
    },
  },

  -- terminal integration
  { import = "astrocommunity.terminal-integration.flatten-nvim" },

  -- bars and lines
  -- { import = "astrocommunity.bars-and-lines.lualine-nvim" },
}
