-- For plugins with low or minimal setup
-- If it has a config function, probably doesn't go here

return {
    -- Git related plugins
    'tpope/vim-fugitive',
    'tpope/vim-rhubarb',

    'tpope/vim-surround',
    -- {
    --     'andweeb/presence.nvim',
    --     config = function()
    --         require("presence").setup({})
    --     end,
    --     lazy = true
    -- },

    "lopi-py/luau-lsp.nvim",
    "ckipp01/stylua-nvim",

    -- Detect tabstop and shiftwidth automatically
    'tpope/vim-sleuth',

    { 'folke/which-key.nvim',  opts = {} },

    {
        'windwp/nvim-autopairs',
        event = "InsertEnter",
        opts = {} -- this is equalent to setup({}) function
    },

    {
        -- Add indentation guides even on blank lines
        'lukas-reineke/indent-blankline.nvim',
        -- Enable `lukas-reineke/indent-blankline.nvim`
        -- See `:help ibl`
        main = 'ibl',
        opts = {},
    },

    -- "gc" to comment visual regions/lines
    { 'numToStr/Comment.nvim', opts = {}, lazy = false },

    -- { 'andweeb/presence.nvim', opts = {}, lazy = false },

    {
        'stevearc/oil.nvim',
        opts = {},
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
    },

    -- 'simrat39/rust-tools.nvim',

    {
        'mrcjkb/rustaceanvim',
        version = '^4', -- Recommended
        lazy = false,   -- This plugin is already lazy
    }
}
