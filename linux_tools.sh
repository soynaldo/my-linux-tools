# Update all before
sudo apt update -y
sudo apt upgrade -y

# Install all tools
sudo xargs -a manual_installed.txt sudo apt install -y

# Install snap apps
sudo snap install code --classic
sudo snap install discord
sudo snap install telegram-desktop
sudo snap install vlc
sudo snap install obs-studio

# Install VS code extensions
xargs -n 1 code --install-extension < vscode-extensions.txt

# Install oh-my-zsh
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# Install zsh plugins
git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions


# Add flatpak repository
flatpak remote-add --if-not-exists flathub https://dl.flathub.org/repo/flathub.flatpakrepo

# Install flatpak apps
flatpak install -y flathub \
    com.stremio.Stremio

# Install ESP-IDF
mkdir -p ~/esp
cd ~/esp
git clone -b v5.4 --recursive https://github.com/espressif/esp-idf.git
cd ~/esp/esp-idf
./install.sh all
