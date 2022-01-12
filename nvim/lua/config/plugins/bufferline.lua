require('bufferline').setup {
    options = {
        offsets = {
            {
                filetype = 'NvimTree',
                highlight = 'BufferlineFill',
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
