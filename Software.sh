#!/bin/bash

choice="$(zenity --width=400 --height=275 --list --column "Choix" --checklist --title="Deepin After Install" --text " Choisissez des logiciels à intégrer non disponible dans l'Appstore!" \
    --column="Noms" --column="Descriptions"\
    FALSE RadioTrayLite "Ecouter radio web"\
    FALSE LiveUSBmultisystem "Créer clé usb multi OS"\
    FALSE ProjectLibre "Gantt organiseur de projets"\
    FALSE Gwhere "Catalogueur de fichier"\
    FALSE Zulucrypt "Cryptage de dossier"\
    FALSE Pyload "Téléchargements à distance"\
    FALSE ReFind "Interface graphique de démarrage"\
)"

if [ "${PIPESTATUS[0]}" != "0" ]; then
   exit
fi

case "${choice}" in
    *"RadioTrayLite"* )
    echo "# Installation de Radio Tray Lite"
   killall update-manager
sudo add-apt-repository ppa:nilarimogard/webupd8
    gksudo "aptitude install -y radiotray-lite"
    echo "30"
    ;;
esac

case "${choice}" in
    *"LiveUSBmultisystem"* )
    echo "# Installation de LiveUSBmultisystem"
   killall update-manager
sudo apt-get install software-properties-common && sudo apt-add-repository 'deb http://liveusb.info/multisystem/depot all main' && wget -q http://liveusb.info/multisystem/depot/multisystem.asc -O- | sudo apt-key add - && sudo apt-get update && sudo /usr/sbin/usermod -a -G adm "$SUDO_USER"
    gksudo "aptitude install -y multisystem"
    echo "30"
    ;;
esac

case "${choice}" in
    *"ProjectLibre"* )
    echo "# Installation de Proect Libre"
   killall update-manager
wget https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.8/projectlibre_1.8.0-1.deb && sudo dpkg -i projectlibre_1.8.0-1.deb && rm projectlibre_1.8.0-1.deb
    echo "30"
    ;;
esac

case "${choice}" in
    *"Gwhere"* )
    echo "# Installation de Gwhere"
   killall update-manager
sudo add-apt-repository ppa:nilarimogard/webupd8 -y
sudo apt-get update
    gksudo "aptitude install -y gwhere"
    echo "30"
    ;;
esac

case "${choice}" in
    *"Truecrypt"* )
    echo "# Installation de Truecrypt"
   killall update-manager
sudo add-apt-repository ppa:hda-me/zulucrypt -y
sudo apt-get update
    gksudo "aptitude install -y zulucrypt"
    echo "30"
    ;;
esac


case "${choice}" in
    *"Pyload"* )
    echo "# Installation de Pyload"
   killall update-manager
wget https://github.com/pyload/pyload/releases/download/v0.4.9/pyload_0.4.9_all.deb && sudo dpkg -i pyload-v0.4.9-all.deb && rm pyload-v0.4.9-all.deb
    echo "30"
    ;;
esac

case "${choice}" in
    *"ReFind"* )
    echo "# Installation de ReFind"
   killall update-manager
sudo apt-add-repository ppa:rodsmith/refind
sudo apt-get update
    gksudo "aptitude install -y refind"
    echo "30"
    ;;
esac
