vim.api.nvim_create_user_command("LSStart",
    function()
        vim.lsp.start({
            name = "java-language-server",
            cmd = { "jdtls" },
            root_dir = vim.fs.dirname(vim.fs.find({ "pom.xml", "build.sh" }, { upward = true })[1]),
        })
    end, {}
)

--- keymap ---
vim.keymap.set("n", ",s", ":LSStart<CR>")
vim.keymap.set("n", ",f", ":lua vim.lsp.buf.format()<CR>")
