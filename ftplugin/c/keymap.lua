vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set({ "n", "v" }, ",f", ":lua vim.lsp.buf.format()<CR>")
