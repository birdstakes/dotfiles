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

-- completion
vim.api.nvim_set_keymap('i', '<tab>', 'pumvisible() ? "<c-n>" : "<tab>"', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<s-tab>', 'pumvisible() ? "<c-p>" : "<c-h>"', { noremap = true, silent = true, expr = true })
vim.api.nvim_set_keymap('i', '<c-space>', 'coc#refresh()', { noremap = true, silent = true, expr = true })

-- lsp navigation
vim.api.nvim_set_keymap('n', '[g', '<plug>(coc-diagnostic-prev)', { silent = true })
vim.api.nvim_set_keymap('n', ']g', '<plug>(coc-diagnostic-next)', { silent = true })
vim.api.nvim_set_keymap('n', 'gd', '<plug>(coc-definition)', { silent = true })
vim.api.nvim_set_keymap('n', 'gy', '<plug>(coc-type-definition)', { silent = true })
vim.api.nvim_set_keymap('n', 'gi', '<plug>(coc-implementation)', { silent = true })
vim.api.nvim_set_keymap('n', 'K', '<cmd>call CocActionAsync("doHover")<cr>', { noremap = true, silent = true })
vim.api.nvim_set_keymap('n', 'gr', '<plug>(coc-references)', { silent = true })
