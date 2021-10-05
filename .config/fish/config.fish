# abbreviations
abbr vi 'vim'
abbr ni 'nvim'
abbr b0x 'git --git-dir=$HOME/.b0x --work-tree=$HOME'

fish_add_path $HOME/bin

# Gradle
set -gx GRADLE_USER_HOME "$HOME/.gradle"
set -gx GRADLE_HOME "$GRADLE_USER_HOME/wrapper/dists/gradle-4.6"
fish_add_path $GRADLE_HOME/bin

# Oh My Posh
oh-my-posh --init --shell fish --config ~/.config/b0x.omp.json | source
