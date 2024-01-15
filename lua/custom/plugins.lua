local plugins = {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "gopls",
      },
    },
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    "dreamsofcode-io/nvim-dap-go",
    ft = "go",
    dependencies = "mfussenegger/nvim-dap",
    config = function(_, opts)
      require("dap-go").setup(opts)
      require("core.utils").load_mappings("dap_go")
    end
  },
  {
    "neovim/nvim-lspconfig",
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "jose-elias-alvarez/null-ls.nvim",
    ft = "go",
    opts = function()
      return require "custom.configs.null-ls"
    end,
  },
  {
    "olexsmir/gopher.nvim",
    ft = "go",
    config = function(_, opts)
      require("gopher").setup(opts)
      require("core.utils").load_mappings("gopher")
    end,
    build = function()
      vim.cmd [[silent! GoInstallDeps]]
    end,
  },
  {
  "alexghergh/nvim-tmux-navigation",
  keys = {
    { "<C-j>", "<cmd>NvimTmuxNavigateDown<CR>", desc = "Move to the tmux pane below" },
    { "<C-h>", "<cmd>NvimTmuxNavigateLeft<CR>", desc = "Move to the tmux pane to the left" },
    { "<C-l>", "<cmd>NvimTmuxNavigateRight<CR>", desc = "Move to the tmux pane to the right" },
    { "<C-j>", "<cmd>NvimTmuxNavigateUp<CR>", desc = "Move to the tmux pane above" },
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
