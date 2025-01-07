vim.lsp.start({
    name = "lua-language-server",
    cmd = { "lua-language-server" },
    root_dir = vim.fs.dirname(vim.fs.find({ 'init.lua', "" }, { upward = true })[1]),
})

--- keymap ---
vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set("n", ",f", ":lua vim.lsp.buf.format()<CR>")
