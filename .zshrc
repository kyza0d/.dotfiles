export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(z git sudo)

export PATH="$HOME/.local/share/bin:$PATH"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export VISUAL=nvim

alias figma="hyprctl dispatch exec /opt/figma-linux/figma-linux"

alias scan="context-scan scan"

alias ls='eza --icons=auto'
alias lz='lazygit'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'

source ~/.zshenv

export PNPM_HOME="/home/kyza/.local/share/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
