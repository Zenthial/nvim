return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup {}
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        config = function()
            local servers, _ = require("configs.servers")
            local servers_arr = {}

            for server, _ in pairs(servers) do
                table.insert(servers_arr, server)
            end

            require("mason-lspconfig").setup {
                ensure_installed = servers_arr
            }
        end,
    }
}
