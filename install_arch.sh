
#!/bin/bash

sudo pacman -Syu
# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
# general
sudo pacman -S chromium fzf neovim progress tmux
# arch specific
sudo pacman -S yaourt
# aur packages
yaourt -Syu
yaourt -S gitkraken

mkdir -p ~/workspace/repos
cd ~/workspace/repos
git clone https://github.com/rivkadedic/dotfiles

# setup nvim and vundle
mkdir -p ~/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
ln -sv ~/workspace/repos/dotfiles/nvim/init.vim ~/.config/nvim/init.vim

# tmux
ln -sv ~/workspace/repos/dotfiles/.tmux.conf ~/.tmux.conf



# other customizations
# key speed and delay
# remap capslock to ctrl

