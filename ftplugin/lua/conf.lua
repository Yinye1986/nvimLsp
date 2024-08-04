vim.api.nvim_create_user_command("LSStart",
    function()
        vim.lsp.start({
            name = "lua-language-server",
            cmd = { "lua-language-server" },
            root_dir = vim.fs.dirname(vim.fs.find({ 'init.lua', "" }, { upward = true })[1]),
        })
    end, {}
)
