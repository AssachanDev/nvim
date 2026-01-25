# Keybinding Summary

This file summarizes the keybindings for the installed Neovim plugins.
`<leader>` is set to the `space` key.

## General

| Key | Mode | Action |
|---|---|---|
| `<leader>e` | Normal | Toggle `nvim-tree` file explorer. |

## Searching (Telescope)

| Key | Mode | Action | Plugin |
|---|---|---|---|
| `<leader>ff` | Normal | Find files. | `telescope.nvim` |
| `<leader>fg` | Normal | Live grep for text in files. | `telescope.nvim` |
| `<leader>fb` | Normal | List open buffers. | `telescope.nvim` |
| `<leader>fh` | Normal | Search help tags. | `telescope.nvim` |
| `<leader>fp` | Normal | Find projects. | `telescope-project.nvim` |

| Key | Mode | Action | Plugin |
|---|---|---|---|
| `<leader>y` | Normal | Open Yazi file manager. | `yazi.nvim` |

## Language Server Protocol (LSP)

| Key | Mode | Action |
|---|---|---|
| `K` | Normal | Show documentation for the word under the cursor. |
| `gd` | Normal | Go to the definition of the word under the cursor. |
| `<leader>ca` | Normal | Show code actions for the current location. |

## Flash (Enhanced Navigation)

| Key | Mode(s) | Action |
|---|---|---|
| `s` | Normal, Visual, Operator-pending | Jump to any character on the screen. |
| `r` | Operator-pending | Remote flash (for visual modes from other windows). |
| `<c-s>` | Command | Toggle Flash search. |

## Smooth Scrolling (neoscroll.nvim)

These keys provide smooth scrolling animations.

| Key | Mode(s) | Action |
|---|---|---|
| `<C-u>` | Normal, Visual, Select | Scroll up. |
| `<C-d>` | Normal, Visual, Select | Scroll down. |
| `<C-b>` | Normal, Visual, Select | Scroll up a full page. |
| `<C-f>` | Normal, Visual, Select | Scroll down a full page. |
| `<C-y>` | Normal, Visual, Select | Scroll up one line. |
| `<C-e>` | Normal, Visual, Select | Scroll down one line. |
| `zt` | Normal, Visual, Select | Scroll to top. |
| `zz` | Normal, Visual, Select | Scroll to center. |
| `zb` | Normal, Visual, Select | Scroll to bottom. |

## Undo/Redo/Paste Highlighting (undo-glow.nvim)

These keybindings replace the default `u`, `U`, `p`, `P`, etc. to add a highlight effect.

| Key | Mode(s) | Action |
|---|---|---|
| `u` | Normal | Undo with highlight. |
| `U` | Normal | Redo with highlight. |
| `p` | Normal | Paste below with highlight. |
| `P` | Normal | Paste above with highlight. |
| `n` | Normal | Go to next search result with highlight. |
| `N` | Normal | Go to previous search result with highlight. |
| `*` | Normal | Search for the word under the cursor with highlight. |
| `#` | Normal | Search for the word under thecursor backwards with highlight. |
| `gc` | Normal, Visual | Toggle comment with highlight. |
| `gc` | Operator-pending | Comment text object with highlight. |
| `gcc` | Normal | Toggle comment line with highlight. |

## Code Structure (treesj)

| Key | Mode | Action |
|---|---|---|
| `<leader>j` | Normal | Toggle join/split of code blocks. |

## Debugging (nvim-dap)

| Key | Mode | Action |
|---|---|---|
| `<leader>dc` | Normal | Continue execution. |
| `<leader>do` | Normal | Step over. |
| `<leader>di` | Normal | Step into. |
| `<leader>du` | Normal | Step out. |
| `<leader>db` | Normal | Toggle breakpoint. |

## UI and UX

| Key | Mode | Action | Plugin |
|---|---|---|---|
| (None) | Automatic | Dims inactive code to improve focus. Can be toggled with `:Twilight <on/off/toggle>`. | `folke/twilight.nvim` |
| (None) | Automatic | Automatically updates file icon colors to match colorscheme. | `rachartier/tiny-devicons-auto-colors.nvim` |
| (None) | Automatic | Displays current code context (breadcrumbs) using LSP. | `SmiteshP/nvim-navic` |
| (None) | Automatic | A snazzy buffer line for easy management of buffers. Keybindings are not set by default. | `akinsho/bufferline.nvim` |

*   **nvim-tree/nvim-web-devicons**: Adds file-type icons to various plugins.

## Other

| Key | Mode | Action | Plugin |
|---|---|---|---|
| `<C-h>`, `<C-j>`, `<C-k>`, `<C-l>` | Normal | Navigate between Tmux panes | `vim-tmux-navigator` |
| (None) | Command-based | Connect to remote filesystem via SSHFS. Use `:SSHFS` to open the browser. | `uhs-robert/sshfs.nvim` |

