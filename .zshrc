
export EDITOR="nvim"
export TERMINAL="urxvt"

export ZSH="/home/darkhorze/.oh-my-zsh"
ZSH_THEME="pi"
source /home/darkhorze/.oh-my-zsh/plugins/sudo/sudo.plugin.zsh
source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source /home/darkhorze/.oh-my-zsh/plugins/last-working-dir/last-working-dir.plugin.zsh
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh
source $ZSH/oh-my-zsh.sh
plugins=(
  git
  web-search
  
)

lfcd () {
    tmp="$(mktemp)"
    lf -last-dir-path="$tmp" "$@"
    if [ -f "$tmp" ]; then
        dir="$(cat "$tmp")"
        rm -f "$tmp"
        [ -d "$dir" ] && [ "$dir" != "$(pwd)" ] && cd "$dir"
    fi
}
bindkey -s '^d' 'lfcd\n'


 
