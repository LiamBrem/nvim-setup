-- rose-pine
return {
    "rose-pine/neovim",
    name = "rose-pine",
    config = function()
        require("rose-pine").setup({
            styles = {
                transparency = true,
            },
        })
        vim.cmd.colorscheme("rose-pine")
        vim.wo.number = true
        vim.wo.relativenumber = true
    end,
}

