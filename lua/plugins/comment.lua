return {
    'numToStr/Comment.nvim',
    opts = {
        -- Disable keymappings
        mappings = {
            basic = false,
            extra = false,
        },
    },
    config = function()
        local api = require('Comment.api')

        vim.keymap.set('n', '<leader>cc', api.toggle.linewise.current, {desc = 'Comment: [C]omment [L]ine'})
        vim.keymap.set('n', '<leader>cl', api.call('toggle.linewise', 'g@'), {expr = true, desc = 'Comment: [C]omment [L]ine'})
        vim.keymap.set('n', '<leader>cb', api.call('toggle.blockwise', 'g@'), {expr = true, desc = 'Comment: [C]omment [B]lock'})
        vim.keymap.set('n', '<leader>ca', api.insert.linewise.above, {desc = 'Comment: [C]omment [A]bove'})
        vim.keymap.set('n', '<leader>ce', api.insert.linewise.eol, {desc = 'Comment: [C]omment [E]OL'})
    end,
}
