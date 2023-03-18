return {
  { "tpope/vim-surround", lazy = false },

  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  { "ThePrimeagen/harpoon", lazy = false },

  { "mbbill/undotree", lazy = false },

  { "tpope/vim-fugitive", lazy = false },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "gopls",
        "typescript-language-server",
        "prettier",
        "eslint-lsp",
      },
    },
  },
}
