vim.opt.number = true -- number line 
vim.opt.relativenumber = true -- relative number
vim.opt.termguicolors = true -- get more colors
vim.opt.smartindent = true
vim.opt.cursorline = true -- highlight the current line 

vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp

--vim.opt.signcolumn = "yes:1" -- https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
                            -- https://www.reddit.com/r/neovim/comments/xq5dm3/nvimcmp_disable_syntax_check_column/

vim.opt.signcolumn = "yes"
vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.showtabline =2 

vim.opt.mouse ="a" 

vim.opt.colorcolumn = "80"


vim.wo.fillchars = 'eob: ' -- to remove tilde 

-- uncomment for pwsh
vim.opt.shell ="pwsh"


