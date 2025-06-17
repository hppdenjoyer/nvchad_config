return {
  {
    "stevearc/conform.nvim",
    -- event = 'BufWritePre', -- uncomment for format on save
    opts = require "configs.conform",
  },

  -- These are some examples, uncomment them if you want to see them work!
  {
    "neovim/nvim-lspconfig",
    config = function()
      require("nvchad.configs.lspconfig").defaults()
      require "configs.lspconfig"
    end,
  },

  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "stylua",
        "html-lsp",
        "css-lsp",
        "prettier",
        "pyre", -- Added python language server here
      },
    },
  },

  { import = "nvchad.blink.lazyspec" },

  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "vim", "lua", "vimdoc",
        "html", "css",
        "python"
      },
      },
  },

   "nvim-lua/plenary.nvim",
 { "nvim-tree/nvim-web-devicons", lazy = true },

 {
   "nvchad/ui",
    config = function()
      require "nvchad" 
    end
 },

 {
    "nvchad/base46",
    lazy = true,
    build = function()
      require("base46").load_all_highlights()
    end,
 },

 "nvchad/volt", -- optional, needed for theme switcher
  -- or just use Telescope themes
 {
    -- amongst your other plugins
    {'akinsho/toggleterm.nvim', version = "*", config = true}
 },

 {
    'akinsho/toggleterm.nvim',
    version = "*",
    config = function()
      require("toggleterm").setup({
        -- Настройки ToggleTerm
        size = 20,
        open_mapping = [[<c-\>]],
        direction = "float", -- или "horizontal", "vertical"
        shade_terminals = true,
        close_on_exit = true,
        float_opts = {
          border = "curved",
          highlights = {
            border = "Normal",
              background = "Normal",
            },
          },
      })
    end
 }




}
