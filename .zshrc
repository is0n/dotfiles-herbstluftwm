# pidswallow
xdotool getwindowfocus > /tmp/term-wid-"$$"
trap "(rm -f /tmp/term-wid-"$$")" EXIT HUP

# rice?
colorblocks

# Personal Settings & Vi Mode
autoload -U compinit; compinit
source ~/.config/shell/zsh-prompt-minimal
source ~/.config/shell/shortcuts
source ~/.config/shell/zsh-vi-mode

# Options For History
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.cache/zsh/history

# ZSH Plugins
[ -f ~/.config/shell/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh ] && source ~/.config/shell/zsh-syntax-highlighting/zsh-syntax-highlighting.plugin.zsh
[ -f ~/.config/shell/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh ] && source ~/.config/shell/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh

# Zoxide
eval "$(zoxide init zsh)"
