#!/bin/bash

sudo cp ./.vimrc $HOME
sudo cp ./.tmux.conf $HOME

sudo apt-get update
sudo apt-get install fzf
sudo apt-get install the_silver_searcher

git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/vundle
sudo vim +PluginInstall +qall

 #Prompt
 echo 'PROMPT="%{$fg[cyan]%}%d $(git_prompt_info)
 %{$fg_bold[white]%}>> %{$reset_color%}"' >> ~/.bashrc

git config --global color.ui true
git config --global alias.co checkout
git config --global alias.ci commit
git config --global alias.st status
git config --global alias.br branch
git config --global alias.adog "log --all --decorate --oneline --graph"

sudo apt-get install awscli
