# source /usr/share/cachyos-fish-config/cachyos-config.fish

if status is-interactive
    krabby random
end

starship init fish | source
atuin init fish | source

set -gx LC_CTYPE en_US.UTF-8
set -gx LC_ALL en_US.UTF-8
set -gx myname kalwabed
set -gx EDITOR nvim
set fzf_preview_file_cmd nvim

# User abbreviations
abbr -a -g ytmp3 'youtube-dl --extract-audio --audio-format mp3' # Convert/Download YT videos as mp3
abbr -a -g cls clear # Clear
abbr -a -g upd 'paru -Syu' # Update everything
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
abbr -a -g icat "kitten icat"

# pnpm alias
abbr -a -g pn pnpm
abbr -a -g pni "pnpm install"
abbr -a -g pna "pnpm add"
abbr -a -g pnad "pnpm add -D"
abbr -a -g pnu "pnpm up -Li"
abbr -a -g pnd "pnpm run dev"
