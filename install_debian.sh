
#!/bin/bash
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install git curl zsh neovim progress tmux
# zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

mkdir -p ~/workspace/repos
cd ~/workspace/repos
git clone https://github.com/rivkadedic/dotfiles

# setup nvim and vundle
mkdir -p ~/.config/nvim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.config/nvim/bundle/Vundle.vim
ln -sv ~/workspace/repos/dotfiles/nvim/init.vim ~/.config/nvim/init.vim
nvim +PluginInstaller +qall
# tmux
ln -sv ~/workspace/repos/dotfiles/.tmux.conf ~/.tmux.conf


