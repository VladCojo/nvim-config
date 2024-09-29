return {
    "ThePrimeagen/harpoon",
    branch = "harpoon2",
    opts = {
        menu = {
            width = vim.api.nvim_win_get_width(0) - 4,
        },
        settings = {
            save_on_toggle = true,
        },
    },
    keys = function()
        local keys = {
            {
                "<leader>a",  -- Add current file to Harpoon
                function()
                    require("harpoon"):list():add()
                end,
                desc = "Harpoon File",
            },
            {
                "<leader>A",  -- Toggle the Harpoon quick menu
                function()
                    local harpoon = require("harpoon")
                    harpoon.ui:toggle_quick_menu(harpoon:list())
                end,
                desc = "Harpoon Quick Menu",
            },
            {
                "<leader>h",  -- Quick switch to the first saved file
                function()
                    require("harpoon"):list():select(1)
                end,
                desc = "Harpoon to File 1",
            },
            {
                "<leader>j",  -- Quick switch to the second saved file
                function()
                    require("harpoon"):list():select(2)
                end,
                desc = "Harpoon to File 2",
            },
            {
                "<leader>k",  -- Quick switch to the third saved file
                function()
                    require("harpoon"):list():select(3)
                end,
                desc = "Harpoon to File 3",
            },
            {
                "<leader>l",  -- Quick switch to the fourth saved file
                function()
                    require("harpoon"):list():select(4)
                end,
                desc = "Harpoon to File 4",
            },
            {
                "<leader>;",  -- Quick switch to the fifth saved file
                function()
                    require("harpoon"):list():select(5)
                end,
                desc = "Harpoon to File 5",
            },
        }

        return keys
    end,
}

