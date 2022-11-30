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
keymap("i","jk","<ESC>",opts)
keymap("i","Jk","<ESC>",opts)

-- normal
keymap("n" , "<Leader>e", ":NvimTreeToggle<CR>",opts)

-- https://www.reddit.com/r/neovim/comments/rh0ohq/nvimcmp_temporarily_disable_autocompletion/
-- look at this: 
--https://github.com/hrsh7th/nvim-cmp/issues/429
keymap("n", "<Leader>tc",":lua require('cmp').setup {enabled = false}<CR>",opts)

-- save
keymap("n", "<Leader>w",":w<CR>",opts)
-- quit 
keymap("n", "<Leader>q",":q<CR>",opts)

--tab and windows 
keymap("n", "<A-h>",":bp<CR>",opts)
keymap("n", "<A-l>",":bn<CR>",opts)
keymap('n', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('n', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
vim.g.winresizer_start_key = "<Leader>m"


--terminal (toggle term )
keymap('t', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('t', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)


-- to escape terminal 
vim.keymap.set('t', 'jk', [[<C-\><C-n>]], opts)

keymap("n", "J","5j",opts) -- faster movement
keymap("n", "K","5k",opts) -- faster movement 
keymap("n", "<C-k>","<C-y>",opts) -- faster movement
keymap("n", "<C-j>","<C-e>",opts) -- faster movement

keymap("n", "<A-j>","J",opts) -- replace J


