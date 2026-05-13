local map = vim.keymap.set

vim.g.mapleader = " "

map("t", "<C-x>", "<C-\\><C-n>")
map("t", "<Esc>", "<C-\\><C-n>")
map("i", "jk", "<Esc>")
map("t", "jk", "<C-\\><C-n>")
map("n", "<M-/>", vim.cmd.noh, { desc = "Clear Search" })
map("n", "<leader>fw", vim.cmd.write, { desc = "Save File" })
map("n", "<leader>qq", vim.cmd.quitall, { desc = "Close nvim" })

map("n", "<leader>bf", function()
  vim.lsp.buf.format({
    async = true,
    timeout_ms = 5000,
  })
end, { desc = "Format buffer" })

map("n", "<C-h>", "<C-w>h")
map("n", "<C-j>", "<C-w>j")
map("n", "<C-k>", "<C-w>k")
map("n", "<C-l>", "<C-w>l")

if vim.g.neovide == true then
  map({ "n" }, "<F11>", function()
    if vim.g.neovide_fullscreen == false then
      vim.g.neovide_fullscreen = true
    else
      vim.g.neovide_fullscreen = false
    end
  end, { silent = true })
end
