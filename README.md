
# 🚀 AstroNvim Zero - A Lean Neovim Configuration

A minimal, fast, and highly-customizable Neovim configuration designed for a modern and fluid development experience. Built on the speed of Lua and powered by the `lazy.nvim` plugin manager.

## ✨ Features

This configuration is built from a curated list of plugins to provide a powerful yet lightweight environment.

| Plugin | Description |
|---|---|
| **[LSP](lua/plugins/lsp.lua)** | Full Language Server Protocol support for diagnostics, definitions, and more. |
| **[Telescope](lua/plugins/telescope.lua)** | A highly extendable fuzzy finder for files, buffers, and LSP references. |
| **[Treesitter](lua/plugins/treesitter.lua)** | Advanced syntax highlighting and code parsing for better code understanding. |
| **[Lualine](lua/plugins/lualine.lua)** | A blazing-fast and beautiful status line. |
| **[Format](lua/plugins/format.lua)** | Code formatting via `conform.nvim`. |
| **[Bufferline](lua/plugins/bufferline.lua)** | Elegant buffer/tab management. |
| **[Telescope](lua/plugins/telescope.lua)** | Fuzzy finding for files, buffers, and more. |
| **[Colorizer](lua/plugins/colorizer.lua)** | Highlights color codes in your files. |
| **[Slime](lua/plugins/slime.lua)** | Send code from Neovim to a REPL. |
| **...and many more!** | Check the `lua/plugins/` directory for the full list. |

## Prerequisites

Before you begin, ensure you have the following installed:

- **Neovim v0.8.0+**
- **Git**
- A **Nerd Font** (e.g., [FiraCode Nerd Font](https://www.nerdfonts.com/font-downloads)) for UI icons.
- A C compiler for `treesitter` (e.g., `gcc`).

## 🛠️ Installation

1.  **Backup your existing Neovim configuration:**
    ```bash
    # Backup your current nvim config
    mv ~/.config/nvim ~/.config/nvim.bak
    # Backup your local nvim data
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone this repository:**
    ```bash
    git clone https://github.com/AssachanDev/nvim.git
    ```

3.  **Start Neovim:**
    ```bash
    nvim
    ```
    The `lazy.nvim` plugin manager will automatically install all the plugins when you first start Neovim.

## ⌨️ Keymappings

Your personal command center. The leader key is ` ` (Space).

All keymaps can be configured in `lua/config/keymaps.lua` and in the individual files in `lua/plugins/`.

### General & Navigation

| Key | Mode | Description |
|---|---|---|
| `jk` | Insert | Exit Insert Mode |
| `<leader>e` | Normal | Toggle file explorer (Neotree) |
| `<Tab>` | Normal | Cycle to the next buffer/tab |

### Telescope (Fuzzy Finding)

| Key | Mode | Description |
|---|---|---|
| `<leader>ff` | Normal | Find files in the project |
| `<leader>fg` | Normal | Grep for text in the project |
| `<leader>fb` | Normal | Find and switch between open buffers |
| `<leader>fh` | Normal | Search help tags |

### Code Execution & REPL

| Key | Mode | Description |
|---|---|---|
| `<leader>sl` | Normal | Send current paragraph to a REPL (Slime) |
| `<leader>sl` | Visual | Send selection to a REPL (Slime) |
| `<leader>mi` | Normal | Initialize Python REPL (Molten) |
| `<leader>me` | Normal | Evaluate current line in Python REPL (Molten) |
| `<leader>me` | Visual | Evaluate selection in Python REPL (Molten) |
| `<leader>mo` | Normal | Show the Molten output window |

### Git & Diffing

| Key | Mode | Description |
|---|---|---|
| `<leader>gd` | Normal | Open a Git diff view (Diffview) |
| `<leader>gx` | Normal | Close the Git diff view (Diffview) |

### Autocompletion (nvim-cmp)

These keybindings apply when the completion menu is visible.

| Key | Mode | Description |
|---|---|---|
| `<C-j>` / `<Tab>` | Insert | Select the next item in the completion list |
| `<C-k>` | Insert | Select the previous item in the completion list |
| `<C-Space>` | Insert | Manually trigger autocompletion |
| `<CR>` | Insert | Confirm the selected completion |


## 📂 Project Structure

```
.
├── init.lua          -- Main entry point
├── lua/
│   ├── config/
│   │   ├── keymaps.lua -- Global keybindings
│   │   ├── lazy.lua    -- lazy.nvim setup
│   │   └── options.lua -- Neovim options
│   └── plugins/        -- All plugin configurations
└── lazy-lock.json      -- Pin plugin versions
```

---
