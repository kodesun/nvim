return {
    'navarasu/onedark.nvim',
    config = function()
        require('onedark').setup({
            style = 'darker',
        })

        -- SET COLORSCHEME
        vim.cmd("colorscheme onedark")
    end,
}
