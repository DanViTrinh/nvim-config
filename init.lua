-- For everyone 
require "core.keymaps"

-- For non vscode users 
if not vim.g.vscode then
  require "core.options"
  require "core.plugins"
  require "core.nvim-tree"
  require "core.toggle-term"

  require "aesthetics.theme"
  require "aesthetics.generic"
  require "aesthetics.barbar"
  require "aesthetics.lualine"

  require "codeRelated.cmp"
  require "codeRelated.comment"
  require "codeRelated.lsp"
  require "codeRelated.treesitter"
  require "codeRelated.vim-illuminate"

end


-- vscode
if vim.g.vscode then
  require "vscode.keymaps.normal"
end




