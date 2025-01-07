package.path = package.path .. ';../ftplugin/'

vim.cmd[[
    autocmd BufRead,BufNewFile *.lua luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/lua/conf.lua
    autocmd BufRead,BufNewFile *.java luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/java/conf.lua
    autocmd BufRead,BufNewFile *.cpp luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/clangd/conf.lua
    autocmd BufRead,BufNewFile *.c luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/clangd/conf.lua
    autocmd BufRead,BufNewFile *.h luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/clangd/conf.lua
    autocmd BufRead,BufNewFile *.py luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/pyright/conf.lua
]]
