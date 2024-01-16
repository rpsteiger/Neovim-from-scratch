local M = {}

M.dap = {
  plugin = true,
  n = {
    ["<leader>db"] = {
      "<cmd> DapToggleBreakpoint <CR>",
      "Add breakpoint at line"
    },
    ["<leader>dus"] = {
      function ()
        local widgets = require('dap.ui.widgets');
        local sidebar = widgets.sidebar(widgets.scopes);
        sidebar.open();
      end,
      "Open debugging sidebar"
    }
  }
}

M.dap_go = {
  plugin = true,
  n = {
    ["<leader>dgt"] = {
      function()
        require('dap-go').debug_test()
      end,
      "Debug go test"
    },
    ["<leader>dgl"] = {
      function()
        require('dap-go').debug_last()
      end,
      "Debug last go test"
    }
  }
}

M.gopher = {
  plugin = true,
  n = {
    ["<leader>gsj"] = {
      "<cmd> GoTagAdd json <CR>",
      "Add json struct tags"
    },
    ["<leader>gsy"] = {
      "<cmd> GoTagAdd yaml <CR>",
      "Add yaml struct tags"
    }
  }
}

M.tmux_navigation = {
  plugin = true,
  n = {
     ["<C-j>"] = { "<cmd>NvimTmuxNavigateDown<CR>", "Move to the tmux pane below" },
     ["<C-h>"] = { "<cmd>NvimTmuxNavigateLeft<CR>", "Move to the tmux pane to the left" },
     ["<C-l>"] = {"<cmd>NvimTmuxNavigateRight<CR>", "Move to the tmux pane to the right" },
     ["<C-j>"] = {"<cmd>NvimTmuxNavigateUp<CR>", "Move to the tmux pane above" },
  }
}

return M
