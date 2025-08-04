alias tmux='tmux -2'
alias ll='ls -la'
alias ls='ls --color=always'
alias v='nvim'
alias vi='nvim'
# alias bat='batcat'
alias cl='clear'
alias ct='change-theme-cli'
alias ctm='change-theme-menu'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}

function mcd () {
    mkdir -p -- "$1" &&
       cd -P -- "$1"
}
