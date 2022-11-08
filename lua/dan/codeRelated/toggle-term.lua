-- https://github-wiki-see.page/m/akinsho/toggleterm.nvim/wiki/Tips-and-Tricks
-- for powershell comment for other distro
local powershell_options = {
  shell = vim.fn.executable "pwsh" and "pwsh" or "powershell",
  shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;",
  shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait",
  shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode",
  shellquote = "",
  shellxquote = "",
}

for option, value in pairs(powershell_options) do
  vim.opt[option] = value
end

require("toggleterm").setup{
  -- size can be a number or function which is passed the current terminal
  size = 40,
  direction = "vertical",
  open_mapping = [[<c-t>]],

}
