# WezTerm Configuration

Personal WezTerm configuration with automatic dark/light theme switching and modular structure.

## Features

- **Automatic theme switching**: Switches between dark (vaporwave-dark) and light (xcode-light) themes based on system appearance
- **Modular configuration**: Organized into separate modules for easy maintenance
  - `config/`: Core settings (appearance, bindings, domains, fonts, general, launch)
  - `colors/`: Custom color schemes
  - `events/`: Status bar and tab title handlers
  - `utils/`: Utility functions and helpers
- **Custom status bars**: Left and right status bars with custom styling
- **Background image support**: Optional backdrop images (currently disabled)

## Structure

```
wezterm/
├── wezterm.lua           # Main entry point
├── config/
│   ├── init.lua          # Config initialization
│   ├── appearance.lua    # Visual settings
│   ├── bindings.lua      # Key bindings
│   ├── domains.lua       # SSH/WSL domains
│   ├── fonts.lua         # Font configuration
│   ├── general.lua       # General settings
│   └── launch.lua        # Shell launch settings
├── colors/
│   ├── vaporwave-dark.lua
│   ├── xcode-light.lua
│   └── custom.lua
├── events/
│   ├── left-status.lua
│   ├── right-status.lua
│   ├── tab-title.lua
│   └── new-tab-button.lua
└── utils/
    ├── backdrops.lua
    ├── cells.lua
    ├── gpu-adapter.lua
    ├── math.lua
    ├── opts-validator.lua
    └── platform.lua
```

## Installation

```sh
# Clone to WezTerm config directory
git clone https://github.com/ealecho/editor-configs.git ~/editor-configs
ln -s ~/editor-configs/wezterm ~/.config/wezterm
```

Or manually copy the wezterm directory:

```sh
cp -r ~/editor-configs/wezterm ~/.config/wezterm
```

## Customization

- Edit `config/domains.lua` for custom SSH/WSL domains
- Edit `config/launch.lua` for preferred shells and paths
- Modify theme colors in `colors/` directory
- Uncomment backdrop lines in `wezterm.lua` to enable background images

## Key Bindings

The configuration uses platform-specific modifier keys:
- **macOS**: `SUPER` = `Super`, `SUPER_REV` = `Super+Ctrl`
- **Windows/Linux**: `SUPER` = `Alt`, `SUPER_REV` = `Alt+Ctrl`
- **Leader key**: `SUPER_REV+Space`

### Miscellaneous
| Keys | Action |
|------|--------|
| `F1` | Activate copy mode |
| `F2` | Command palette |
| `F3` | Show launcher |
| `F4` | Show launcher (tabs only) |
| `F5` | Show launcher (workspaces only) |
| `F11` | Toggle fullscreen |
| `F12` | Debug overlay |
| `SUPER+f` | Search text |
| `SUPER_REV+u` | Open URL (quick select) |
| `SUPER+SHIFT+p` | Copy file path (quick select) |
| `SUPER+SHIFT+g` | Copy git hash (quick select) |
| `SUPER+SHIFT+i` | Copy IP address (quick select) |
| `SUPER+SHIFT+q` | Copy quoted text (quick select) |

### Copy/Paste
| Keys | Action |
|------|--------|
| `SUPER+c` or `Ctrl+Shift+c` | Copy to clipboard |
| `SUPER+v` or `Ctrl+Shift+v` | Paste from clipboard |

### Cursor Movement
| Keys | Action |
|------|--------|
| `SUPER+LeftArrow` | Move to line start |
| `SUPER+RightArrow` | Move to line end |
| `SUPER+Backspace` | Clear line |

### Tabs
| Keys | Action |
|------|--------|
| `SUPER+t` | New tab (default domain) |
| `SUPER_REV+t` | New tab (WSL:Ubuntu) |
| `SUPER_REV+w` | Close current tab |
| `SUPER+[` | Previous tab |
| `SUPER+]` | Next tab |
| `SUPER_REV+[` | Move tab left |
| `SUPER_REV+]` | Move tab right |
| `SUPER+0` | Rename tab |
| `SUPER_REV+0` | Reset tab name |
| `SUPER+9` | Toggle tab bar |

### Windows
| Keys | Action |
|------|--------|
| `SUPER+n` | New window |
| `SUPER+=` | Increase window size |
| `SUPER+-` | Decrease window size |

### Panes
| Keys | Action |
|------|--------|
| `SUPER+d` | Split horizontal |
| `SUPER+SHIFT+d` | Split vertical |
| `SUPER+Enter` | Toggle pane zoom |
| `SUPER+w` | Close pane |
| `SUPER_REV+k/j/h/l` | Navigate panes (up/down/left/right) |
| `SUPER_REV+p` | Swap pane |
| `SUPER+u` | Scroll up 5 lines |
| `PageUp/PageDown` | Scroll page |

### Key Tables
| Keys | Action |
|------|--------|
| `LEADER+f` then `k/j/r` | Increase/decrease/reset font size |
| `LEADER+p` then `k/j/h/l` | Resize pane (up/down/left/right) |
| `Escape` or `q` | Exit key table mode |

### Mouse
| Action | Binding |
|--------|---------|
| `SUPER+Click` | Open link at cursor |

