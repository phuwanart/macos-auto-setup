return {
  "nvim-neo-tree/neo-tree.nvim",
  enabled = false,
  event = "VeryLazy",
  branch = "v3.x",
  cmd = { "Neotree" },
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    require("neo-tree").setup({
      close_if_last_window = true,
      filesystem = {
        follow_current_file = {
          enabled = true,
          leave_dirs_open = true,
        },
        filtered_items = {
          visible = true,
          show_hidden_count = true,
          never_show = {
            ".git",
            ".DS_Store",
            "thumbs.db",
          },
        },
      },
    })

    vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
  end,
}
