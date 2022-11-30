vim.opt.number = true -- number line 
vim.opt.relativenumber = true -- relative number
vim.opt.termguicolors = true -- get more colors
vim.opt.smartindent = true
vim.opt.cursorline = true -- highlight the current line 

vim.opt.completeopt = { "menuone", "noselect" } -- mostly just for cmp

-- https://stackoverflow.com/questions/18319284/vim-sign-column-toggle
-- https://www.reddit.com/r/neovim/comments/xq5dm3/nvimcmp_disable_syntax_check_column/
vim.opt.signcolumn = "yes"

vim.opt.expandtab = true
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.showtabline =2

vim.opt.clipboard = "unnamedplus"

vim.opt.mouse ="a"

vim.opt.colorcolumn = "80"

vim.o.fillchars = 'eob: ' -- to remove tilde

-- uncomment for pwsh
vim.opt.shell ="pwsh"

-- https://www.reddit.com/r/neovim/comments/q4lzki/client_1_quit_with_exit_code_1_and_signal_0_when/
-- suppress error messages from lang servers
vim.notify = function(msg, log_level)
    if msg:match("exit code") then
        return
    end
    if log_level == vim.log.levels.ERROR then
        vim.api.nvim_err_writeln(msg)
    else
        vim.api.nvim_echo({{msg}}, true, {})
    end
end

vim.opt.pumheight = 7 -- height of autocomplete menu / pop up
