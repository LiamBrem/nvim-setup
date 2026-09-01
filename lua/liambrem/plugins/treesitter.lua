-- treesitter
return {
	{
		"nvim-treesitter/nvim-treesitter",
		branch = "main",
		lazy = false,
		build = ":TSUpdate",
		config = function()
			local parsers = { "c", "lua", "markdown", "markdown_inline", "cpp", "python", "rust", "java" }
			require("nvim-treesitter").install(parsers)

			vim.api.nvim_create_autocmd("FileType", {
				pattern = { "c", "lua", "markdown", "cpp", "python", "rust", "java" },
				callback = function()
					vim.treesitter.start()
				end,
			})
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-context",
		config = function()
			require("treesitter-context").setup({
				enable = true,
				max_lines = 3,
				multiline_threshold = 1,
				mode = "cursor",
			})
		end,
	},
}
