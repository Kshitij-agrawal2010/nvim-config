require("nvim-tree").setup({
  view = {
    mappings = {
      list = {
        { key = "s", action = "vsplit" }
      }
    }
  },
  update_focused_file = {
    enable = true,
    debounce_delay = 15,
    update_root = false,
    ignore_list = {},
  },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    show_on_open_dirs = true,
    debounce_delay = 50,
    severity = {
      min = vim.diagnostic.severity.HINT,
      max = vim.diagnostic.severity.ERROR,
    },
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "",
    },
  },
})
vim.keymap.set("n", "<leader>e", vim.cmd.NvimTreeToggle)
