# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
    . /etc/bashrc
fi

# User specific environment
if ! [[ "$PATH" =~ "$HOME/.local/bin:$HOME/bin:" ]]; then
    PATH="$HOME/.local/bin:$HOME/bin:$PATH"
fi
export PATH

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

# User specific aliases and functions
if [ -d ~/.bashrc.d ]; then
    for rc in ~/.bashrc.d/*; do
        if [ -f "$rc" ]; then
            . "$rc"
        fi
    done
fi
unset rc
. "$HOME/.cargo/env"

#aliases
source /home/lyann/Téléchargements/alacritty/extra/completions/alacritty.bash
alias dnfup='sudo dnf upgrade -y'
alias symf='php bin/console'
# Custom Bash Prompt
# StackOverflow reference: https://stackoverflow.com/a/35218509/3684641
# Customisation rules: https://help.ubuntu.com/community/CustomizingBashPrompt
# parse_git_branch() {
#   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
# }
# export PS1="\u@\h:\[\033[34m\]\w\[\033[32m\]\$(parse_git_branch)\[\033[00m\]$ "
