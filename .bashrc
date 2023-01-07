#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

function parse_git_dirty {
  [[ $(git status 2> /dev/null | tail -n1) != "nothing to commit, working tree clean" ]] && echo "*"
}

function parse_git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e "s/* \(.*\)/(\1$(parse_git_dirty))/"
}

# Handy alias's
alias ls='ls --color=auto'
alias update='yay -Syyu --devel'
alias fastmirror="sudo reflector --verbose --country 'United States' -l 20 -p https --sort rate --save /etc/pacman.d/mirrorlist"
alias ll="ls --color=auto -l"
# Prompt
export PS1='\[\e[\033[01;34m\]\u@\h \[\e[38;5;211m\]\W\[\e[\033[38;5;48m\] $(parse_git_branch)\[\e[\033[00m\]\$ '

# Programs to run on startup
neofetch
