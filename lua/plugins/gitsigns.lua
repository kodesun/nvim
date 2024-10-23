return {
    'lewis6991/gitsigns.nvim',
    opts = {
        signs = {
            add = { text = '+' },
            change = { text = '~' },
            delete = { text = '_' },
            topdelete = { text = '‾' },
            changedelete = { text = '~' },
        },
    },

    config = function ()
        require('gitsigns').setup()

        -- Keymappings
        vim.keymap.set('n', '<leader>gha', "<cmd>:Gitsigns stage_hunk<CR>", {desc = '[G]it [H]unk [S]tage'})
        vim.keymap.set('n', '<leader>ghu', "<cmd>:Gitsigns undo_stage_hunk<CR>", {desc = '[G]it [H]unk [U]nstage'})
        vim.keymap.set('n', '<leader>ghp', "<cmd>:Gitsigns preview_hunk<CR>", {desc = '[G]it [H]unk [P]review'})
    end
}
