local on_attach = function(client, bufnr)
    require('config.mappings').lsp_mappings(client, bufnr)
    require('lsp_signature').on_attach {
        hint_prefix = '',
        handler_opts = {
            border = 'none',
        },
    }
end

require('nvim-lsp-installer').on_server_ready(function(server)
    local opts

    if server.name == 'sumneko_lua' then
        opts = require('lua-dev').setup()
    else
        opts = {}
    end

    opts.on_attach = on_attach
    opts.flags = {
        debounce_text_changes = 150,
    }

    server:setup(opts)
end)

local null_ls = require('null-ls')
null_ls.config {
    sources = {
        null_ls.builtins.formatting.black,
        null_ls.builtins.diagnostics.flake8,
    },
}
require('lspconfig')['null-ls'].setup {
    on_attach = on_attach,
}
