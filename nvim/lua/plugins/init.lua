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
      require "configs.lspconfig"
    end,
  },

  -- GitHub Copilot (Lua-based client + nvim-cmp integration)
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    config = function()
      require("configs.copilot").setup()
    end,
  },

  {
  "NeogitOrg/neogit",
  lazy = true,
  dependencies = {
    -- Only one of these is needed.
    "sindrets/diffview.nvim",        -- optional
    "esmuellert/codediff.nvim",      -- optional

    -- For a custom log pager
    "m00qek/baleia.nvim",            -- optional

    -- Only one of these is needed.
    "nvim-telescope/telescope.nvim", -- optional
    "ibhagwan/fzf-lua",              -- optional
    "nvim-mini/mini.pick",           -- optional
    "folke/snacks.nvim",             -- optional
  },
  cmd = "Neogit",
  keys = {
    { "<leader>gg", "<cmd>Neogit<cr>", desc = "Show Neogit UI" }
  }
  },

  {
    "zbirenbaum/copilot-cmp",
    after = { "copilot.lua", "nvim-cmp" },
  },

  -- test new blink
  -- { import = "nvchad.blink.lazyspec" },

  -- {
  -- 	"nvim-treesitter/nvim-treesitter",
  -- 	opts = {
  -- 		ensure_installed = {
  -- 			"vim", "lua", "vimdoc",
  --     "html", "css"
  -- 		},
  -- 	},
  -- },
}
