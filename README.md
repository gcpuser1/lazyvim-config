# lazyvim-config

Personal [LazyVim](https://www.lazyvim.org/) configuration. Built on the principle of **less is more** — only add what LazyVim doesn't already provide.

## Requirements

- Neovim >= 0.9
- [Nerd Font](https://www.nerdfonts.com/) set in your terminal (e.g. `JetBrainsMono Nerd Font`)
- `git`, `make`, `ripgrep`, `fd`
- Language runtimes: `go`, `node`, `python3`, `java` (JDK 17+)

## Installation

```bash
# Back up existing config
mv ~/.config/nvim ~/.config/nvim.bak

# Clone into nvim config directory
git clone https://github.com/gcpuser1/lazyvim-config ~/.config/nvim
```

Open `nvim` — LazyVim will bootstrap and install all plugins on first launch.

## Language Support

All LSP, formatting, linting, and DAP are handled by LazyVim extras. Nothing is duplicated manually.

| Language       | LSP          | Formatter            | Linter          | DAP        |
|----------------|--------------|----------------------|-----------------|------------|
| Go             | `gopls`      | `goimports`, `gofumpt` | `golangci-lint` | `delve`    |
| JavaScript/TS  | `vtsls`      | `prettier`           | —               | —          |
| Python         | `pyright`    | `ruff`               | `ruff`          | `debugpy`  |
| Java           | `jdtls`      | built-in             | —               | `java-debug` |
| JSON           | `jsonls`     | `prettier`           | —               | —          |
| YAML           | `yamlls`     | `prettier`           | —               | —          |
| TOML           | `taplo`      | `taplo`              | —               | —          |

Mason auto-installs all tools on first launch.

## Plugins (custom only)

| Plugin | Purpose |
|--------|---------|
| `catppuccin/nvim` | Colorscheme (mocha) |
| `tpope/vim-fugitive` | Git commands |
| `christoomey/vim-tmux-navigator` | `Ctrl+hjkl` pane navigation |
| `rcarriga/nvim-dap-ui` | DAP UI (auto-opens on debug start) |

## Key Mappings

### Debug (`<Leader>d`)
| Key | Action |
|-----|--------|
| `<Leader>dt` | Toggle breakpoint |
| `<Leader>dc` | Continue |
| `<Leader>do` | Step over |
| `<Leader>dx` | Terminate |

All other keymaps come from LazyVim defaults. See [LazyVim keymaps](https://www.lazyvim.org/keymaps).

## Structure

```
config/
  lazy.lua      # plugin spec & extras
  options.lua   # vim options
  keymaps.lua   # custom keymaps
  autocmds.lua  # custom autocmds
plugins/
  catppuccin.lua          # colorscheme
  git-stuff.lua           # vim-fugitive
  vim-tmux-navigator.lua  # tmux pane navigation
```
