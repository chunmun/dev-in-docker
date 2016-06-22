# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="robbyrussell"
#ZSH_THEME="agnoster"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

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
#plugins=(git, tmux)
plugins=(git)

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"
export JAVA_HOME=/usr/lib/jvm/java-8-oracle
export ANT_HOME=/usr/share/ant

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:~/packages/Telegram:~/packages/eclipse:/usr/local/gradle-2.6/bin:~/packages/pypy3-2.4.0-linux64/bin:~/.local/share/umake/web/firefox-dev:~/bin/:$JAVA_HOME/bin:$ANT_HOME/bin:~/packages/android-sdk-linux/platform-tools/:~/packages/blender:~/bin"

export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/usr/local/cuda/lib64
# export PYTHONPATH=/usr/local/lib/python3.4/dist-packages/:$PYTHONPATH

source $ZSH/oh-my-zsh.sh

# You may need to manually set your language environment
export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi
export EDITOR='vim'

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
alias xo=xdg-open
alias node=nodejs

# Random aliases
alias transfer="python3 ~/git/autotorrent/transfer.py"
alias clean="sudo rm -rf /var/lib/apt/lists/*"

# Tmux stuff
# Set correct term for tmux so solarized theme works in vim
alias tmux="TERM=screen-256color-bce tmux"
alias tm="tmux -2u"
# export TERM=screen-256color-bce

# . ~/.zshrc.corenlp

#export CUDA_ROOT=/usr/local/bin/cuda/bin

# Go stuff
#export GOPATH=$HOME/git/golangfun

# For Stanford NLP

#export CLASSPATH=$CLASSPATH:~/stanfordnlp:~/stanfordnlp/stanford-ner-2015-12-09:~/stanfordnlp/stanford-postagger-2015-12-09:~/stanfordnlp/stanford-parser-full-2015-12-09
#export STANFORD_MODELS=~/stanfordnlp/:~/stanfordnlp/stanford-postagger-2015-12-09/models:~/stanfordnlp/stanford-ner-2015-12-09/classifier

# To set the desktop window freeze
# gsettings set org.gnome.desktop.background show-desktop-icons false


#. ~/torch/install/bin/torch-activate
