# LazyVim-rnrran

Personal LazyVim configuration for MacBook.

A modern Neovim development environment built with LazyVim, optimized for coding workflow with:

* Telescope
* Neo-tree
* LSP
* Mason
* Treesitter
* LazyGit
* ToggleTerm
* OpenCode AI integration
* Gruvbox & Kanagawa themes

---

# Requirements

Designed for:

* macOS
* Neovim >= 0.10
* Homebrew
* zsh

---

# Installation

## 1. Install dependencies

```bash
brew install neovim
brew install ripgrep
brew install fd
brew install lazygit
brew install node
brew install go
```

Install Nerd Font:

```bash
brew install --cask font-jetbrains-mono-nerd-font
```

---

# Install LazyVim Config

Backup existing config:

```bash
mv ~/.config/nvim ~/.config/nvim.backup
```

Clone repository:

```bash
git clone https://github.com/rnrran/lazyvim-rnrran ~/.config/nvim
```

Open Neovim:

```bash
nvim
```

Lazy.nvim will automatically install plugins.

---

# Features

## File Navigation

Using Telescope:

| Shortcut      | Action         |
| ------------- | -------------- |
| `Space Space` | Find files     |
| `Space /`     | Search project |
| `Space ,`     | Buffer picker  |

---

## File Explorer

Neo-tree:

```
Space e
```

---

## Git Workflow

LazyGit:

```
Space g g
```

Features:

* stage files
* commit
* push
* pull

---

## Terminal Workflow

Toggle terminal:

```
Space f t
```

Terminal navigation:

```
Ctrl+h/j/k/l
```

Exit terminal mode:

```
Ctrl+\ Ctrl+n
```

---

# OpenCode AI Integration

AI assistant workflow:

| Shortcut    | Action                 |
| ----------- | ---------------------- |
| `Space a o` | OpenCode panel         |
| `Space a e` | Explain selected code  |
| `Space a r` | Refactor selected code |

Workflow:

1. Select code:

```
v
```

1. Run:

```
Space a e
```

or:

```
Space a r
```

---

# Theme

Available themes:

* Kanagawa Dragon
* Kanagawa Wave
* Gruvbox

Change theme:

```vim
:colorscheme kanagawa-dragon
```

or:

```vim
:colorscheme gruvbox
```

---

# Project Structure

```
~/.config/nvim

lua/
├── config/
│
└── plugins/
    ├── colorscheme.lua
    ├── opencode.lua
    ├── toggleterm.lua
    ├── git.lua
    └── coding.lua
```

---

# Daily Workflow

```
nvim .

        ↓

Space Space
Find file

        ↓

Coding

        ↓

Space a e
Ask OpenCode

        ↓

Space g g
Git commit

        ↓

Push
```

---

# Backup Philosophy

This repository contains personal Neovim configuration.

Goals:

* reproducible MacBook setup
* minimal plugin configuration
* AI-assisted development workflow
* terminal-first development experience

---

# Author

rnrran
