alias tmux='tmux -2'
alias ll='ls -la'
alias ls='ls --color=always'
alias v='nvim'
alias vi='nvim'
# alias bat='batcat'

function y() {
	local tmp="$(mktemp -t "yazi-cwd.XXXXXX")" cwd
	yazi "$@" --cwd-file="$tmp"
	if cwd="$(command cat -- "$tmp")" && [ -n "$cwd" ] && [ "$cwd" != "$PWD" ]; then
		builtin cd -- "$cwd"
	fi
	rm -f -- "$tmp"
}
