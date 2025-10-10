# Source .sh files in .zsh.d

for config_file in ~/.zsh.d/*.sh; do
  [ -r "$config_file" ] && source "$config_file"
done

# Customize to your needs...

export RUBYOPT="-r$HOME/.rubyopenssl_default_store.rb $RUBYOPT"
eval "$(mise activate zsh)"
