# Neovim Configuration

This repository contains a Neovim configuration setup built using Lua. It is organized to provide a modular and extensible environment for developers, leveraging various plugins and custom settings.

---

## Folder Structure

### Root Directory
- **init.lua**: Entry point for the Neovim configuration. It initializes core settings and plugins.
- **lazy-lock.json**: Lock file for dependency management.

### lua/pythonhubdev
This folder contains the main configurations:

#### **core/**
- **init.lua**: Loads core configurations such as options and keymaps.
- **options.lua**: Defines global and editor-specific settings.
- **keymaps.lua**: Maps custom keybindings.

#### **lazy.lua**
Handles lazy-loading of plugins.

#### **plugins/**
Manages Neovim plugins, organized by functionality:
- **init.lua**: Lists essential plugins (e.g., `nvim-lua/plenary.nvim`).
- Files like `autopairs.lua`, `lsp/`, etc., configure individual plugins or plugin categories.

---

## Getting Started

1. Clone the repository:
```bash
git clone <repository_url>
```

2. Launch Neovim:
```bash
nvim
```

---

## Key Features
- Modular setup for easy customization.
- Lazy-loading to optimize performance.
- Support for LSP, auto-completion, and more via plugins.

---

## Contributing
Feel free to submit issues or pull requests to improve this configuration.

---

## License
This project is licensed under [MIT License](LICENSE).

