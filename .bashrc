# ============================================================================
# Common

# Alias'

source "$HOME/.config/shell/alias.sh"

# Environment

source "$HOME/.config/shell/env.sh"

# WSL

if [[ "$WSL_DISTRO_NAME" ]]; then
  export DISPLAY="$(ip route | awk '/^default/{print $3; exit}'):0.0"
  source "$HOME/.config/shell/wsl.sh"
fi;

# ============================================================================
# External

if [[ $- == *i* ]]; then
  eval "$(starship init bash)";
  eval "$(zoxide init bash --hook pwd)";

  export TTY="$(tty)";
  export GPG_TTY="$(tty)";
fi;
