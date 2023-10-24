-- local colorscheme = "tokyonight"

-- local status_ok, _ = pcall(vim.cmd, "colorscheme " .. colorscheme)
-- if not status_ok then
--   return
-- end

return {
   "dracula/vim",
   config = function ()
     -- load the colorscheme here
     vim.cmd([[colorscheme dracula]])
   end,
  }
