-- indent-blankline
--
return {
	"lukas-reineke/indent-blankline.nvim",
	main = "ibl",
	opts = function()
		local rose_pine_rainbow = {
			"RPLove",
			"RPGold",
			"RPRose",
			"RPPine",
			"RPFoam",
			"RPIris",
		}

		local hooks = require("ibl.hooks")
		-- register so the groups get redefined every time the colorscheme reloads
		hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
			vim.api.nvim_set_hl(0, "RPLove", { fg = "#eb6f92" })
			vim.api.nvim_set_hl(0, "RPGold", { fg = "#f6c177" })
			vim.api.nvim_set_hl(0, "RPRose", { fg = "#ebbcba" })
			vim.api.nvim_set_hl(0, "RPPine", { fg = "#31748f" })
			vim.api.nvim_set_hl(0, "RPFoam", { fg = "#9ccfd8" })
			vim.api.nvim_set_hl(0, "RPIris", { fg = "#c4a7e7" })
		end)

		return {
			indent = {
				char = "│", 
				highlight = rose_pine_rainbow,
			},
		}
	end,
}
