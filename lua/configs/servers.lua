local servers = {
	["lua_ls"] = {
		settings = {
			Lua = {
				diagnostics = {
					-- Get the language server to recognize the `vim` global
					globals = { 'vim' },
				},
			},
		},
	},
	["luau_lsp"] = {},
	-- ["rust_analyzer"] = {},
	["ocamllsp"] = {},
	["clangd"] = {},
	-- ["zls"] = {},
	["hls"] = {},
	-- ["typst_lsp"] = {}
	-- ["omnisharp"] = {},
}
local servers_list = {}

for server, _ in pairs(servers) do
	table.insert(servers_list, server)
end

return servers, servers_list
