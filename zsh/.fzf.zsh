# Setup fzf
# ---------
if [[ ! "$PATH" == */Users/fladson/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/Users/fladson/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/Users/fladson/.fzf/shell/completion.zsh" 2> /dev/null

# Key bindings
# ------------
source "/Users/fladson/.fzf/shell/key-bindings.zsh"
