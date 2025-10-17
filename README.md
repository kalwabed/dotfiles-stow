# Dotfiles

Personal dotfiles managed with [stow](https://www.gnu.org/software/stow/).

## Includes

- **Fish** - Shell configuration and aliases
- **Neovim** - Editor configuration with LuaVim
- **Git** - Git configuration
- **Ghostty** - Terminal emulator config
- **Wezterm** - Terminal emulator alternative config
- **Starship** - Prompt configuration
- **Aerospace** - Window manager configuration
- **Karabiner** - Keyboard remapper configuration
- **Kanata** - Keyboard layout configuration
- **Sketchybar** - macOS status bar configuration
- **Borders** - Window borders configuration
- **Fastfetch** - System info display configuration
- **Yazi** - File manager configuration

## Installation

Clone and stow:

```bash
git clone <repo-url> ~/dotfiles
cd ~/dotfiles
stow */
```

Each directory corresponds to a top-level package that will be stowed into your home directory.

## Adding New Dotfiles

To add a new tool's configuration to stow:

1. **Create the package directory** in the repo root:
   ```bash
   mkdir myapp
   ```

2. **Mirror the home directory structure** inside the package:
   ```bash
   mkdir -p myapp/.config/myapp
   ```

3. **Add your config files** to the mirrored structure:
   ```bash
   cp ~/.config/myapp/config myapp/.config/myapp/
   ```

4. **Stow the package**:
   ```bash
   stow myapp
   ```

   This creates symlinks from `~/.config/myapp/config` → `~/dotfiles/myapp/.config/myapp/config`

5. **Commit to git**:
   ```bash
   git add myapp
   git commit -m "Add myapp configuration"
   ```

**Note**: The directory structure inside each package must exactly match where the files live in your home directory. Stow preserves the full path structure.
