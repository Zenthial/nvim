return function()
    return function()
        -- [[ Configure nvim-cmp ]]
        -- See `:help cmp`
        local cmp = require 'cmp'
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_mappings = cmp.mapping.preset.insert({
            ['<C-s>'] = cmp.mapping.select_prev_item(cmp_select),
            ['<C-w>'] = cmp.mapping.select_next_item(cmp_select),
            ['<C-d>'] = cmp.mapping.confirm({ select = true }),
            ["<C-Space>"] = cmp.mapping.complete(),
        })

        cmp_mappings['<Tab>'] = nil
        cmp_mappings['<S-Tab>'] = nil
        cmp.setup {
            mapping = cmp_mappings,
            snippet = {
                expand = function(args)
                    require 'luasnip'.lsp_expand(args.body)
                end
            },

            sources = {
                { name = 'luasnip' },
                {
                    name = 'nvim_lsp',
                    -- entry_filter = function(entry, _)
                    -- 	return require("cmp").lsp.CompletionItemKind.Snippet ~= entry:get_kind()
                    -- end
                },
            },
        }
    end
end
