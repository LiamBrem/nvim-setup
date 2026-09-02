-- Neovim's built-in python indent (python#GetIndent) does more than indent
-- after ':' -- it also dedents after return/pass/break/continue/raise,
-- aligns bracket continuations, etc. Replace it with a minimal rule:
-- indent one shiftwidth deeper only when the previous line ends in ':',
-- otherwise just keep the previous line's indent.
local function get_indent(lnum)
	local prevlnum = vim.fn.prevnonblank(lnum - 1)
	if prevlnum == 0 then
		return 0
	end

	local prevline = vim.fn.getline(prevlnum):gsub("%s*#.*$", ""):gsub("%s+$", "")
	local indent = vim.fn.indent(prevlnum)

	if prevline:sub(-1) == ":" then
		indent = indent + vim.fn.shiftwidth()
	end

	return indent
end

_G._liambrem_python_indent = get_indent

vim.bo.indentexpr = "v:lua._liambrem_python_indent(v:lnum)"
vim.bo.indentkeys = "!^F,o,O"
vim.bo.autoindent = true
