local opts = {noremap = true , silent = true}

local keymap = vim.api.nvim_set_keymap

keymap("n" , "<Leader>e", ":NvimTreeToggle<CR>",opts)

-- https://www.reddit.com/r/neovim/comments/rh0ohq/nvimcmp_temporarily_disable_autocompletion/
-- look at this: 
--https://github.com/hrsh7th/nvim-cmp/issues/429
keymap("n", "<Leader>ac",":lua require('cmp').setup {enabled = false}<CR>",opts)

vim.g.winresizer_start_key = "<Leader>m"
