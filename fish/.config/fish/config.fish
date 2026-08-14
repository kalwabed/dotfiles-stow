# source /usr/share/cachyos-fish-config/cachyos-config.fish

fish_add_path /opt/homebrew/bin/

if status is-interactive
    # eval (zellij setup --generate-auto-start fish | string collect)
    krabby random
    atuin init fish | source
end

starship init fish | source
# Setup brew
eval "$(/opt/homebrew/bin/brew shellenv)"
set -gx HOMEBREW_NO_REQUIRE_TAP_TRUST 1

set fish_greeting ""
set -gx LC_CTYPE en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx myname kalwabed
set -gx EDITOR nvim
set fzf_preview_file_cmd nvim
set -g fish_key_bindings fish_vi_key_bindings
alias docker=podman

# Format man pages
set -x MANROFFOPT -c
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

# Set settings for https://github.com/franciscolourenco/done
set -U __done_min_cmd_duration 10000
set -U __done_notification_urgency_level low

## Enable Wayland support for different applications
if [ "$XDG_SESSION_TYPE" = wayland ]
    set -gx WAYLAND 1
    set -gx QT_QPA_PLATFORM 'wayland;xcb'
    set -gx GDK_BACKEND 'wayland,x11'
    set -gx MOZ_DBUS_REMOTE 1
    set -gx MOZ_ENABLE_WAYLAND 1
    set -gx _JAVA_AWT_WM_NONREPARENTING 1
    set -gx BEMENU_BACKEND wayland
    set -gx CLUTTER_BACKEND wayland
    set -gx ECORE_EVAS_ENGINE wayland_egl
    set -gx ELM_ENGINE wayland_egl
end

# User abbreviations
abbr -a -g ytmp3 'yt-dlp -x' # Convert/Download YT videos as mp3
abbr -a -g cls clear # Clear
abbr -a -g update 'brew upgrade' # Update everything
abbr -a -g sayonara 'shutdown now' # Epic way to shutdown
abbr -a -g shinei 'kill -9' # Kill ala DIO
abbr -a -g priv 'fish --private' # Fish incognito mode
abbr -a -g sshon 'sudo systemctl start sshd.service' # Start ssh service
abbr -a -g sshoff 'sudo systemctl stop sshd.service' # Stop ssh service
abbr -a -g untar 'tar -zxvf' # Untar
abbr -a -g genpass 'openssl rand -base64 20' # Generate a random, 20-charactered password
abbr -a -g sha 'shasum -a 256' # Test checksum
abbr -a -g cn 'ping -c 5 8.8.8.8' # Ping google, checking network
abbr -a -g ipe 'curl ifconfig.co' # Get external IP address
abbr -a -g ips 'ip link show' # Get network interfaces information
abbr -a -g wloff 'rfkill block wlan' # Block wlan, killing wifi connection
abbr -a -g wlon 'rfkill unblock wlan' # Unblock wlan, start wifi connection
abbr -a -g ff firefox
abbr -a -g l 'eza -lh  --icons=auto' # long list
abbr -a -g ls 'eza -1   --icons=auto' # short list
abbr -a -g ll 'eza -lha --icons=auto --sort=name --group-directories-first' # long list all
abbr -a -g ld 'eza -lhD --icons=auto' # long list dirs
abbr -a -g vc 'code --disable-gpu' # gui code editor
abbr -a -g yy yazi
abbr -a -g cl clear
abbr -a -g find fd
abbr -a -g cat bat
abbr -a -g hx helix
abbr -a -g top btop
abbr -a -g lg lazygit
abbr -a -g jctl "journalctl -p 3 -xb"
abbr -a -g nv nvim
abbr -a -g gpp "git pull -p"
abbr -a -g gms "git pull -p && git pull origin master"
abbr -a -g oc opencode

# pnpm
set -gx PNPM_HOME /Users/khawarizm/Library/pnpm
if not string match -q -- "$PNPM_HOME/bin" $PATH
    set -gx PATH "$PNPM_HOME/bin" $PATH
end
# pnpm end

# Added by Antigravity
fish_add_path /Users/khawarizm/.antigravity/antigravity/bin

# Created by `pipx` on 2026-02-08 01:05:04
set PATH $PATH /Users/khawarizm/.local/bin

# Added by Antigravity
fish_add_path /Users/khawarizm/.antigravity/antigravity/bin

# Added by Antigravity IDE
fish_add_path /Users/khawarizm/.antigravity-ide/antigravity-ide/bin

# pi 9router
set -Ux ROUTER_API_KEY sk-85c22e4d5b9c9f78-w4o6dp-6ac445fb
set -Ux ROUTER_API_BASE "http://172.27.240.12:20128/v1"
