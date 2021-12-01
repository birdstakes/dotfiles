-- cycle buffers
vim.api.nvim_set_keymap('n', 'H', '<cmd>bprev<cr>', { noremap = true })
vim.api.nvim_set_keymap('n', 'L', '<cmd>bnext<cr>', { noremap = true })

-- quickfix window
vim.api.nvim_set_keymap('n', '<C-q>', '<cmd>copen<cr>', { noremap = true })

-- window navigation
vim.api.nvim_set_keymap('n', '<C-h>', '<C-w>h', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-j>', '<C-w>j', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-k>', '<C-w>k', { noremap = true })
vim.api.nvim_set_keymap('n', '<C-l>', '<C-w>l', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-h>', '<C-\\><C-n><C-w>h', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-j>', '<C-\\><C-n><C-w>j', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-k>', '<C-\\><C-n><C-w>k', { noremap = true })
vim.api.nvim_set_keymap('t', '<C-l>', '<C-\\><C-n><C-w>l', { noremap = true })

-- asynctasks
vim.api.nvim_set_keymap('n', '<F5>', '<cmd>AsyncTask project-run<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', '<F9>', '<cmd>AsyncTask project-build<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('i', '<F5>', '<esc><F5>', {})
vim.api.nvim_set_keymap('i', '<F9>', '<esc><F9>', {})

local M = {}

function M.lsp_mappings(_, bufnr)
    local map = function(lhs, rhs)
        vim.api.nvim_buf_set_keymap(bufnr, 'n', lhs, rhs, { noremap = true, silent = true })
    end

    map('gD', '<cmd>lua vim.lsp.buf.declaration()<cr>')
    map('gd', '<cmd>lua vim.lsp.buf.definition()<cr>')
    map('gi', '<cmd>lua vim.lsp.buf.implementation()<cr>')
    map('gl', '<cmd>lua vim.lsp.diagnostic.show_line_diagnostics()<cr>')
    map('gr', '<cmd>lua vim.lsp.buf.references()<cr>')
    map('gs', '<cmd>lua vim.lsp.buf.signature_help()<cr>')
    map('K', '<cmd>lua vim.lsp.buf.hover()<cr>')
end

return M
