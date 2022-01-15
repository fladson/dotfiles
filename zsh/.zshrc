zstyle ':z4h:' start-tmux       'no'
zstyle ':z4h:' auto-update      'no'
zstyle ':z4h:' prompt-at-bottom 'no'
zstyle ':z4h:bindkey' keyboard  'mac'
zstyle ':z4h:' term-shell-integration 'yes'
zstyle ':z4h:autosuggestions' forward-char 'accept'
zstyle ':z4h:fzf-complete' recurse-dirs 'no'
zstyle ':z4h:direnv' enable 'no'
zstyle ':z4h:ssh:*' enable 'no'
zstyle ':z4h:ssh:*' send-extra-files '~/.env.zsh'

z4h init || return

path=(~/bin $path)

export GPG_TTY=$TTY
export EDITOR='nvim'
export VISUAL='nvim'
export LC_ALL='en_US.UTF-8'
export BAT_THEME='base16'
export FZF_DEFAULT_OPTS='--reverse --multi'
export KITTY_DEVELOP_FROM='/Users/fladson/Dev/kitty'

# Prompt overrides
# Some git colors cannot be controled by exports.
# TODO: List the needed changes here.
export POWERLEVEL9K_MULTILINE_FIRST_PROMPT_PREFIX=' '
export POWERLEVEL9K_PROMPT_CHAR_OK_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=5
export POWERLEVEL9K_PROMPT_CHAR_ERROR_{VIINS,VICMD,VIVIS,VIOWR}_FOREGROUND=1
export POWERLEVEL9K_PROMPT_CHAR_{OK,ERROR}_VIINS_CONTENT_EXPANSION=' %Bƒ'
export POWERLEVEL9K_DIR_FOREGROUND=8
export POWERLEVEL9K_DIR_SHORTENED_FOREGROUND=8
export POWERLEVEL9K_DIR_ANCHOR_FOREGROUND=7
export POWERLEVEL9K_VCS_BRANCH_ICON='\uF126 '
export POWERLEVEL9K_ASDF_RUBY_FOREGROUND=1

# Source additional local files if they exist.
z4h source ~/.config/shell/local
z4h source ~/.config/shell/aliasrc
z4h source ~/.config/fzf/tomorrow-night.config

# Autoload functions.
autoload -Uz zmv

# Define functions and completions.
function md() { [[ $# == 1 ]] && mkdir -p -- "$1" && cd -- "$1" }
compdef _directories md

# Set shell options: http://zsh.sourceforge.net/Doc/Release/Options.html.
setopt glob_dots     # no special treatment for file names with a leading dot
setopt no_auto_menu  # require an extra TAB press to open the completion menu

# homebrew autocompletions
if type brew &>/dev/null
then
  FPATH="$(brew --prefix)/share/zsh/site-functions:${FPATH}"
  autoload -Uz compinit
  compinit
fi

. /opt/homebrew/opt/asdf/libexec/asdf.sh
eval "$(lua /opt/homebrew/Cellar/z.lua/1.8.13/share/z.lua/z.lua --init zsh)"