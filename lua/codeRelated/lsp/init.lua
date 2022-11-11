-- TODO: watch video:
--https://www.youtube.com/watch?v=6F3ONwrCxMg&ab_channel=chris%40machine
local status_ok, _ = pcall(require, "lspconfig")
if not status_ok then
  return
end

require "coderelated.lsp.mason"
require("coderelated.lsp.handlers").setup()
