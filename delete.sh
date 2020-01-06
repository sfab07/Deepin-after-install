choice="$(zenity --width=100 --height=360 --list --column "Choix" --checklist --title="Fichiers à supprimer" --text "                Sélectionner" \
    --column="Noms"\
    FALSE deb \
    FALSE exe \
    FALSE zip \
    FALSE rar \
    FALSE 7z \
    FALSE pdf \
    FALSE epub \
    FALSE mp3 \
    FALSE avi \
    FALSE mp4 \
    FALSE mkv \
)"

if [ "${PIPESTATUS[0]}" != "0" ]; then
   exit
fi

case "${choice}" in
    *"deb"* )
    echo "# Supression des fichiers deb"
cd ~/Downloads
rm -f *.deb 
    echo "30"
    ;;
esac

case "${choice}" in
    *"exe"* )
    echo "# Supression des fichiers exe"
cd ~/Downloads
rm -f *.exe
    echo "30"
    ;;
esac

case "${choice}" in
    *"zip"* )
    echo "# Supression des fichiers zip"
cd ~/Downloads
rm -f *.zip
    echo "30"
    ;;
esac

case "${choice}" in
    *"rar"* )
    echo "# Supression des fichiers rar"
cd ~/Downloads
rm -f *.rar 
    echo "30"
    ;;
esac

case "${choice}" in
    *"7z"* )
    echo "# Supression des fichiers 7z"
cd ~/Downloads
rm -f *.7z 
    echo "30"
    ;;
esac

case "${choice}" in
    *"pdf"* )
    echo "# Supression des fichiers pdf"
cd ~/Downloads
rm -f *.pdf
    echo "30"
    ;;
esac

case "${choice}" in
    *"epub"* )
    echo "# Supression des fichiers epub"
cd ~/Downloads
rm -f *.epub
    echo "30"
    ;;
esac

case "${choice}" in
    *"mp3"* )
    echo "# Supression des fichiers mp3"
cd ~/Downloads
rm -f *.mp3
    echo "30"
    ;;
esac

case "${choice}" in
    *"avi"* )
    echo "# Supression des fichiers avi"
cd ~/Downloads
rm -f *.avi
    echo "30"
    ;;
esac

case "${choice}" in
    *"mp4"* )
    echo "# Supression des fichiers mp4"
cd ~/Downloads
rm -f *.mp4
    echo "30"
    ;;
esac

case "${choice}" in
    *"mkv"* )
    echo "# Supression des fichiers mkv"
cd ~/Downloads
rm -f *.mkv
    echo "30"
    ;;
esac
