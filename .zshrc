export ZSH="$HOME/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(z git sudo)

export PATH="$HOME/.local/share/bin:$PATH"

source ~/.zsh/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/oh-my-zsh.sh

export EDITOR=nvim
export VISUAL=nvim


alias scan="context-scan scan"

export EZA_ICON_SPACING=2

alias ls='eza --icons=auto'
alias .='yazi'
alias lz='lazygit'
alias ll='eza -lha --icons=auto --sort=name --group-directories-first'
alias ld='eza -lhD --icons=auto'
alias lt='eza --icons=auto --tree'

alias .nv="cd ~/.config/nvim && eza -lha --icons=auto --sort=name --group-directories-first"


source ~/.zshenv

export PNPM_HOME="/home/kyza/.local/share/pnpm"

case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac

# pnpm
export PNPM_HOME="/home/kyza/.local/share/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end

# Created by `pipx` on 2025-05-22 18:51:04
export PATH="$PATH:/home/kyza/.local/bin"
