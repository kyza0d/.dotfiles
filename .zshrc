# Source Powerlevel10k instant prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

[[ -f ~/.zsh/aliases/tmux.zsh ]] && source ~/.zsh/aliases/tmux.zsh

# Source all configuration files
for file in ~/.zsh/env/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

for file in ~/.zsh/plugins/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

for file in ~/.zsh/functions/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

for file in ~/.zsh/aliases/*.zsh; do
  [[ -r "$file" ]] && source "$file"
done

# Source Powerlevel10k configuration
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh
