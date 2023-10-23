# zsh_installer
This Repository holds a script and config files to install zsh with addons and my preferred configurations to a ubuntu system.

In detail the script installs the following:
- zsh
- powerlevel10k theme
- zsh-autosuggestions
- zsh-syntax-highlighting
- preferences for a rainbow style and a german keyboard

You can use this script to have a one liner to install zsh on your favorite linux system. 
If you want to you can configure the system again by using this command:
```
p10k configure
```

## prequesites

git needs to be installed to download this repository. You can install git with this command
```
sudo apt-get install git-all
```

## install with one merged command

```
rm -r /tmp/zsh_installer; git clone https://github.com/lukas-czy/zsh_installer.git /tmp/zsh_installer; chmod u+x /tmp/zsh_installer/install_zsh.sh; /tmp/zsh_installer/./install_zsh.sh; rm -r /tmp/zsh_installer
```

## install with a step by step command guide

1. clone this repository:
```
git clone https://github.com/lukas-czy/zsh_installer.git /tmp/zsh_installer
```
2. give the skripts the rights to execute
```
chmod u+x /tmp/zsh_installer/install_zsh.sh
```
3. run the script
```
/tmp/zsh_installer/./install_zsh.sh
```
4. remove the cloned install script / clean up
```
rm -r /tmp/zsh_installer
```

## uninstall

to uninstall zsh use this command:
```
sudo apt-get --purge remove zsh
```

## Helpers

to manually configure the zsh design / p10k use this command:
```
p10k configure
```
