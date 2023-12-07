return {
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
}
