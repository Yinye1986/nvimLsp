vim.api.nvim_create_user_command("LSStart",
    function()
        vim.lsp.start({
            name = "clangd",
            cmd = { "clangd" },
            root_dir = vim.fs.dirname(vim.fs.find({ 'main.c', 'Makefile' }, { upward = true })[1]),
        })
    end, {}
)
