return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    vim.keymap.set("n", "<C-n>", ":Neotree filesystem reveal right<CR>", {})
    local config = require("neo-tree")
    config.setup({
      filesystem = {
        filtered_items = {
          visible = false, -- when true, they will just be displayed differently than normal items
          hide_dotfiles = false,
          always_show = {
            ".env",
            ".gitignore"
          },
          never_show = {
            "node_modules",
            ".git",
            ".cache",
            ".DS_Store",
            ".Trash",
            ".Spotlight-V100",
            ".fseventsd",
            ".DocumentRevisions-V100",
            ".TemporaryItems",
            ".VolumeIcon.icns",
          },
        },
        follow_current_file = {
          enable = true,
          leave_dirs_open = true,
        },
      },
      buffers = {
          follow_current_file = {
            enabled = true, -- This will find and focus the file in the active buffer every time
            --              -- the current file is changed while the tree is open.
            leave_dirs_open = false, -- `false` closes auto expanded dirs, such as with `:Neotree reveal`
          },
      }

    })
  end,
}
