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
  open_mapping = [[<C-p>]],
  on_open = function(t) -- make virt column not show in toggleterm
      vim.wo[t.window].cc = ''
    end
}

-- Terminal keymaps
local opts = {noremap = true , silent = true}
local keymap = vim.api.nvim_set_keymap
keymap("","<Space>","<Nop>" , opts)

keymap('n', '<Leader>tf', ":ToggleTerm direction=float<CR>", opts)
keymap('n', '<Leader>th', ":ToggleTerm size=10 direction=horizontal<CR>", opts)
keymap('n', '<Leader>tv', ":ToggleTerm size=40 direction=vertical<CR>", opts)
