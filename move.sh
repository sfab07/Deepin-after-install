# décompresser fichier zip et rar
cd /home/Downloads/
for f in *.zip;do unzip "$f";done
for i in *.rar; do unrar x "$i"; done

sleep 1

# déplacer fichier videos / audio et images dans leur dossier respectif

mv /home/Downloads/*.mp3 /home/Music/ 
mv /home/Downloads/*.avi /home/Videos/ 
mv /home/Downloads/*.mp4 /home/Videos/
mv /home/Downloads/*.wmv /home/Videos/
mv /home/Downloads/*.mkv /home/Videos/
mv /home/Downloads/*.pdf /home/Documents/pdf/
mv /home/Downloads/*.epub /home/Documents/epub/
mv /home/Downloads/*.txt /home/Documents/txt/

sleep 1

# supprimer fichier compresser et d'installation

rm -f *.deb *.suo *.tar.gz *.exe *.zip *.rar ~/home/Downloads
