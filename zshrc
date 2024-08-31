export PATH=/opt/homebrew/bin:/opt/homebrew/bin:/usr/local/bin:/System/Cryptexes/App/usr/bin:/usr/bin:/bin:/usr/sbin:/sbin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/local/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/bin:/var/run/com.apple.security.cryptexd/codex.system/bootstrap/usr/appleinternal/bin:/Library/Apple/usr/bin

export PATH=$PATH:/usr/local/go/bin
export PATH="$HOME/.cargo/bin:$PATH"

# Git branch when changes present
function parse_git_dirty {
  [[ $(git status --porcelain 2> /dev/null) ]] && echo "*"
}

# Git branch when clean
function parse_git_branch {
  # Get the current branch name
  local branch=$(git branch --show-current 2> /dev/null)
  # If there's a branch, format it
  if [ -n "$branch" ]; then
    echo "($branch$(parse_git_dirty))"
  fi
}

# Function to update the prompt
function update_ps1 {
  local COLOR_DEF=$'%f'
  local COLOR_USR=$'%F{243}'
  local COLOR_DIR=$'%F{197}'
  local COLOR_GIT=$'%F{39}'

  PS1="%{$COLOR_USR%}%n %{$COLOR_DIR%}%~ %{$COLOR_GIT%}$(parse_git_branch)%{$COLOR_DEF%} \$ "
}

# Call the function to initially set the prompt
update_ps1

# Hook the function to execute before each command prompt
precmd_functions+=(update_ps1)

