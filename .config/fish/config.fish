# abbreviations
abbr vi 'vim'
abbr ni 'nvim'
abbr b0x 'git --git-dir=$HOME/.b0x --work-tree=$HOME'

# Gradle
set -gx GRADLE_USER_HOME "$HOME/.gradle"
set -gx GRADLE_HOME "$GRADLE_USER_HOME/wrapper/dists/gradle-4.6"
contains $GRADLE_HOME/bin $fish_user_paths; or set -Ua fish_user_paths $GRADLE_HOME/bin

# Oh My Posh
oh-my-posh --init --shell fish --config ~/.config/b0x.omp.json | source
