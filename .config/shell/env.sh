# PATH
export PATH="$PATH:$HOME/.yarn/bin"

export PATH="$HOME/bin:$PATH"
export PATH="$HOME/scripts:$PATH"

export PATH="bin:$PATH"
export PATH="scripts:$PATH"

# SSH
export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"

# Apps
export EDITOR=vim
export VISUAL=vim
export SUDO_EDITOR=vim
export BROWSER=brave

# Starship
export STARSHIP_CONFIG="$HOME/.config/starship/starship.toml"

# Man
export MANPAGER="sh -c 'col -bx | bat -l man -p'"
