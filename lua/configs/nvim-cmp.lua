return function()
	return function()
		-- [[ Configure nvim-cmp ]]
		-- See `:help cmp`
		local cmp = require 'cmp'
		local luasnip = require 'luasnip'
		require('luasnip.loaders.from_vscode').lazy_load()
		luasnip.config.setup {}

		local lsp_zero = require 'lsp-zero'
		lsp_zero.extend_cmp()

		local cmp_action = lsp_zero.cmp_action()

		cmp.setup {
			--[[ snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        }, --]]
			formatting = lsp_zero.cmp_format(),
			mapping = cmp.mapping.preset.insert({
				['<C-Space>'] = cmp.mapping.complete(),
				['<C-u>'] = cmp.mapping.scroll_docs(-4),
				['<C-d>'] = cmp.mapping.scroll_docs(4),
				['<C-f>'] = cmp_action.luasnip_jump_forward(),
				['<C-b>'] = cmp_action.luasnip_jump_backward(),
				['<Tab>'] = function(fallback)
					if cmp.visible() then
						cmp.select_next_item()
					else
						fallback()
					end
				end,
				["<S-Tab>"] = function(fallback)
					if cmp.visible() then
						cmp.select_prev_item()
					elseif luasnip.jumpable(-1) then
						luasnip.jump(-1)
					else
						fallback()
					end
				end,
				['<Enter>'] = cmp.mapping.confirm({ select = true }), -- Accept currently selected item. Set `select` to `false` to only confirm explicitly selected items.
			}),
			sources = {
				{
					name = 'nvim_lsp',
					entry_filter = function(entry, _)
						return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
					end
				},
				-- { name = 'luasnip' , priority = 2, keyword_length = 4, max_item_count = 4},
			},
		}
	end
end
