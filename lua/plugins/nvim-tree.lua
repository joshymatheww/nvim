
return {
  {
    "nvim-tree/nvim-tree.lua",
    version = "*",
    lazy = false,

    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },

    keys = {
      {
        "<leader>e",
        "<cmd>NvimTreeToggle<CR>",
        desc = "Toggle file explorer",
      },
      {
        "<leader>ef",
        "<cmd>NvimTreeFindFile<CR>",
        desc = "Find current file in explorer",
      },
    },

    opts = {
      view = {
        width = 30,
        side = "left",
      },

      renderer = {
        group_empty = true,
        highlight_git = "name",
        icons = {
          show = {
            git = true,
            folder = true,
            file = true,
            folder_arrow = true,
          },
        },
      },

      filters = {
        dotfiles = false,
        git_ignored = false,
      },

      git = {
        enable = true,
      },

      update_focused_file = {
        enable = true,
        update_root = false,
      },

      diagnostics = {
        enable = true,
      },
    },
  },
}

