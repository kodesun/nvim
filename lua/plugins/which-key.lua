return {
  "folke/which-key.nvim",
  preset = "helix",
  config = function()
      require('which-key').register {
          ['<leader>c'] = { name = '[C]omment', _ = 'which_key_ignore' },
          ['<leader>d'] = { name = '[D]iagnostics', _ = 'which_key_ignore' },
          ['<leader>f'] = { name = '[F]ile Functions', _ = 'which_key_ignore' },
          ['<leader>g'] = { name = '[G]it', _ = 'which_key_ignore' },
          ['<leader>l'] = { name = '[L]SP', _ = 'which_key_ignore' },
          ['<leader>t'] = { name = '[T]oggle', _ = 'which_key_ignore' },
      }

      vim.keymap.set('n', '?', '<cmd>:WhichKey<CR>', { desc = 'WhichKey?' })
  end,
}
