local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
        "lua-language-server",
      },
    },
  },
  -- In order to modify the `lspconfig` configuration:
  {
    "neovim/nvim-lspconfig",
     config = function()
        require "plugins.configs.lspconfig"
        require "custom.configs.lspconfig"
     end,
  },
  {
    "ray-x/go.nvim",
    dependencies = {  -- optional packages
    "ray-x/guihua.lua",
    "neovim/nvim-lspconfig",
    "nvim-treesitter/nvim-treesitter",
    },
    config = function()
      require("go").setup()
    end,
    event = {"CmdlineEnter"},
    ft = {"go", 'gomod'},
    build = ':lua require("go.install").update_all_sync()' -- if you need to install/update all 
  },
  {
  "alexghergh/nvim-tmux-navigation",
    lazy = false,
  keys = {
    { "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>", desc = "Move to the tmux pane below"},
    { "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>", desc = "Move to the tmux pane to the left"},
    { "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", desc = "Move to the tmux pane to the right"},
    { "<C-j>", "<cmd>NvimTmuxNavigateUp<CR>", desc = "Move to the tmux pane above"},
  },
  config = function()
    require("nvim-tmux-navigation").setup({
      disable_when_zoomed = true, -- defaults to false
      keybindings = {
        left = "<C-h>",
        up = "<C-k>",
        down = "<C-j>",
        right = "<C-l>",
        last_active = "<C-\\>",
        next = "<C-Space>",
      },
    })
  end,
  },
}
return plugins
