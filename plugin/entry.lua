package.path = package.path .. ';../ftplugin/'

vim.cmd[[
    autocmd BufRead,BufNewFile *.lua luafile ~/.local/share/nvim/lazy/nvimLsp/ftplugin/lua/conf.lua
]]
