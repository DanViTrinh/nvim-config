-- https://github.com/LunarVim/Neovim-from-scratch/blob/master/lua/user/keymaps.lua
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
keymap("i","jk","<ESC>",opts)

-- fix autopair
--keymap("i", "<A-7>","{",opts) -- remapping alt keys to {
--keymap("i", "<A-0>","}",opts) -- remapping alt keys to }
--keymap("i", "<A-8>","[",opts) -- remapping alt keys to [
--keymap("i", "<A-9>","]",opts) -- remapping alt keys to ]





-- normal
keymap("n" , "<Leader>e", ":NvimTreeToggle<CR>",opts)

-- https://www.reddit.com/r/neovim/comments/rh0ohq/nvimcmp_temporarily_disable_autocompletion/
-- look at this: 
--https://github.com/hrsh7th/nvim-cmp/issues/429
keymap("n", "<Leader>tc",":lua require('cmp').setup {enabled = false}<CR>",opts)


