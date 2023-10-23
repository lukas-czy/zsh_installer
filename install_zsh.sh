#!/bin/bash
sudo apt install zsh -y
zsh --version
chsh -s $(which zsh)
sudo apt-get install git-all -y
# get all addons
sh -c "$(wget https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
# put the config files in the correct places
cp ./zshrc ~/.zshrc
cp ./p10k.zsh ~/.p10k.zsh
#start zsh
zsh  
