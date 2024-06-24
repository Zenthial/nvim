return {
    {
        "ThePrimeagen/harpoon",
        config = function()
            local mark = require("harpoon.mark")
            local ui = require("harpoon.ui")

            vim.keymap.set('n', '<leader>aa', mark.add_file, { desc = "Harpoon [A]dd file" })
            vim.keymap.set('n', '<leader>ad', mark.rm_file, { desc = "Harpoon [D]elete file" })
            vim.keymap.set('n', '<leader>au', ui.toggle_quick_menu, { desc = "Harpoon Quick Menu Toggle" })
            vim.keymap.set('n', '<leader>al', function() ui.nav_file(1) end, { desc = "Harpoon File 1" })
            vim.keymap.set('n', '<leader>ak', function() ui.nav_file(2) end, { desc = "Harpoon File 2" })
            vim.keymap.set('n', '<leader>aj', function() ui.nav_file(3) end, { desc = "Harpoon File 3" })
            vim.keymap.set('n', '<leader>an', function() ui.nav_file(4) end, { desc = "Harpoon File 4" })
            vim.keymap.set('n', '<leader>am', function() ui.nav_file(5) end, { desc = "Harpoon File 5" })
            vim.keymap.set('n', '<leader>ai', function() ui.nav_file(6) end, { desc = "Harpoon File 6" })
        end,
    }
}
