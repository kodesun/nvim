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
        vim.keymap.set('n', '<leader>gph', '<cmd>Gitsigns preview_hunk', {desc = 'Gitsigns: [G]it [H]unk [P]review'})
    end
}
