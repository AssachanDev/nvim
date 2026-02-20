# 🚀 AstroNvim Zero - A Lean & Modern Neovim Configuration

A minimal, fast, and highly-customizable Neovim configuration designed for a modern and fluid development experience. Built on the speed of Lua and powered by the `lazy.nvim` plugin manager.

## ✨ Features

This configuration is built from a curated list of plugins to provide a powerful yet lightweight environment with a focus on visual polish and productivity.

| Plugin | Description |
|---|---|
| **[LSP](lua/plugins/lsp.lua)** | Full LSP support with Mason tool auto-installer and custom keybindings. |
| **[UI & Theme](lua/plugins/ui.lua)** | Catppuccin Mocha with transparency, Neo-tree, Alpha dashboard, and smooth animations. |
| **[Telescope](lua/plugins/telescope.lua)** | Advanced fuzzy finder for files, buffers, and more. |
| **[Which-Key](lua/plugins/which-key.lua)** | Interactive keybinding discovery and grouping. |
| **[Editor Tools](lua/plugins/editor.lua)** | Auto-pairs, powerful commenting, and text surrounding tools. |
| **[Treesitter](lua/plugins/treesitter.lua)** | Advanced syntax highlighting and code parsing. |
| **[Lualine](lua/plugins/lualine.lua)** | A beautiful, pill-style status line themed with Catppuccin. |
| **[Format](lua/plugins/format.lua)** | Automated code formatting via `conform.nvim`. |
| **[Yazi](lua/plugins/yazi.lua)** | Blazing fast terminal file manager integration. |
| **...and many more!** | Check the `lua/plugins/` directory for the full list of 25+ plugins. |

## 🛠️ Installation

1.  **Backup your existing Neovim configuration:**
    ```bash
    mv ~/.config/nvim ~/.config/nvim.bak
    mv ~/.local/share/nvim ~/.local/share/nvim.bak
    ```

2.  **Clone this repository:**
    ```bash
    git clone https://github.com/AssachanDev/nvim.git ~/.config/nvim
    ```

3.  **Start Neovim:**
    ```bash
    nvim
    ```
    The `lazy.nvim` plugin manager will automatically install all the plugins when you first start Neovim.

## ⌨️ Keymappings

Your personal command center. The leader key is ` ` (Space).
**Tip:** Press `<leader>` and wait 0.5s to see the **Which-Key** menu for all shortcuts!

### 🔍 Discovery & Navigation
| Key | Description |
|---|---|
| `<leader>?` | Show all buffer-local keymaps |
| `:Telescope keymaps` | Search through every available keybinding |
| `<leader>e` | Toggle Neo-tree file explorer |
| `<Tab>` | Cycle to the next buffer/tab |
| `jk` | Exit Insert Mode |

### 💻 LSP (Coding)
| Key | Description |
|---|---|
| `gd` | Go to Definition |
| `K` | Hover Documentation |
| `<leader>ca` | Code Actions |
| `<leader>rn` | Rename Symbol |

### 🔭 Telescope (Find)
| Key | Description |
|---|---|
| `<leader>ff` | Find Files |
| `<leader>fg` | Live Grep (Search text) |
| `<leader>fb` | Switch Buffers |
| `<leader>fh` | Search Help Tags |

### 🐍 REPL & Execution
| Key | Description |
|---|---|
| `<leader>sl` | Send to Slime (tmux REPL) |
| `<leader>mi` | Initialize Molten (Python) |
| `<leader>me` | Evaluate in Molten |
| `<leader>mo` | Show Molten Output |

### 🛠️ Development Tools
| Key | Description |
|---|---|
| `<leader>p` | PlatformIO Tools (Build, Upload, Monitor) |
| `<leader>y` | Open Yazi File Manager |
| `<leader>gd` | Open Git Diffview |

## 📂 Project Structure

```
.
├── init.lua          -- Main entry point
├── lua/
│   ├── config/       -- core options and basic keymaps
│   └── plugins/      -- modular plugin configurations
└── lazy-lock.json      -- pinned plugin versions
```
