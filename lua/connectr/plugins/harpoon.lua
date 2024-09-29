return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    dependencies = { "nvim-lua/plenary.nvim" },

    config = function()
        -- Load Harpoon and setup
        local harpoon = require("harpoon")
        harpoon.setup()

        -- Load modules for mark and ui
        local mark = require("harpoon.mark")
        local ui = require("harpoon.ui")

        -- Key mappings for Harpoon
        vim.keymap.set("n", "<leader>a", mark.add_file)  -- Add file to Harpoon
        vim.keymap.set("n", "<C-m>", ui.toggle_quick_menu)  -- Toggle Harpoon menu

        -- Navigate files with Harpoon
        vim.keymap.set("n", "<C-h>", function() ui.nav_file(1) end)
        vim.keymap.set("n", "<C-j>", function() ui.nav_file(2) end)
        vim.keymap.set("n", "<C-k>", function() ui.nav_file(3) end)
        vim.keymap.set("n", "<C-l>", function() ui.nav_file(4) end)

        -- Navigation between files
        -- Ensure you're calling the correct API for Harpoon navigation
        vim.keymap.set("n", "<C-S-P>", ui.nav_prev)
        vim.keymap.set("n", "<C-S-N>", ui.nav_next)
    end
}

