#!/bin/bash

choice="$(zenity --width=430 --height=410 --list --column "Choix" --checklist --title="Deepin After Install" --text " Choisissez des logiciels à intégrer non disponible dans l'Appstore!" \
    --column="Noms" --column="Descriptions"\
    FALSE RadioTrayLite "Ecouter radio web"\
    FALSE LiveUSBmultisystem "Créer clé usb multi OS"\
    FALSE ProjectLibre "Gantt organiseur de projets"\
    FALSE Gwhere "Catalogueur de fichier"\
    FALSE Zulucrypt "Cryptage de dossier"\
    FALSE Pyload "Téléchargements à distance"\
    FALSE ReFind "Interface graphique de démarrage"\
    FALSE jnettop "Surveiller traffic via terminal"\
    FALSE EyeD3 "Retagger mp3 en lignde de commande"\
    FALSE PdfTk "Modifier PDF"\
    FALSE Mencoder "Modifier vidéos"\
    FALSE Playme "Regarder videoclips Youtube"\
    FALSE MolotovTv "Regarder chaînes Molotov"\
)"

if [ "${PIPESTATUS[0]}" != "0" ]; then
   exit
fi

case "${choice}" in
    *"RadioTrayLite"* )
    echo "# Installation de Radio Tray Lite"
    wget http://ppa.launchpad.net/nilarimogard/webupd8/ubuntu/pool/main/r/radiotray-lite/radiotray-lite_0.2.18-1~webupd8~cosmic0_amd64.deb && sudo dpkg -i radiotray-lite_0.2.18-1~webupd8~cosmic0_amd64.deb && rm radiotray-lite_0.2.18-1~webupd8~cosmic0_amd64.deb
    echo "30"
    ;;
esac

case "${choice}" in
    *"LiveUSBmultisystem"* )
    echo "# Installation de LiveUSBmultisystem"
    sudo apt-get install software-properties-common && sudo apt-add-repository 'deb http://liveusb.info/multisystem/depot all main' && wget -q http://liveusb.info/multisystem/depot/multisystem.asc -O- | sudo apt-key add - && sudo apt-get update && sudo /usr/sbin/usermod -a -G adm "$SUDO_USER"
    sudo apt install -y multisystem
    echo "30"
    ;;
esac

case "${choice}" in
    *"ProjectLibre"* )
    echo "# Installation de Project Libre"
    wget https://sourceforge.net/projects/projectlibre/files/ProjectLibre/1.8/projectlibre_1.8.0-1.deb && sudo dpkg -i projectlibre_1.8.0-1.deb && rm projectlibre_1.8.0-1.deb
    echo "30"
    ;;
esac

case "${choice}" in
    *"Gwhere"* )
    echo "# Installation de Gwhere"
    sudo add-apt-repository ppa:nilarimogard/webupd8 -y
    sudo apt-get update
    sudo apt install -y gwhere
    echo "30"
    ;;
esac

case "${choice}" in
    *"Zulucrypt"* )
    echo "# Installation de Zulucrypt"
    sudo add-apt-repository ppa:hda-me/zulucrypt -y
    sudo apt-get update
    sudo apt install -y zulucrypt
    echo "30"
    ;;
esac


case "${choice}" in
    *"Pyload"* )
    echo "# Installation de Pyload"
    wget https://github.com/pyload/pyload/releases/download/v0.4.9/pyload_0.4.9_all.deb && sudo dpkg -i pyload-v0.4.9-all.deb && rm pyload-v0.4.9-all.deb
    echo "30"
    ;;
esac

case "${choice}" in
    *"ReFind"* )
    echo "# Installation de ReFind"
    sudo apt-add-repository ppa:rodsmith/refind
    sudo apt-get update
    sudo apt install -y refind
    echo "30"
    ;;
esac

case "${choice}" in
    *"Jnettop"* )
    echo "# Installation de Jnettop"
    sudo apt install -y jnettop
    echo "30"
    ;;
esac

case "${choice}" in
    *"EyeD3"* )
    echo "# Installation de EyeD3"
    sudo apt install -y eyed3
    echo "30"
    ;;
esac

case "${choice}" in
    *"PdfTk"* )
    echo "# Installation de PdfTk"
    sudo apt install -y pdftk
    echo "30"
    ;;
esac

case "${choice}" in
    *"mencoder"* )
    echo "# Installation de mencoder"
    sudo apt install -y mencoder
    echo "30"
    ;;
esac

case "${choice}" in
    *"PlayMe"* )
    echo "# Installation de Playme"
    wget -P $HOME/AppImage/ https://github.com/lamazingco/playme/releases/download/v1.0.3/playme-1.0.3-x86_64.AppImage
    echo "30"
    ;;
esac

case "${choice}" in
    *"Molotov"* )
    echo "# Installation de Molotov"
    wget -P $HOME/AppImage/ wget http://desktop-auto-upgrade.molotov.tv/linux/3.0.0/molotov.AppImage
    echo "30"
    ;;
esac
