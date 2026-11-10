-- catppuccin
return {
    "catppuccin/nvim",
    name = "catppuccin",
    config = function()
        require("catppuccin").setup({
            flavour = "mocha",
            transparent_background = true,
        })
        vim.cmd.colorscheme("catppuccin-mocha")
        vim.wo.number = true
        vim.wo.relativenumber = true
    end,
}

