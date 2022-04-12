# Bootstrap

# Run this after install:

# curl -L https://git.io/fisher | source
# fisher install jorgebucaran/fisher
# fisher install jorgebucaran/autopair.fish
# fisher install franciscolourenco/done

# ============================================================================
# Common

# Alias'

source "$HOME/.config/shell/alias.sh"

# Environment

source "$HOME/.config/shell/env.sh"

# WSL

if set -q WSL_DISTRO_NAME
  export DISPLAY=(ip route | awk '/^default/{print $3; exit}'):0.0
  source "$HOME/.config/shell/wsl.sh"
end

# ============================================================================
# External

# Remove intrinsic prompt
set fish_greeting

if status --is-interactive
  if not set -q WSL_DISTRO_NAME
    neofetch
  end

  starship init fish | source
  zoxide init fish --hook pwd | source
  # cod init $fish_pid fish | source
  # mcfly init fish | source
  # thefuck --alias | source

  # fish_vi_cursor
  # fish_vi_key_bindings

  set -x TTY (tty)
  set -x GPG_TTY (tty)
end

# ============================================================================
# User

source $HOME/.config/fish/user/*
