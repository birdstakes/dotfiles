local M = {}

function M.reload()
    require('plenary').reload.reload_module('config')
    vim.cmd('source $MYVIMRC')
    vim.cmd('PackerInstall')
    vim.cmd('PackerCompile')
end

function M.augroup(name, autocmds)
    vim.cmd(string.format('augroup %s', name))
    vim.cmd('autocmd!')
    for _, autocmd in ipairs(autocmds) do
        local event, pat, cmd = unpack(autocmd)
        vim.cmd(string.format('autocmd %s %s %s', event, pat, cmd))
    end
    vim.cmd('augroup end')
end

return M
