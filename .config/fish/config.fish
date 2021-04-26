# Path to Oh My Fish install.
set -q XDG_DATA_HOME
  and set -gx OMF_PATH "$XDG_DATA_HOME/omf"
  or set -gx OMF_PATH "$HOME/.local/share/omf"

# Load Oh My Fish configuration.
source $OMF_PATH/init.fish

# alias for hub
alias git="hub"
#TODO: Add hub completions to git completions?

# alias for dotfile repo
alias home="git --work-tree=$HOME --git-dir=$HOME/.files.git"
complete -c home -w git

# Ubuntu xclip alias
if command -sq xclip
  alias pbcopy='xclip -selection clipboard'
  alias pbpaste='xclip -out -selection clipboard'
end

# Install Ruby Gems to ~/.gems
export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"
