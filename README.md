# Neovim configuration

Personal Neovim setup managed with `lazy.nvim`. Plugin specs live in
`lua/liambrem/plugins/`. The leader key is `<Space>`.

## Files and navigation

| Action | Key |
| --- | --- |
| Open the built-in file explorer | `<leader>pv` |
| Find files with Telescope | `<leader>pf` |
| Find Git-tracked files with Telescope | `<C-p>` |
| Search for a prompted string with Telescope | `<leader>ps` |
| Jump to visible text with Flash | `s` in normal, visual, or operator-pending mode |

Flash replaces Vim's normal-mode `s` (substitute) mapping.

### Harpoon

| Action | Key |
| --- | --- |
| Add the current file | `<leader>a` |
| Toggle the quick menu | `<C-e>` |
| Open marked files 1–4 | `<C-h>`, `<C-t>`, `<C-n>`, `<C-s>` |
| Previous or next marked file | `<C-S-P>`, `<C-S-N>` |

## Git and diagnostics

| Action | Command or key |
| --- | --- |
| Review working-tree and staged changes | `:DiffviewOpen` |
| Compare with a revision | `:DiffviewOpen <revision>` |
| View history for the current file | `:DiffviewFileHistory %` |
| Close Diffview | `:DiffviewClose` |
| Show diagnostics in Trouble | `<leader>xx` |
| Show the quickfix list in Trouble | `<leader>xq` |
| Show a floating diagnostic | `<leader>e` |

Gitsigns marks added, changed, and deleted lines. Its hunk actions are available
through `:Gitsigns`, but this config does not assign them keys.

## LSP and editing

The shared LSP mappings below are set when `lua_ls`, `pyright`, `clangd`,
`gopls`, `ts_ls`, or `eslint` attaches. Java uses `nvim-jdtls` through
`ftplugin/java.lua` and currently maps only `<leader>f` there.

| Action | Key |
| --- | --- |
| Hover documentation | `K` |
| Go to definition | `gd` |
| List references | `gr` |
| Rename symbol | `<leader>rn` |
| Format the current buffer asynchronously | `<leader>f` |

There is no general format-on-save behavior. The ESLint configuration runs
`EslintFixAll` before saving buffers to which its server attaches.

### Completion and text objects

| Action | Key |
| --- | --- |
| Open completion menu | `<C-Space>` |
| Accept selected completion | `<CR>` |
| Next completion or snippet field | `<Tab>` |
| Previous completion or snippet field | `<S-Tab>` |
| Scroll completion documentation | `<C-b>`, `<C-f>` |

`mini.pairs` inserts matching brackets and quotes. `mini.ai` extends the `a`
and `i` text objects; for example, `via` selects an argument and `vaf`
selects a function call.

## Appearance and installed plugins

Catppuccin Mocha uses a transparent background. Absolute and relative line
numbers are enabled. Lualine shows the branch, diff, diagnostics, file, and
cursor location; indent-blankline draws indentation guides.

| Plugin | Purpose |
| --- | --- |
| `lazy.nvim` | Plugin manager |
| `catppuccin` | Colorscheme |
| `telescope.nvim` | File finding and text search |
| `harpoon` | Marked-file navigation |
| `flash.nvim` | On-screen jumps |
| `diffview.nvim` | Git diffs and file history |
| `gitsigns.nvim` | Git change markers and hunk commands |
| `trouble.nvim` | Diagnostics and quickfix views |
| `mason.nvim`, `mason-lspconfig.nvim`, `nvim-lspconfig` | Language servers |
| `nvim-jdtls` | Java language server integration |
| `nvim-cmp`, completion sources, `LuaSnip` | Completion and snippets |
| `mini.ai`, `mini.pairs` | Text objects and automatic pairs |
| `nvim-treesitter`, `nvim-treesitter-context` | Syntax highlighting and current code context |
| `lualine.nvim`, `indent-blankline.nvim` | Status line and indentation guides |

Tree-sitter parsers are installed for C, C++, Lua, Markdown, Python, Rust,
and Java, with `markdown_inline` also installed. Highlighting is started for
those language filetypes by the current config. The LSP setup additionally
covers Go and JavaScript/TypeScript.

## Maintenance

- `:Lazy` shows plugins; `:Lazy update` updates them.
- `:Mason` manages language tools; `:MasonUpdate` refreshes its registry.
- `:checkhealth` reports Neovim and plugin setup issues.
