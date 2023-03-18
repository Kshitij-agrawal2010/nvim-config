local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "",
  },
}

M.general = {
  i = {
    ["jj"] = { "<ESC>", "Escape to normal node" },
  },

  n = {
    ["<leader>k"] = { "<cmd>cnext<CR>zz", "Quick fix next" },
    ["<leader>j"] = { "<cmd>cprev<CR>zz", "Quick fix prev" },
    ["<leader>s"] = { [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], "replace current word" },
    ["J"] = { "mzJ`z", "append next line" },
  },

  v = {
    ["J"] = { ":m '>+1<CR>gv=gv", "move highlighted section down" },
    ["K"] = { ":m '<-2<CR>gv=gv", "move highlighted section up" },
  },
}

M.harpoon = {
  n = {
    ["<leader>a"] = {
      function()
        require("harpoon.mark").add_file()
      end,
      "harpoon file",
    },

    ["<leader>e"] = {
      function()
        require("harpoon.ui").toggle_quick_menu()
      end,
      "harpooned files",
    },

    ["<C-t>"] = {
      function()
        require("harpoon.ui").nav_file(1)
      end,
      "Jump to file 1",
    },

    ["<C-g>"] = {
      function()
        require("harpoon.ui").nav_file(2)
      end,
      "Jump to file 2",
    },

    ["<C-m>"] = {
      function()
        require("harpoon.ui").nav_file(3)
      end,
      "Jump to file 3",
    },

    ["<C-s>"] = {
      function()
        require("harpoon.ui").nav_file(4)
      end,
      "Jump to file 4",
    },
  },
}

M.undotree = {
  n = {
    ["<leader>u"] = { "<cmd> UndotreeToggle <CR>", "Toggle undotree" },
  },
}

M.gitsigns = {
  n = {
    -- Actions
    ["<leader>tb"] = {
      function()
        require("gitsigns").toggle_current_line_blame()
      end,
      "Toggle current line blame",
    },

    ["<leader>rh"] = {
      function()
        require("gitsigns").reset_hunk()
      end,
      "Reset hunk",
    },

    ["<leader>sh"] = {
      function()
        require("gitsigns").stage_hunk()
      end,
      "Stage hunk",
    },

    ["<leader>uh"] = {
      function()
        require("gitsigns").undo_stage_hunk()
      end,
      "Undo Stage hunk",
    },

    ["<leader>Sh"] = {
      function()
        require("gitsigns").stage_buffer()
      end,
      "Stage buffer",
    },

    ["<leader>Rh"] = {
      function()
        require("gitsigns").reset_buffer()
      end,
      "Reset buffer",
    },

    ["<leader>ph"] = {
      function()
        require("gitsigns").preview_hunk()
      end,
      "Preview hunk",
    },

    ["<leader>gb"] = {
      function()
        package.loaded.gitsigns.blame_line()
      end,
      "Blame line",
    },

    ["<leader>td"] = {
      function()
        require("gitsigns").toggle_deleted()
      end,
      "Toggle deleted",
    },
  },
}

M.vim_fugitive = {
  n = {
    ["<leader>gs"] = {
      function()
        vim.cmd.Git()
      end,
      "git status",
    },
  }
}

return M
