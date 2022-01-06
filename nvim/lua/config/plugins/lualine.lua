require('lualine').setup {
    options = {
        component_separators = '',
        section_separators = '',
        theme = 'onedark',
    },
    sections = {
        lualine_x = { 'coc#status', 'encoding', 'fileformat', 'filetype', 'vim.fn.SleuthIndicator()' },
    },
}
