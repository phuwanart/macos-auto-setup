# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Source .sh files in .zsh.d
for config_file in ~/.zsh.d/*.sh; do
  [ -r "$config_file" ] && source "$config_file"
done

# Customize to your needs...

eval "$(mise activate zsh)"

eval "$(starship init zsh)"

# The following lines have been added by Docker Desktop to enable Docker CLI completions.
fpath=(/Users/phuwanart/.docker/completions $fpath)
autoload -Uz compinit
compinit
# End of Docker CLI completions
