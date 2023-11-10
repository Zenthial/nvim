return {
    {
        -- Set lualine as statusline
        'nvim-lualine/lualine.nvim',
        -- See `:help lualine.txt`
        opts = {
            options = {
                icons_enabled = false,
                theme = 'powerline',
                component_separators = '|',
                section_separators = '',
            },
        },
    },
}
