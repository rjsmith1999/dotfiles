# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# alias for dotfile repo
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
complete -c home -w git

# alias for hub
alias git="hub"
complete -c git -w hub
