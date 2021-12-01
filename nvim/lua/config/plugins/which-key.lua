require('which-key').setup()

require('which-key').register {
    ['<leader>'] = {
        ['/'] = { '<cmd>lua require("Comment").toggle()<cr>', 'Comment' },
        c = { '<cmd>bdelete<cr>', 'Close buffer' },
        C = { '<cmd>edit $MYVIMRC<cr>', 'Edit config' },
        d = {
            name = '+Debug',
            b = { '<plug>VimspectorToggleBreakpoint', 'Breakpoint' },
            c = { '<plug>VimspectorContinue', 'Continue' },
            g = { '<plug>VimspectorContinue', 'Go' },
            i = { '<plug>VimspectorStepInto', 'Step into' },
            o = { '<plug>VimspectorStepOver', 'Step over' },
            p = { '<plug>VimspectorPause', 'Pause' },
            s = { '<plug>VimspectorStop', 'Stop' },
            q = { '<cmd>VimspectorReset<cr>', 'Quit' },
            r = { '<plug>VimspectorRestart', 'Restart' },
        },
        e = { '<cmd>NvimTreeToggle<cr>', 'Explorer' },
        f = { '<cmd>Telescope find_files<cr>', 'Find file' },
        h = { '<cmd>HopChar1<cr>', 'Hop' },
        l = {
            name = '+Lsp',
            f = { '<cmd>lua vim.lsp.buf.formatting()<cr>', 'Format' },
            i = { '<cmd>LspInfo<cr>', 'Info' },
            I = { '<cmd>LspInstallInfo<cr>', 'Installer info' },
            r = { '<cmd>lua vim.lsp.buf.rename()<cr>', 'Rename' },
        },
        o = { '<cmd>SymbolsOutline<cr>', 'Outline' },
        p = {
            name = '+Packer',
            c = { '<cmd>PackerCompile<cr>', 'Compile' },
            C = { '<cmd>PackerClean<cr>', 'Clean' },
            i = { '<cmd>PackerInstall<cr>', 'Install' },
            s = { '<cmd>PackerSync<cr>', 'Sync' },
            S = { '<cmd>PackerStatus<cr>', 'Status' },
            u = { '<cmd>PackerUpdate<cr>', 'Update' },
        },
        q = { '<cmd>quit<cr>', 'Quit' },
        s = {
            name = '+Search',
            b = { '<cmd>Telescope buffers<cr>', 'Buffers' },
            c = { '<cmd>lua require("telescope.builtin.internal").colorscheme({ enable_preview = true })<cr>', 'Colorscheme' },
            f = { '<cmd>Telescope find_files<cr>', 'Files' },
            k = { '<cmd>Telescope keymaps<cr>', 'Key mappings' },
            r = { '<cmd>Telescope oldfiles<cr>', 'Recent files' },
            t = { '<cmd>Telescope live_grep<cr>', 'Text' },
        },
        t = {
            name = '+Tasks',
            b = { '<cmd>AsyncTask project-build<cr>', 'Build' },
            e = { '<cmd>AsyncTaskEdit<cr>', 'Edit tasks' },
            l = { '<cmd>AsyncTaskList<cr>', 'List tasks' },
            p = { '<cmd>AsyncTaskProfile debug release<cr>', 'Profile' },
            r = { '<cmd>AsyncTask project-run<cr>', 'Run' },
        },
        T = { '<cmd>Trouble<cr>', 'Trouble' },
    },
}

require('which-key').register({
    ['<leader>'] = {
        ['/'] = { '<esc><cmd>lua require("Comment.api").gc(vim.fn.visualmode())<cr>', 'Comment' },
    },
},
{ mode = 'v' })
