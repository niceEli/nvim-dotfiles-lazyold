local o = vim.opt

if vim.loop.os_uname().sysname == "Windows_NT" then
  if vim.fn.executable("zsh") == 1 then
    o.shell = "zsh"
  elseif vim.fn.executable("nu") == 1 then
    o.shell = "nu"
  elseif vim.fn.executable("bash") == 1 then
    o.shell = "bash"
  elseif vim.fn.executable("pwsh") == 1 then
    o.shell = "pwsh"
  elseif vim.fn.executable("powershell") == 1 then
    o.shell = "powershell"
  end
end

if vim.g.neovide then
  o.guifont = "JetBrainsMono Nerd Font,Noto_Color_Emoji:h14"
end

o.wrap = false
o.sidescrolloff = 8
o.scrolloff = 8

o.confirm = true

o.number = true
o.relativenumber = true

o.signcolumn = "yes"

o.tabstop = 2
o.shiftwidth = 2
o.softtabstop = 2
o.expandtab = true
o.smartindent = true

o.colorcolumn = "80,100,120"

if vim.fn.has("wsl") == 1 then
  vim.g.clipboard = {
    name = 'WslClipboard',
    copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
    },
    paste = {
      ['+'] = 'powershell.exe -c Get-Clipboard',
      ['*'] = 'powershell.exe -c Get-Clipboard',
    },
    cache_enabled = 0,
    }
else
  o.clipboard = "unnamedplus"
end
