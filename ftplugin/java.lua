local jdtls = require("jdtls")

local root_dir = require("jdtls.setup").find_root({
	"pom.xml",
	"build.gradle",
	"settings.gradle",
	".git",
})

if not root_dir then
	return
end

local workspace_folder = vim.fn.stdpath("data") .. "/jdtls-workspace/" .. vim.fn.fnamemodify(root_dir, ":p:h:t")

local on_attach = function(_, bufnr)
  local opts = { buffer = bufnr }

  vim.keymap.set("n", "<leader>f", function()
    vim.lsp.buf.format({ async = true })
  end, opts)
end

local capabilities = require("cmp_nvim_lsp").default_capabilities()

jdtls.start_or_attach({
	cmd = { vim.fn.stdpath("data") .. "/mason/bin/jdtls" },
	root_dir = root_dir,
	workspace_folder = workspace_folder,
	on_attach = on_attach,
	capabilities = capabilities,
	settings = {
		java = {
			format = {
				enabled = true,
				settings = {
					url = vim.fn.stdpath("config") .. "/java-formatter.xml",
					profile = "Default",
				},
			},
		},
	},
})
