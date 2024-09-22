vim.api.nvim_create_user_command("LSStart",
    function()
        vim.lsp.start({
            name = "corcpp-language-server",
            cmd = { "clangd" },
            root_dir = vim.fs.dirname(vim.fs.find({ "CMakeLists.txt", ".git" }, { upward = true })[1]),
        })
    end, {}
)

--- keymap ---
vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set("n", ",f", ":lua vim.lsp.buf.format()<CR>")
