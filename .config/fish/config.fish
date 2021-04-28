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

# And xilinx files to path
set -a PATH /tools/Xilinx/Model_Composer/2020.2/bin
set -a PATH /tools/Xilinx/DocNav
set -a PATH /tools/Xilinx/Vivado/2020.2/bin
set -a PATH /tools/Xilinx/Vitis_HLS/2020.2/bin

# Add vitis paths
set -a PATH /tools/Xilinx/Vitis/2020.2/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/microblaze/lin/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/arm/lin/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/microblaze/linux_toolchain/lin64_le/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-linux-gnueabi/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/aarch32/lin/gcc-arm-none-eabi/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/aarch64/lin/aarch64-linux/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/aarch64/lin/aarch64-none/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/gnu/armr5/lin/gcc-arm-none-eabi/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/tps/lnx64/cmake-3.3.2/bin 
set -a PATH /tools/Xilinx/Vitis/2020.2/aietools/bin

# Xilinx env vars
set -x XILINX_VIVADO /tools/Xilinx/Vivado/2020.2
set -x XILINX_VITIS /tools/Xilinx/Vitis/2020.2
set -x XILINX_HLS /tools/Xilinx/Vitis_HLS/2020.2

# Install Ruby Gems to ~/.gems
export GEM_HOME="$HOME/.gems"
export PATH="$HOME/.gems/bin:$PATH"
