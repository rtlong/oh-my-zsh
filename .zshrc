# Path to your oh-my-zsh configuration.
ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
ZSH_THEME="rtlong"

# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# Set to this to use case-sensitive completion
# CASE_SENSITIVE="true"

# Comment this out to disable weekly auto-update checks
# DISABLE_AUTO_UPDATE="true"

# Uncomment following line if you want to disable colors in ls
# DISABLE_LS_COLORS="true"

# Uncomment following line if you want to disable autosetting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment following line if you want red dots to be displayed while waiting for completion
COMPLETION_WAITING_DOTS="true"

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(
  git
  git-flow
  rails3
  rake
  knife
  redis-cli
  rvm
  heroku
  vagrant
  sublime
  command-not-found
  debian
  bundler
)
disabled_plugins=(
)

source $ZSH/oh-my-zsh.sh

unsetopt correct_all

# Customize to your needs...

# Include the /bin/ folder from ~/.local, where software may be installed
if [ -d "$HOME/.local/bin" ] ; then
  export PATH="$HOME/.local/bin:$PATH"
fi

# set PATH so it includes user's private ~/[.]bin/ if it exists
if [ -d "$HOME/bin" ] ; then
  export PATH="$HOME/bin:$PATH"
fi
if [ -d "$HOME/.bin" ] ; then
  export PATH="$HOME/.bin:$PATH"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# Set the bluetooth radio address of my Wii Remote. Used by wminput
export WIIMOTE_BADDR="00:1E:35:3F:0F:7E"
export JRUBY_OPTS='--1.9 -J-Dfile.encoding=utf8'
export PYTHONSTARTUP="$HOME/.pythonrc"
export STATSMIX_API_KEY="25cd6dfd2213c0e32bb8"

export EDITOR="/home/ryan/.bin/sublime_text -w"





[[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"
