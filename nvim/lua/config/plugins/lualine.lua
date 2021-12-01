local function lsp()
    local active = {}

    for _, client in pairs(vim.lsp.buf_get_clients(0)) do
        if client.name == 'null-ls' then
            for _, sources in pairs(require('null-ls.info').get_active_sources()) do
                table.insert(active, table.concat(sources, ', '))
            end
        else
            table.insert(active, client.name)
        end
    end

    return table.concat(active, ', ')
end

require('lualine').setup {
    options = {
        component_separators = '',
        section_separators = '',
        theme = 'onedark',
    },
    sections = {
        lualine_x = { 'encoding', 'fileformat', 'filetype', lsp, 'vim.fn.SleuthIndicator()' },
    },
    tabline = {
        lualine_a = { 'buffers' },
    },
}
