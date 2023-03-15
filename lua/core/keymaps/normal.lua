local opts = {noremap = true , silent = true}

local keymap = vim.api.nvim_set_keymap

-- save
keymap("n", "<Leader>w",":w<CR>",opts)
-- quit 
keymap("n", "<Leader>q",":q<CR>",opts)

keymap("n", "<C-q>","<cmd>bdelete<cr>",opts)

--tab and windows 
keymap('n', '<C-h>', [[<Cmd>wincmd h<CR>]], opts)
keymap('n', '<C-l>', [[<Cmd>wincmd l<CR>]], opts)
keymap('n', '<C-j>', [[<Cmd>wincmd j<CR>]], opts)
keymap('n', '<C-k>', [[<Cmd>wincmd k<CR>]], opts)

 
if vim.fn.has('macunix') then
  keymap("n", "˛",":bp<CR>",opts) -- for mac  
  keymap("n", "ﬁ",":bn<CR>",opts) -- for mac
  keymap("n", "ª","<C-y>",opts) -- faster movement
  keymap("n", "√","<C-e>",opts) -- faster movement
else
  keymap("n", "<A-h>",":BufferPrevious<CR>",opts)
  keymap("n", "<A-l>",":BufferNext<CR>",opts)
  keymap("n", "<A-k>","<C-y>",opts) -- faster movement
  keymap("n", "<A-j>","<C-e>",opts) -- faster movement
end


keymap("n", "J","5j",opts) -- faster movement
keymap("n", "K","5k",opts) -- faster movement 
-- keymap("n", "√","J",opts) -- replace J -- for mac

keymap("n", "<Leader>j","J",opts) -- replace J

keymap("n", "<Leader>z",":ZenMode<CR>",opts) -- replace J
