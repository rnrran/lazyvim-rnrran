# LazyVim-rnrran

Personal Neovim configuration based on **LazyVim**.

This repository contains my customized Neovim setup for multiple operating systems:

* macOS (MacBook)
* Ubuntu Linux

The goal of this repository is to maintain a consistent development environment with a modern terminal-based workflow.

---

# Features

## Editor

* LazyVim
* Lazy.nvim plugin manager
* Telescope fuzzy finder
* Neo-tree file explorer
* Treesitter syntax highlighting
* LSP support
* Mason package manager

## Development Workflow

* LazyGit integration
* ToggleTerm terminal workflow
* OpenCode AI integration
* Multiple colorschemes
* Custom key mappings

## AI Assisted Development

OpenCode integration:

* Open AI coding assistant
* Explain selected code
* Refactor selected code
* AI-assisted debugging workflow

---

# Repository Structure

```
lazyvim-rnrran/

├── README.md
│
├── Macbook/
│   │
│   ├── README.md
│   ├── init.lua
│   │
│   └── lua/
│       ├── config/
│       └── plugins/
│
│
└── Ubuntu/
    │
    ├── README.md
    ├── init.lua
    │
    └── lua/
        ├── config/
        └── plugins/
```

---

# Installation

Choose the configuration based on your operating system.

---

# macOS

## Requirements

Install dependencies:

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

Install configuration:

```bash
cp -r Macbook/* ~/.config/nvim/
```

Start Neovim:

```bash
nvim
```

Lazy.nvim will automatically install required plugins.

More details:

```
Macbook/README.md
```

---

# Ubuntu

## Requirements

Install dependencies:

```bash
sudo apt update

sudo apt install \
neovim \
ripgrep \
fd-find \
lazygit \
nodejs \
npm \
golang
```

Install configuration:

```bash
cp -r Ubuntu/* ~/.config/nvim/
```

Start Neovim:

```bash
nvim
```

More details:

```
Ubuntu/README.md
```

---

# Main Keybindings

Leader key:

```
Space
```

---

## File Navigation

| Shortcut      | Action         |
| ------------- | -------------- |
| `Space Space` | Find file      |
| `Space /`     | Search project |
| `Space ,`     | Buffer list    |
| `Space e`     | File explorer  |

---

## Buffer

| Shortcut    | Action              |
| ----------- | ------------------- |
| `]b`        | Next buffer         |
| `[b`        | Previous buffer     |
| `Space b d` | Close buffer        |
| `Space b o` | Close other buffers |

---

## Window

| Shortcut | Action     |
| -------- | ---------- |
| `Ctrl+h` | Move left  |
| `Ctrl+j` | Move down  |
| `Ctrl+k` | Move up    |
| `Ctrl+l` | Move right |

---

## Terminal

| Shortcut        | Action             |
| --------------- | ------------------ |
| `Space f t`     | Open terminal      |
| `Ctrl+\ Ctrl+n` | Exit terminal mode |

---

## Git

| Shortcut    | Action       |
| ----------- | ------------ |
| `Space g g` | Open LazyGit |

---

## OpenCode AI

| Shortcut    | Action                 |
| ----------- | ---------------------- |
| `Space a o` | Toggle OpenCode        |
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

# Themes

Included themes:

* Kanagawa
* Gruvbox

Examples:

```vim
:colorscheme kanagawa-dragon
```

or:

```vim
:colorscheme gruvbox
```

---

# Development Philosophy

This configuration follows these principles:

* Keep configuration modular
* Prefer LazyVim defaults
* Add only required plugins
* Optimize terminal workflow
* Integrate AI assistance into development

---

# Backup & Restore

Backup current configuration:

```bash
cp -r ~/.config/nvim ~/nvim-backup
```

Restore:

```bash
cp -r Macbook/* ~/.config/nvim/
```

or:

```bash
cp -r Ubuntu/* ~/.config/nvim/
```

---

# License

Personal configuration.

Feel free to use, modify, and adapt for your own workflow.
