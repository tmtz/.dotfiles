[ -f ~/.fzf.bash ] && source ~/.fzf.bash
alias v=nvim
alias mvim='open -a MacVim'
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
source "$HOME/.cargo/env"
