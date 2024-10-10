# script to initial setup raspberry pi

# update and upgrade
sudo apt-get update
sudo apt-get upgrade

# install neovim
sudo apt-get install neovim

# install git
sudo apt-get install git

# install zsh
sudo apt-get install zsh

# install oh-my-zsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

# install tmux
sudo apt-get install tmux

# install zsh plugins
# zsh-autosuggestions
# fzf-zsh-plugin
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone --depth 1 https://github.com/unixorn/fzf-zsh-plugin.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/fzf-zsh-plugin

# install docker

# misc
sudo systemctl disable bluetooth.service
sudo systemctl disable hciuart.service
sudo systemctl disable wpa_supplicant.service


#https://www.dzombak.com/blog/2021/11/Reducing-SD-Card-Wear-on-a-Raspberry-Pi-or-Armbian-Device.html
#https://atetux.com/how-to-install-driver-hp-ink-tank-115-on-orange-pi-ubuntu-20-04
