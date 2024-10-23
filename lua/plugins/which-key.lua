return {
  "folke/which-key.nvim",
  preset = "helix",
  config = function()
      local wk = require('which-key')
      wk.add ({
          { "<leader>c", group = "[C]omment" },
          { "<leader>c_", hidden = true },
          { "<leader>d", group = "[D]iagnostics" },
          { "<leader>d_", hidden = true },
          { "<leader>f", group = "[F]ile Functions" },
          { "<leader>f_", hidden = true },
          { "<leader>g", group = "[G]it" },
          { "<leader>g_", hidden = true },
          { "<leader>gh", group = "[G]it [H]unk" },
          { "<leader>gh_", hidden = true },
          { "<leader>l", group = "[L]SP" },
          { "<leader>l_", hidden = true },
          { "<leader>t", group = "[T]oggle" },
          { "<leader>t_", hidden = true },
      })

      vim.keymap.set('n', '?', '<cmd>:WhichKey<CR>', { desc = 'WhichKey?' })
  end,
}
