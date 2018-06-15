# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=~/.oh-my-zsh

# Add local bin
export LOCAL_HOME=~/.local
export LOCAL_BIN=$LOCAL_HOME/bin
if [[ -d $LOCAL_BIN && ! $PATH =~ $LOCAL_BIN ]]; then
    export PATH=$LOCAL_BIN:$PATH
fi

# Add pypy3 bin
# export PYPY3_HOME=(~/pypy3*)
# export PYPY3_BIN=$PYPY3_HOME/bin
# if [[ -d $PYPY3_BIN && ! $PATH =~ $PYPY3_BIN ]]; then
#     export PATH=$PYPY3_BIN:$PATH
# fi

# Add Anaconda3 bin
# export ANACONDA_BIN=~/anaconda3/bin
# if [[ -d $ANACONDA_BIN && ! $PATH =~ $ANACONDA_BIN ]]; then
#     export PATH=$ANACONDA_BIN:$PATH
# fi

# Add Spark Home
# export SPARK_HOME=/opt/spark
# export SPARK_BIN=$SPARK_HOME/bin
# if [[ -d $SPARK_BIN && ! $PATH =~ $SPARK_BIN ]]; then
#     export PATH=$SPARK_BIN:$PATH
# fi

# Set Python version to py3 and ipy3
# export PYSPARK_PYTHON=/usr/bin/python3
# export PYSPARK_DRIVER_PYTHON=/usr/bin/python3

# Use Clang3.8
# export HOST_COMPILER=clang++-3.8

# Add cuda toolkit path
# export CUDA_HOME=/usr/local/cuda
# export CUDA_BIN=$CUDA_HOME/bin
# if [[ -d $CUDA_BIN && ! $PATH =~ $CUDA_BIN ]]; then
#     export PATH=$CUDA_BIN:$PATH
# fi
# 
# export LD_LIBRARY=/usr/local/cuda/lib64
# if [[ -d $LD_LIBRARY && ! $LD_LIBRARY_PATH =~ $LD_LIBRARY ]]; then
#     export LD_LIBRARY_PATH=/usr/local/cuda/lib64:$LD_LIBRARY_PATH
# fi

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="robbyrussell"

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
plugins=(git tmux zsh-autosuggestions zsh-syntax-highlightin)

source $ZSH/oh-my-zsh.sh

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

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
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"
alias tns="tmux new-session -s base"
alias tks="tmux kill-session -t base"
alias tas="tmux attach -t base"
alias killbg="kill ${${(v)jobstates##*:*:}%=*}"
alias pyvenv3-intel="source /opt/intel/intelpython3/bin/activate root"
alias gpuon="sudo tee /proc/acpi/bbswitch <<< ON"
alias gpuoff="sudo rmmod nvidia_uvm nvidia || true && sudo tee /proc/acpi/bbswitch <<< OFF"
