require('lualine').setup {
    options = {
        component_separators = '',
        section_separators = '',
        theme = 'tokyonight',
    },
    sections = {
        lualine_x = { 'coc#status', 'encoding', 'fileformat', 'filetype', 'vim.fn.SleuthIndicator()' },
    },
}
