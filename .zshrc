:export ZSH="/Users/xiaoqinglin-guanliyuan/.oh-my-zsh"

ZSH_THEME="powerlevel10k/powerlevel10k"

source $ZSH/oh-my-zsh.sh

# Example aliases
alias v="nvim"
#alias ls='ls -G'
source $(dirname $(gem which colorls))/tab_complete.sh
# https://github.com/athityakumar/colorls
alias ls='colorls'
alias ll='ls -la'
alias la='ls -a'
alias lt='ls --tree'
alias hexo="./node_modules/hexo/bin/hexo"
alias pc="proxychains4"
plugins=(
	git-open
	git
	zsh-autosuggestions
	autojump
	brew
	python
)

# auto suggestions
source /usr/local/share/zsh-autosuggestions/zsh-autosuggestions.zsh
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=30'
source /usr/local/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# autojump
[[ -s /Users/xiaoqinglin-guanliyuan/.autojump/etc/profile.d/autojump.sh ]] && source /Users/xiaoqinglin-guanliyuan/.autojump/etc/profile.d/autojump.sh
autoload -U compinit && compinit -u

# fzf
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export HISTSIZE=10000000
export SAVEHIST=10000000
setopt BANG_HIST                 # Treat the '!' character specially during expansion.
setopt EXTENDED_HISTORY          # Write the history file in the ":start:elapsed;command" format.
setopt INC_APPEND_HISTORY        # Write to the history file immediately, not when the shell exits.
setopt SHARE_HISTORY             # Share history between all sessions.
setopt HIST_EXPIRE_DUPS_FIRST    # Expire duplicate entries first when trimming history.
setopt HIST_IGNORE_DUPS          # Don't record an entry that was just recorded again.
setopt HIST_IGNORE_ALL_DUPS      # Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_SPACE         # Don't record an entry starting with a space.
setopt HIST_SAVE_NO_DUPS         # Don't write duplicate entries in the history file.
setopt HIST_FIND_NO_DUPS
setopt HIST_REDUCE_BLANKS        # Remove superfluous blanks before recording entry.
setopt HIST_BEEP                 # Beep when accessing nonexistent history.

export PATH="~/.pyenv/bin:$PATH"
eval "$(pyenv init -)"
eval "$(pyenv virtualenv-init -)"

export PATH="$HOME/.npm-global/bin:$PATH"

fortune

