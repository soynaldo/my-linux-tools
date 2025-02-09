# Update all before
sudo apt update -y
sudo apt upgrade -y

# Install all tools
sudo apt install -y \
    git \
    curl \
    wget \
    htop \
    cowsay \
    fortune \
    neofetch \
    vim \
    jq \
    kicad

# Install snap
sudo apt install snapd

# Install snap apps
sudo snap install code --classic
sudo snap install spotify
sudo snap install discord
sudo snap install slack --classic
sudo snap install postman
sudo snap install telegram-desktop
sudo snap install vlc
sudo snap install obs-studio
sudo snap install gimp
sudo snap install inkscape
sudo snap install libreoffice
sudo snap install audacity


# Install zsh
sudo apt install zsh

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions


# Install flatpak
sudo apt install flatpak

# Add flatpak repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps
flatpak install -y flathub \
    com.stremio.Stremio


# Install ESP-IDF prerequisites
sudo apt-get install git wget flex bison gperf python3 python3-pip python3-venv cmake ninja-build ccache libffi-dev libssl-dev dfu-util libusb-1.0-0

# Install ESP-IDF
mkdir -p ~/esp
cd ~/esp
git clone -b v5.4 --recursive https://github.com/espressif/esp-idf.git
cd ~/esp/esp-idf
./install.sh all