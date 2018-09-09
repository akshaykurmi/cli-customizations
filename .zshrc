plugins=(
  git
  zsh-autosuggestions
)

# History config
export HISTCONTROL=ignoreboth
export HISTORY_IGNORE='(incognito *)'
function incognito() {
  case $@ in
    start ) unset HISTFILE ;;
    stop ) export HISTFILE="$HOME/.zsh_history";;
  esac
}