-- treesitter
return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		config = function()
			require("nvim-treesitter.configs").setup({
				-- A list of parser names, or "all"
				ensure_installed = { "c", "lua", "markdown", "markdown_inline", "cpp", "python", "rust", "java" },

				sync_install = false,
				auto_install = true,
				ignore_install = { "javascript" },

				highlight = {
					enable = true,
					additional_vim_regex_highlighting = false,
				},
				indent = {
					enable = false,
				},
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
