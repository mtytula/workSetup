# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
  export ZSH="/home/marek/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Set list of themes to pick from when loading at random
# Setting this variable when ZSH_THEME=random will cause zsh to load
# a theme from this variable instead of looking in ~/.oh-my-zsh/themes/
# If set to an empty array, this variable will have no effect.
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
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
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  mage2docker
  zsh-autosuggestions
  zsh-syntax-highlighting
)

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

check_magento_excist(){
  if $(git rev-parse --is-inside-work-tree >/dev/null 2>&1 ) ; then
  MAGE2_PATH=$(git ls-tree --full-tree -r --name-only HEAD | grep 'app/etc/env.php')
  MAGE_PATH=$(git ls-tree --full-tree -r --name-only HEAD | grep 'mage.php')

  if [[ $MAGE_PATH  ]] || [[ $MAGE_PATH  ]] ; then
    echo -n '\ue740'
  else
    false
  fi
fi
}
POWERLEVEL9K_CUSTOM_MAGENTO=check_magento_excist
POWERLEVEL9K_CUSTOM_MAGENTO_BACKGROUND=none
POWERLEVEL9K_CUSTOM_MAGENTO_FOREGROUND=208
POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B1'
#POWERLEVEL9K_LEFT_SEGMENT_SEPARATOR=$'\uE0B8'

ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=6'
POWERLEVEL9K_MODE='awesome-fontconfig'
POWERLEVEL9K_DISABLE_RPROMPT=true
POWERLEVEL9K_SHORTEN_DIR_LENGTH=2
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(custom_ubuntu_icon user time dir custom_magento  vcs)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(status time)
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M:%S}"
POWERLEVEL9K_CUSTOM_UBUNTU_ICON="echo  "
POWERLEVEL9K_CUSTOM_UBUNTU_ICON_BACKGROUND=none
POWERLEVEL9K_CUSTOM_UBUNTU_ICON_FOREGROUND=208
POWERLEVEL9K_USER_DEFAULT_BACKGROUND=none
POWERLEVEL9K_USER_DEFAULT_FOREGROUND=208
POWERLEVEL9K_TIME_BACKGROUND=none
POWERLEVEL9K_TIME_FOREGROUND=015
POWERLEVEL9K_DIR_HOME_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_FOREGROUND=015
POWERLEVEL9K_DIR_ETC_BACKGROUND=none
POWERLEVEL9K_DIR_ETC_FOREGROUND=015
POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND=none
POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND=015
POWERLEVEL9K_DIR_DEFAULT_BACKGROUND=none
POWERLEVEL9K_DIR_DEFAULT_FOREGROUND=015
POWERLEVEL9K_DIR_PATH_SEPARATOR_FOREGROUND=214
#POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_BRANCH_ICON=$'\uF126 '
POWERLEVEL9K_VCS_FOREGROUND=015
POWERLEVEL9K_VCS_BACKGROUND=none

POWERLEVEL9K_VCS_CLEAN_FOREGROUND=028
POWERLEVEL9K_VCS_MODIFIED_FOREGROUND=227
POWERLEVEL9K_VCS_CLOBBERED_FOREGROUND=015
POWERLEVEL9K_VCS_UNTRACKED_FOREGROUND=229
POWERLEVEL9K_VCS_CLEAN_BACKGROUND=none
POWERLEVEL9K_VCS_MODIFIED_BACKGROUND=none
POWERLEVEL9K_VCS_CLOBBERED_BACKGROUND=none
POWERLEVEL9K_VCS_UNTRACKED_BACKGROUND=none


#Docker aliases
alias dcs="docker-compose stop"
alias dcup="docker-compose up -d"
alias dcu="docker-compose up"
alias dcr="docker-compose restart"
