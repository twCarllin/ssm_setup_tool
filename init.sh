#!/bin/bash

sudo cp ./.vimrc "$HOME"
sudo cp ./.tmux.conf "$HOME"

sudo apt-get update

# install silver search
sudo apt-get install silversearcher-ag

# install fzf
git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
~/.fzf/install
cp -r ./shell ~/.fzf/shell
cp -r ./.fzf.bash ~/
source ~/.fzf.bash

 #Prompt
echo 'PROMPT="%{$fg[cyan]%}%d %{$fg_bold[white]%}>> %{$reset_color%}"' >> ~/.bashrc

git config --global color.ui true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.adog "log --all --decorate --oneline --graph"

# install awscli
yes Yes | sudo apt-get install awscli

# install python2.7
yes Yes | sudo apt install python-minimal

# install pip for python2.7 & python3.6.8
yes Yes | sudo apt install python-pip

# prepare for install Vim YouCompleteMe
yes Yes | sudo apt install build-essential cmake python3-dev

# install vim plugins
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
sudo vim +PluginInstall +qall

# set up YouCompleteMe
sudo ~/.vim/bundle/YouCompleteMe/install.py --clang-completer

