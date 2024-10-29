return {
   -- {
   --     'AlessandroYorba/Alduin',
   --     priority = 1000,
   --     config = function()
   --         vim.cmd.colorscheme 'alduin'
   --     end,
   -- },
   -- {
   --    "sho-87/kanagawa-paper.nvim",
   --    lazy = false,
   --    priority = 1000,
   --    opts = {
   --    },
   --
   --    config = function()
   --       require("kanagawa-paper").setup({
   --          gutter = false,
   --          overrides = function(colors)
   --             return {
   --                string = { fg = colors.palette.carpYellow, italic = false },
   --                parameter = { fg = colors.palette.dragonRed }
   --             }
   --          end
   --       })
   --       vim.cmd.colorscheme 'kanagawa-paper'
   --    end,
   -- },
   {
      "slugbyte/lackluster.nvim",
      lazy = false,
      priority = 1000,
      init = function()
         -- vim.cmd.colorscheme("lackluster")
         -- vim.cmd.colorscheme("lackluster-hack")
         -- vim.cmd.colorscheme("lackluster-mint")
         vim.cmd.colorscheme("lackluster-night")
      end,
   }
}
