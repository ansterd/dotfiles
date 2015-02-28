# Path to your oh-my-zsh installation.
export ZSH=/Users/1002471/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git fasd)

# User configuration

## Custom Configuration
### alias sugar
alias vh='sudo vim /etc/hosts'
alias vt='vi ~/.tmux.conf'
alias vz='vi ~/.zshrc'
alias vv='vi ~/.vimrc'
alias vg='vi ~/.gitconfig'
alias vs='vi ~/.ssh/config'

alias gog='cd ~/github'
alias goe='cd ~/.emacs.d'
alias gow='cd ~/Workspace'
alias god='cd ~/Dropbox'
alias godl='cd ~/Downloads'
alias gob='cd ~/Dropbox/Blog'
alias got='cd ~/Dropbox/dotfiles'
alias cdp='git rev-parse && cd "$(git rev-parse --show-cdup)"'

### fasd
alias a='fasd -a'        # any
alias s='fasd -si'       # show / search / select
alias d='fasd -d'        # directory
alias f='fasd -f'        # file
alias sd='fasd -sid'     # interactive directory selection
alias sf='fasd -sif'     # interactive file selection
alias z='fasd_cd -d'     # cd, same functionality as j in autojump
alias zz='fasd_cd -d -i' # cd with interactive selection

alias gnp="git --no-pager"

alias me='whoami'
alias today='date'

alias dir='nautilus .'

alias tm="tmux"
alias tma='tmux a -t'
alias tmn="tmux new"
alias tmk='tmux kill-session -t'

alias rm='echo "Use trash-cli to remove files instead of rm." false'
alias rmdir='echo "Use trash-cli to remove files instead of rmdir." false'
alias tp='trash-put'
alias tl='trash-list'


alias zsh-count="cut -f2 -d';' $HOME/.zsh_history | sort | uniq -c | sort -nr | head -n 30"

alias hs="history | grep -i $1"

alias svi='sudo vi'
alias smv='sudo mv'
alias service='sudo service'

alias apt-get='sudo apt-get'
alias apt-update='apt-get update'
alias apt-upgrade='apt-get upgrade'
alias apt-dist-upgrade='apt-get dist-upgrade'

alias disk-usage='du -h | sort -h | tail -n 1000'
alias xc="xclip -selection clipboard"
alias fpp='sudo lsof -iTCP -sTCP:LISTEN -n -P'
alias psef="ps -ef | grep"
alias psp="ps -ef | peco"

### tree

alias tree="tree -C"

### git
alias plom="git pull origin master"
alias plod="git pull origin dev"
alias psom="git push oritin master"
alias psod="git push oritin dev"

### ssh
alias skp-ssh="ssh -i ~/.ssh/key-1ambda.pem ubuntu@175.126.56.190"

export PATH="/usr/local/bin:/usr/bin:/bin:/usr/sbin:/sbin"
# export MANPATH="/usr/local/man:$MANPATH"

### PATH
export JAVA_HOME=/Library/Java/JavaVirtualMachines/jdk1.8.0_31.jdk/Contents/Home
export PATH=$PATH:~/Applications/maven-3.2.5/bin
export PATH=$PATH:~/Applications/gradle-2.3/bin
export PATH=$PATH:~/Library/Python/2.7/bin
export PATH=$PATH:$HOME/.cask/bin


source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
