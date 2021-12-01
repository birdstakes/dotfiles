vim.g.nvim_tree_respect_buf_cwd = 1
vim.g.nvim_tree_quit_on_open = 1
require('nvim-tree').setup {
    auto_close = true,
    update_cwd = true,
    update_focused_file = {
        enable = true,
        update_cwd = true,
    },
}
