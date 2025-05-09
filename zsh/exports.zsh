if [[ -n "$SSH_CONNECTION" ]]; then
  export EDITOR="vim"
else
  export EDITOR="nvim"
fi
export KUBE_EDITOR="nvim"
export TERM=xterm-256color
export GNUPGHOME="$HOME/.private/.gpg"
