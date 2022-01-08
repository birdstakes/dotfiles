local util = require('config.util')

local config_pattern = vim.fn.stdpath('config'):gsub('\\', '/') .. '/*.lua'

util.augroup('config', {
    { 'BufWritePost', config_pattern, 'lua require("config.util").reload()' },
    { 'FileType', 'help,lspinfo,man,qf', 'nnoremap <silent> <buffer> q :close<cr>' },
    { 'FileType', 'qf', 'set nobuflisted' },
    { 'FileType', 'qf', 'wincmd J' },
})
