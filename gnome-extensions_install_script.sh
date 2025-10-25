#Installation der benötigten Software
sudo dnf install gnome-tweaks
sudo dnf install -y pip3 pipx && pipx install gnome-extensions-cli

#Überprüfen, ob vorheriges command erfolgreich war
if [[ $? -eq 0 ]]
then
	#Text File in Array einlesen
	readarray -t GNOME_EXTENSIONS < ./gnome-extensions.txt

	#GNOME Extensions nach Array installieren
	for i in "${GNOME_EXTENSIONS[@]}"
	do
		echo -e "\n\033[0;33mInstalliere $i"
		gnome-extensions-cli install $i
	done
	
	#GNOME Extension "Window List" und "Background Logo" disablen
	gnome-extensions-cli disable window-list@gnome-shell-extensions.gcampax.github.com background-logo@fedorahosted.org
else
    echo -e "\033[0;31mInstallation von pipx und/oder gnome-extensions-cli hat nicht funktioniert!"
fi



