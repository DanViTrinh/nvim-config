-- For everyone 
require "core.keymaps.normal"

-- For non vscode users 
if not vim.g.vscode then
  require "core.keymaps"
  require "core.options"
  require "core.plugin-keymaps"
  require "core.plugins"
  require "core.nvim-tree"
  require "core.toggle-term"

  require "codeRelated.cmp"
  require "codeRelated.comment"
  require "codeRelated.lsp"
  require "codeRelated.treesitter"
  require "codeRelated.vim-illuminate"

  require "aesthetics.theme"
  require "aesthetics.generic"
  require "aesthetics.barbar"
  require "aesthetics.lualine"
end



