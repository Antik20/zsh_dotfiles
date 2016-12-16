#
# Executes commands at the start of an interactive session.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Source Prezto.
if [[ -s "${ZDOTDIR:-$HOME}/.zprezto/init.zsh" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprezto/init.zsh"
fi

# Customize to your needs...
alias branch_current='git rev-parse --abbrev-ref HEAD'
alias branch_oldest_ancestor='/usr/bin/diff -u <(git rev-list --first-parent master) <(git rev-list --first-parent HEAD) | sed -ne "s/^ //p" | head -1'
alias branch_log='git log $(branch_oldest_ancestor)..HEAD'
alias branch_diff='git diff $(branch_oldest_ancestor)..HEAD'
alias branch_files='git diff $(branch_oldest_ancestor)..HEAD --diff-filter=ACMR --name-only --oneline'
