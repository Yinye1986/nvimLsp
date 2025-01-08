vim.lsp.start({
    name = "pyright",
    cmd = { "pylsp" },
    root_dir = vim.fs.dirname(vim.fs.find({ 'myenv', ".venv" }, { upward = true })[1]),
})

--- keymap ---
vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set("n", ",f", ":lua vim.lsp.buf.format()<CR>")
