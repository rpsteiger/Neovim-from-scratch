local M = {}

M.tmux_navigation = {
  plugin = true,
  n = {
     ["<C-j>"] = { "<cmd>NvimTmuxNavigateDown<CR>", "Move to the tmux pane below" },
     ["<C-h>"] = { "<cmd>NvimTmuxNavigateLeft<CR>", "Move to the tmux pane to the left" },
     ["<C-l>"] = {"<cmd>NvimTmuxNavigateRight<CR>", "Move to the tmux pane to the right" },
     ["<C-k>"] = {"<cmd>NvimTmuxNavigateUp<CR>", "Move to the tmux pane above" },
  }
}

return M
