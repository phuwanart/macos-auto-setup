return {
  "stevearc/oil.nvim",
  enabled = true,
  dependencies = { "nvim-tree/nvim-web-devicons" },
  config = function()
    require("oil").setup({
      default_file_explorer = true, -- start up nvim with oil instead of netrw
      columns = { },
      keymaps = {
        ["<C-h>"] = false,
        ["<C-c>"] = false, -- prevent from closing Oil as <C-c> is esc key
        ["<M-h>"] = "actions.select_split",
        ["q"] = "actions.close",
      },
      delete_to_trash = true,
      view_options = {
        show_hidden = true,
        natural_order = true,
        is_always_hidden = function(name, _)
          return name == '..' or name == '.git'
        end,
      },
      float = {
        padding = 5,
        -- max_width = 90,
        -- max_height = 90,
      },
      win_options = {
        wrap = true,
        winblend = 0,
      },
      skip_confirm_for_simple_edits = true,
    })

    -- opens parent dir over current active window
    vim.keymap.set("n", "<leader>-", "<CMD>Oil<CR>", { desc = "Open parent directory" })
    -- open parent dir in float window
    vim.keymap.set("n", "-", require("oil").toggle_float, { desc = "Open parent dir in float window" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = "oil", -- Adjust if Oil uses a specific file type identifier
      callback = function()
        vim.opt_local.cursorline = true
      end,
    })
  end,
}
