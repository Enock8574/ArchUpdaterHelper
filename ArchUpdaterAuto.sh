!/bin/bash
echo "
 ▄▄▄       ██▀███   ▄████▄   ██░ ██  █    ██  ██▓███  ▓█████▄  ▄▄▄     ▄▄▄█████▓▓█████  ██▀███   ██░ ██ ▓█████  ██▓     ██▓███  ▓█████  ██▀███  
▒████▄    ▓██ ▒ ██▒▒██▀ ▀█  ▓██░ ██▒ ██  ▓██▒▓██░  ██▒▒██▀ ██▌▒████▄   ▓  ██▒ ▓▒▓█   ▀ ▓██ ▒ ██▒▓██░ ██▒▓█   ▀ ▓██▒    ▓██░  ██▒▓█   ▀ ▓██ ▒ ██▒
▒██  ▀█▄  ▓██ ░▄█ ▒▒▓█    ▄ ▒██▀▀██░▓██  ▒██░▓██░ ██▓▒░██   █▌▒██  ▀█▄ ▒ ▓██░ ▒░▒███   ▓██ ░▄█ ▒▒██▀▀██░▒███   ▒██░    ▓██░ ██▓▒▒███   ▓██ ░▄█ ▒
░██▄▄▄▄██ ▒██▀▀█▄  ▒▓▓▄ ▄██▒░▓█ ░██ ▓▓█  ░██░▒██▄█▓▒ ▒░▓█▄   ▌░██▄▄▄▄██░ ▓██▓ ░ ▒▓█  ▄ ▒██▀▀█▄  ░▓█ ░██ ▒▓█  ▄ ▒██░    ▒██▄█▓▒ ▒▒▓█  ▄ ▒██▀▀█▄  
 ▓█   ▓██▒░██▓ ▒██▒▒ ▓███▀ ░░▓█▒░██▓▒▒█████▓ ▒██▒ ░  ░░▒████▓  ▓█   ▓██▒ ▒██▒ ░ ░▒████▒░██▓ ▒██▒░▓█▒░██▓░▒████▒░██████▒▒██▒ ░  ░░▒████▒░██▓ ▒██▒
 ▒▒   ▓▒█░░ ▒▓ ░▒▓░░ ░▒ ▒  ░ ▒ ░░▒░▒░▒▓▒ ▒ ▒ ▒▓▒░ ░  ░ ▒▒▓  ▒  ▒▒   ▓▒█░ ▒ ░░   ░░ ▒░ ░░ ▒▓ ░▒▓░ ▒ ░░▒░▒░░ ▒░ ░░ ▒░▓  ░▒▓▒░ ░  ░░░ ▒░ ░░ ▒▓ ░▒▓░
  ▒   ▒▒ ░  ░▒ ░ ▒░  ░  ▒    ▒ ░▒░ ░░░▒░ ░ ░ ░▒ ░      ░ ▒  ▒   ▒   ▒▒ ░   ░     ░ ░  ░  ░▒ ░ ▒░ ▒ ░▒░ ░ ░ ░  ░░ ░ ▒  ░░▒ ░      ░ ░  ░  ░▒ ░ ▒░
  ░   ▒     ░░   ░ ░         ░  ░░ ░ ░░░ ░ ░ ░░        ░ ░  ░   ░   ▒    ░         ░     ░░   ░  ░  ░░ ░   ░     ░ ░   ░░          ░     ░░   ░ 
      ░  ░   ░     ░ ░       ░  ░  ░   ░                 ░          ░  ░           ░  ░   ░      ░  ░  ░   ░  ░    ░  ░            ░  ░   ░     
                   ░                                   ░                                                                                        
                   "
echo "Este script esta programado con la intension de automatizar las actualizaciones y realizar mantenimiento para nuestros sistemas. !Advertencia! Compatible unicamente para sistemas Arch o derivadas :P"

echo "Ingrese una opcion: "

echo "	
		a) Actualizar KeyRings
		b) Actualizar Sistema 
		c) Visualizar Paquetes Innecesarios
		d) Actualizar Drivers Nvidia * Se necesita el script de FroggyFamily Nvidia-All*
		f) Salir del sistema"
while true; do
	read n
	case $n in
		a)
			sudo pacman -Sy archlinux-keyring
			;;
		b)
			sudo pacman -Syy
			sudo pacman -Syu
			;;
		c)
			sudo pacman -Qdt
			;;
		f)
			exit
			;;
	esac 	  
done
