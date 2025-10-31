# Neovim Shortcut Cheat Sheet

> *All leader key mappings assume `leader = <Space>`.*

## General UI / Appearance

| Action                 | Shortcut      | Description                                   |
| :--------------------- | :------------ | :-------------------------------------------- |
| Toggle line numbers    | *(automatic)* | Absolute line numbers enabled                 |
| Transparent background | *(automatic)* | `Normal` and `NormalFloat` have no background |

---

## Telescope (File Finder & Search)

| Action                 | Shortcut     | Description                           |
| :--------------------- | :----------- | :------------------------------------ |
| Find files             | `<leader>pf` | Open Telescope file finder            |
| Find git-tracked files | `<C-p>`      | Search files tracked by Git           |
| Search text (grep)     | `<leader>ps` | Grep for user-input string in project |

---

## Harpoon (Quick Navigation)

| Action                      | Shortcut    | Description                                        |
| :-------------------------- | :---------- | :------------------------------------------------- |
| Add current file to Harpoon | `<leader>a` | Adds file to Harpoon list (prints file name added) |
| Toggle Harpoon menu         | `<C-e>`     | Opens Harpoon quick menu                           |
| Jump to Harpoon file 1      | `<C-h>`     | Navigate to first Harpoon entry                    |
| Jump to Harpoon file 2      | `<C-t>`     | Navigate to second Harpoon entry                   |
| Jump to Harpoon file 3      | `<C-n>`     | Navigate to third Harpoon entry                    |
| Jump to Harpoon file 4      | `<C-s>`     | Navigate to fourth Harpoon entry                   |
| Previous Harpoon buffer     | `<C-S-P>`   | Jump to previous file in list                      |
| Next Harpoon buffer         | `<C-S-N>`   | Jump to next file in list                          |

---

## LSP (Language Server Protocol)

> Applies to all installed LSP servers (`lua_ls`, `pyright`, `clangd`, `jdtls`, etc.)

| Action              | Shortcut      | Description                                                 |
| :------------------ | :------------ | :---------------------------------------------------------- |
| Hover info          | `K`           | Show documentation for symbol under cursor                  |
| Go to definition    | `gd`          | Jump to symbol definition                                   |
| Find references     | `gr`          | Show all references using Telescope                         |
| Rename symbol       | `<leader>rn`  | Rename all references to symbol                             |
| Code actions        | `<leader>ca`  | Run context-aware LSP actions (e.g., fix imports, refactor) |
| Format file         | `<leader>f`   | Format the current buffer asynchronously                    |
| Auto-format on save | *(automatic)* | Formats buffer before save (via `BufWritePre`)              |

---

## Autocompletion (`nvim-cmp`)

| Action                   | Shortcut    | Description                                        |
| :----------------------- | :---------- | :------------------------------------------------- |
| Show completion menu     | `<C-Space>` | Manually trigger autocomplete                      |
| Confirm completion       | `<CR>`      | Accept current completion                          |
| Scroll docs up           | `<C-b>`     | Scroll up completion documentation                 |
| Scroll docs down         | `<C-f>`     | Scroll down completion documentation               |
| Next completion item     | `<Tab>`     | Move forward through completion options            |
| Previous completion item | `<S-Tab>`   | Move backward through completion options           |
| Expand/jump snippet      | `<Tab>`     | Expand LuaSnip snippet or jump to next placeholder |
| Jump backward in snippet | `<S-Tab>`   | Jump to previous snippet placeholder               |

---

## Treesitter (Syntax Highlighting)

| Action           | Shortcut      | Description                                                                                     |
| :--------------- | :------------ | :---------------------------------------------------------------------------------------------- |
| *(none defined)* | *(automatic)* | Provides syntax-aware highlighting for: `c`, `cpp`, `lua`, `markdown`, `python`, `rust`, `java` |

---

## Mason (LSP/DAP/Linter/Formatter Manager)

| Action                | Shortcut       | Description                                      |
| :-------------------- | :------------- | :----------------------------------------------- |
| Open Mason UI         | `:Mason`       | Manage language servers, formatters, and linters |
| Update Mason registry | `:MasonUpdate` | Refresh available package metadata               |

---

## Plugin Overview

| Plugin                                                               | Purpose                                         |
| :------------------------------------------------------------------- | :---------------------------------------------- |
| **rose-pine**                                                        | Elegant colorscheme with transparent background |
| **nvim-treesitter**                                                  | Modern syntax highlighting & parsing            |
| **telescope.nvim**                                                   | Fuzzy finder for files, text, etc.              |
| **mason.nvim**                                                       | Manage external tools like LSPs and formatters  |
| **mason-lspconfig.nvim**                                             | Bridge between Mason and Neovim’s LSP config    |
| **nvim-lspconfig**                                                   | Core LSP client configuration                   |
| **nvim-cmp**                                                         | Autocompletion engine                           |
| **cmp-nvim-lsp / cmp-buffer / cmp-path / cmp-cmdline / cmp-luasnip** | Completion sources                              |
| **LuaSnip**                                                          | Snippet engine                                  |
| **harpoon**                                                          | Quick file marking and navigation               |
| **lazy.nvim**                                                        | Plugin manager (used to load all plugins)       |

---

## Tips

* Run `:LspInfo` to confirm your LSP is attached for the current file.
* Run `:checkhealth` for diagnostics on plugin or LSP setup.
* Press `<leader>f` anytime to format manually.
* To update all plugins: `:Lazy update`
* To clean unused plugins: `:Lazy clean`

---



