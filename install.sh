#!/bin/bash
echo "installing zsh"
sudo apt install zsh -y
zsh --version
echo "installing oh-my-zsh"
sh -c "$(wget https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh -O -)"
echo "getting addons"
sudo rm -r ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/themes/powerlevel10k
sudo rm -r ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
sudo rm -r ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
echo "installing configurations"
sudo cp -f -v /tmp/zsh_installer/zshrc ~/.zshrc
sudo cp -f -v /tmp/zsh_installer/p10k.zsh ~/.p10k.zsh

echo 'POWERLEVEL9K_DISABLE_CONFIGURATION_WIZARD=true' >>! ~/.zshrc

echo "installing font"
sudo cp -f -v /tmp/zsh_installer/MesloLGS\ NF\ Regular.ttf /usr/share/consolefonts/MesloLGS\ NF\ Regular.ttf
echo "FONT='MesloLGS NF Regular.ttf'" >>! /etc/default/console-setup

echo "setting default shell to zsh"
chsh -s $(which zsh)
