require('bufferline').setup {
    options = {
        offsets = {
            {
                filetype = 'NvimTree',
                padding = 1,
            },
        },
        separator_style = 'slant',
    },
    highlights = {
        buffer_selected = {
            gui = 'bold',
        },
    },
}
