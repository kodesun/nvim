return {
    'nvim-tree/nvim-tree.lua',
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    config = function()
        vim.g.loaded_netrw = 1
        vim.g.loaded_netrwPlugin = 1

        local function custom_mappings(bufnr)
            local api = require('nvim-tree.api')

            local function opts(desc)
                return { desc = 'Nvim-Tree: ' .. desc, buffer = bufnr, noremap = true, silent = true, nowait = true }
            end

            -- MAPPINGS
            -- Help
            vim.keymap.set('n', '?',    api.tree.toggle_help,                   opts('Help'))

            -- View 
            vim.keymap.set('n', '_',    api.tree.change_root_to_node,           opts('Root: To child'))
            vim.keymap.set('n', '+',    api.tree.change_root_to_parent,         opts('Root: To Parent'))
            vim.keymap.set('n', 'E',    api.tree.expand_all,                    opts('Expand All'))
            vim.keymap.set('n', 'H',    api.tree.toggle_hidden_filter,          opts('Toggle Filter: Dotfiles'))
            vim.keymap.set('n', 'I',    api.tree.toggle_gitignore_filter,       opts('Toggle Filter: Git Ignore'))

            -- Opening
            vim.keymap.set('n', '<CR>',    api.node.open.edit,                  opts('Open'))
            vim.keymap.set('n', '<C-v>',   api.node.open.vertical,              opts('Open: Vertical Split'))
            vim.keymap.set('n', '<C-x>',   api.node.open.horizontal,            opts('Open: Horizontal Split'))
            vim.keymap.set('n', 'O',       api.node.open.no_window_picker,      opts('Open: No Window Picker'))

            -- Creating
            vim.keymap.set('n', 'a',       api.fs.create,                       opts('Create File Or Directory'))

            -- Editing
            vim.keymap.set('n', 'r',       api.fs.rename,                       opts('Rename'))
            vim.keymap.set('n', 'd',       api.fs.trash,                        opts('Trash'))
        end

        require("nvim-tree").setup({
            on_attach = custom_mappings,
            sort = {
                sorter = "case_sensitive",
                folders_first = true,
                files_first = false,
            },
            view = {
                width = 30,
            },
            renderer = {
                group_empty = false,
            },
            filters = {
                dotfiles = true,
            },
        })
    end
}
