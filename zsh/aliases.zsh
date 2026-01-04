alias cat='bat'
alias man='tldr'
alias rcat='\cat'
alias lg="lazygit"
alias ldo="lazydocker"
alias ls='eza $eza_params'
alias l='eza --git-ignore $eza_params'
alias ll='eza --all --header --long $eza_params'
alias llm='eza --all --header --long --sort=modified $eza_params'
alias la='eza -lbhHigUmuSa'
alias lx='eza -lbhHigUmuSa@'
alias lt='eza --tree $eza_params'
alias cd="z"
alias p="python3"
alias g="git"
alias d="docker"
alias dc="docker compose"
alias dcu="docker compose up -d"
alias dcb="docker compose build"
alias dcd="docker compose down"
alias dps='docker ps --format "{{.ID}}  {{.Names}}"'
function dsh() {
  if [ -n "$1" ]; then
    docker exec -it "$1" /bin/bash
  else
    echo "Usage: dsh <container-id>"
    return 1
  fi
}

function fuck() {
  if [ -n "$1" ]; then
    killall -9 $1
  else
    echo "Usage: fuck <application>"
    return 1
  fi
}

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	IFS= read -r -d '' cwd < "$tmp"
	[ -n "$cwd" ] && [ "$cwd" != "$PWD" ] && builtin cd -- "$cwd"
	rm -f -- "$tmp"
}

function bak() {
  if [ -n "$1" ]; then
    cp $1 $1.bak
  else
    echo "Usage: bak <file>"
    return 1
  fi
}

alias rm="rm -i"
alias cp='cp -i'
alias mv='mv -i'
alias ln='ln -i'
alias vi="nvim"
alias chown='chown --preserve-root'
alias chmod='chmod --preserve-root'
alias chgrp='chgrp --preserve-root'
alias diocan="clear"
alias sudoedit="doas nvim"
eval "$(zoxide init zsh)"
