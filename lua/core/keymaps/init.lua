--https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/keymaps.lua
local opts = {noremap = true , silent = true}

local keymap = vim.api.nvim_set_keymap
-- remap space as leader key 
keymap("","<Space>","<Nop>" , opts)
vim.g.mapleader = " "
vim.g.maplocalleader = " "


-- Modes
--   normal_mode = "n",
--   insert_mode = "i",
--   visual_mode = "v",
--   visual_block_mode = "x",
--   term_mode = "t",
--   command_mode = "c",

-- insert mode

-- For everyone
require "core.keymaps.normal"
if not vim.g.vscode then
  require "core.keymaps.plugin-keymaps"
  keymap("i","jk","<ESC>",opts)
  keymap("i","Jk","<ESC>",opts)


  keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
  keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
  keymap('t', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
  keymap('t', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)


  -- to escape terminal 
  vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

  keymap("v", "J","5j",opts) -- faster movement
  keymap("v", "K","5k",opts) -- faster movement 
  keymap("v", "<A-k>","<C-y>",opts) -- faster movement
  keymap("v", "<A-j>","<C-e>",opts) -- faster movement
end


