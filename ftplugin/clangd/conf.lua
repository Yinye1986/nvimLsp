vim.lsp.start({
    name = "corcpp-language-server",
    cmd = { "clangd" },
    root_dir = vim.fs.dirname(vim.fs.find({ "CMakeLists.txt", ".git" }, { upward = true })[1]),
})

--- keymap ---
vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set("n", ",f", ":lua vim.lsp.buf.format()<CR>")
vim.keymap.set("n", "gd", ":lua vim.lsp.buf.definition()<CR>")
vim.keymap.set("n", "gD", ":lua vim.lsp.buf.declaration()<CR>")
