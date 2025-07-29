#Text File als Array einlesen
readarray -t FLATHUB_PROGRAMS < ./flathub_installs.txt

#GNOME Extensions und Tweaks installieren
flatpak install -y flathub org.gnome.Extensions 
flatpak install -y flathub gnome-tweaks

#Die Flathub Programme nach Array installieren
for i in "${FLATHUB_PROGRAMS[@]}"
do
	#echo "Installiere $i"
	echo -e "\n\033[0;33mInstalliere $i"
	flatpak install -y flathub $i
	
	#Überprüfen, ob Installation geglückt
	if [[ $? -eq 0 ]]
	then
		echo -e "\n\033[0;32m\u2714$i erfolgreich installiert!"
	else
		echo -e "\n\033[0;31m\u2717$i nicht erfolgreich installiert. Abbruch!"
	fi
	
done
