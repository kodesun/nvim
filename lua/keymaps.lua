-- [[ BASIC KEYMAPS ]]

-- File saving and quitting maps
vim.keymap.set('n', '<leader>fs', "<Esc>:w<CR>", {desc = '[F]ile [S]ave'});
vim.keymap.set('n', '<leader>fq', "<Esc>:q<CR>", {desc = '[F]ile [Q]uit'});
vim.keymap.set('n', '<leader>fb', "<Esc>:b#<CR>", {desc = '[F]ile [B]ack'})


-- Other keymaps that'll go unnoticed
vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true });
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true });
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true });
