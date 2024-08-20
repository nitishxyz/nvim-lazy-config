return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local config = require("neo-tree")
    config.setup({
      window = {
        position = "right",
      },
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
      }

    })
  end,
}
