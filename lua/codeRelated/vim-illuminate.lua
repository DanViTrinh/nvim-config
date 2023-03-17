local cursorLineColor = '#3b3f52'
vim.cmd(':hi clear IlluminatedWordText')
vim.cmd(':hi def IlluminatedWordText guibg=' .. cursorLineColor)

vim.cmd(':hi clear IlluminatedWordWrite')
vim.cmd(':hi def IlluminatedWordWrite guibg=' .. cursorLineColor)

vim.cmd(':hi clear IlluminatedWordRead')
vim.cmd(':hi def IlluminatedWordRead guibg=' .. cursorLineColor)
