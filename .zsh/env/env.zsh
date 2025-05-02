# ~/.zsh/env/env.zsh

export ZSH=/usr/share/oh-my-zsh/
export PNPM_HOME="/home/kyza/.local/share/pnpm"
export FLYCTL_INSTALL="/home/kyza/.fly"
export DOCKER_HOST=unix:///run/docker.sock

# Update PATH
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

export PATH="$FLYCTL_INSTALL/bin:$PATH"
export PATH="$HOME/.local/bin:$PATH"
