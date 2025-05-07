# 🛠️ Instalador de Herramientas Esenciales

Este script automatiza la instalación de un conjunto de herramientas comunes que utilizo en entornos de desarrollo sobre sistemas basados en **Ubuntu/Debian**. Incluye aplicaciones desde APT, Snap, Flatpak y configuración de entorno ZSH con *oh-my-zsh* y plugins.

---

## 📋 Requisitos Previos

Antes de ejecutar este script, asegúrate de:

- Estar utilizando una distribución basada en **Ubuntu/Debian**
- Tener privilegios de **sudo**
- Tener conexión a Internet

---

## 🚀 Instalación

Puedes clonar este repositorio y ejecutar el script de la siguiente manera:

```bash
git clone https://github.com/soynaldo/my-linux-tools.git
cd my-linux-tools
chmod +x my-linux-tools.sh
./my-linux-tools.sh
```


Tambien puedes clonarlo y ejecutarlo directamente ejecutando:

```bash
sudo apt install curl
sh -c "$(curl -fsSL https://raw.githubusercontent.com/soynaldo/my-linux-tools/master/linux_tools.sh)"
```

---


## 🧰 ¿Qué instala este script?

### 🔄 Actualización del sistema
- Actualiza la lista de paquetes y el sistema con `apt update` y `upgrade`.

### 📦 Herramientas vía APT
- `git`, `curl`, `wget`, `htop`, `cowsay`, `fortune`, `neofetch`, `vim`, `jq`, `kicad`, `zsh`

### 🐚 ZSH + Oh-My-Zsh
- Instala ZSH
- Instala **Oh-My-Zsh**
- Añade los plugins:
  - `zsh-autosuggestions`
  - `zsh-syntax-highlighting`
  - `zsh-completions`

### 📦 Aplicaciones vía Snap
- Visual Studio Code
- Spotify
- Discord
- Slack
- Postman
- Telegram Desktop
- VLC
- OBS Studio
- GIMP
- Inkscape
- LibreOffice
- Audacity

### 📦 Aplicaciones vía Flatpak
- Añade el repositorio **Flathub**
- Instala **Stremio**

### 🧠 Herramientas para desarrollo ESP-IDF
- Instala dependencias necesarias
- Clona e instala **ESP-IDF v5.4**

---

## 📝 Notas

- El script está diseñado para ejecutarse todo de una vez. Puedes editarlo si quieres instalar solo partes específicas.
- El instalador de Oh-My-Zsh cambiará tu shell por defecto a ZSH. Puedes volver a Bash ejecutando `chsh -s /bin/bash`.

---

## 📄 Licencia

[MIT](LICENSE) — Puedes modificar y usar este script como gustes.