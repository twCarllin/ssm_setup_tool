# Setup fzf
# ---------
if [[ ! "$PATH" == */home/ssm-user/.fzf/bin* ]]; then
  export PATH="${PATH:+${PATH}:}/home/ssm-user/.fzf/bin"
fi

# Auto-completion
# ---------------
[[ $- == *i* ]] && source "/home/ssm-user/.fzf/shell/completion.bash" 2> /dev/null

# Key bindings
# ------------
source "/home/ssm-user/.fzf/shell/key-bindings.bash"
