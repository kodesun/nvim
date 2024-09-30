return {
    'tpope/vim-fugitive',
    config = function ()
        vim.keymap.set('n', '<leader>go', '<cmd>:0G<CR>', {desc = 'Fugitive: [G]it [O]pen'})
        vim.keymap.set('n', '<leader>gp', '<cmd>:Git push<CR>', {desc = 'Fugitive: [G]it [P]ush'})
        vim.keymap.set('n', '<leader>gc', '<cmd>:Git commit<CR>', {desc = 'Fugitive: [G]it [C]ommit'})
    end
}
