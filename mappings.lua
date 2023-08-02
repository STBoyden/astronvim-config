-- Mapping data with "desc" stored directly by vim.keymap.set().
--
-- Please use this mappings table to set keyboard mapping since this is the
-- lower level configuration and more robust one. (which-key will
-- automatically pick-up stored data by this setting.)
return {
  -- first key is the mode
  n = {
    -- second key is the lefthand side of the map
    -- mappings seen under group name "Buffer"
    ["<leader>bn"] = { "<cmd>tabnew<cr>", desc = "New tab" },
    ["<leader>bD"] = {
      function()
        require("astronvim.utils.status").heirline.buffer_picker(
          function(bufnr) require("astronvim.utils.buffer").close(bufnr) end
        )
      end,
      desc = "Pick to close",
    },
    -- tables with the `name` key will be registered with which-key if it's installed
    -- this is useful for naming menus
    ["<leader>b"] = { name = "Buffers" },
    -- quick save
    -- ["<C-s>"] = { ":w!<cr>", desc = "Save File" },  -- change description but the same command
    ["<leader>e"] = { ":Neotree float<cr>", desc = "Toggle Explorer" },

    -- cursor navigation mappings, keep cursor in the centre of the buffer
    ["j"] = { "jzz" },
    ["k"] = { "kzz" },
    -- folding mappings
    ["zr"] = { ":foldclose<cr>" },
    ["zm"] = { ":foldopen<cr>" },

    -- Section namings
    ["<leader>N"] = { name = "Neorg" },
    ["<leader>Nt"] = { name = "Table of contents placement" },
    ["<leader>Nj"] = { name = "Journaling" },
    ["<leader>Ne"] = { name = "Exporting" },
    ["<leader>Nw"] = { name = "Workspaces" },

    ["<leader>H"] = { name = "Harpoon" },
  },
  t = {
    -- setting a mapping to false will disable it
    -- ["<esc>"] = false,
  },
}
