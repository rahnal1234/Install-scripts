echo "alias ..='cd ..'
alias ll='ls -l'
alias update='sudo dnf -y update && sudo dnf -y upgrade'
alias la='ls -la'" >> ~/.bashrc

source ~/.bashrc

if [[ $? -eq 0 ]]
        then
            	echo -e "\n\033[0;32m\u2714Aliase erfolgreich gesetzt!"
        else
            	echo -e "\n\033[0;31m\u2717Aliase nicht erfolgreich gesetzt. Abbruch!"
        fi


