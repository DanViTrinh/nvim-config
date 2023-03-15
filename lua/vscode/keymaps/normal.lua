local opts = {noremap = true , silent = true}

local keymap = vim.api.nvim_set_keymap

-- remap space as leader key 
keymap("","<Space>","<Nop>" , opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

keymap("n", "<Leader>e",
  "[[<Cmd>call VSCodeNotify('workbench.action.toggleSidebarVisibility')<CR>]]",
  opts )
