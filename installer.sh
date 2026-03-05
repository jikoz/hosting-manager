#!/usr/bin/env bash
set -e
# Colors
RESET="\e[0m"
RED="\e[31m"
GREEN="\e[32m"
YELLOW="\e[33m"
BLUE="\e[34m"
CYAN="\e[36m"
PURPLE="\e[35m"
WHITE="\e[97m"
RESET="\e[0m"
BOLD="\e[1m"
clear
cat << "EOF"
 ██╗██╗██╗  ██╗ ██████╗ ███████╗██╗   ██╗████████╗
     ██║██║██║ ██╔╝██╔═══██╗╚══███╔╝╚██╗ ██╔╝╚══██╔══╝
     ██║██║█████╔╝ ██║   ██║  ███╔╝  ╚████╔╝    ██║   
██   ██║██║██╔═██╗ ██║   ██║ ███╔╝    ╚██╔╝     ██║   
╚█████╔╝██║██║  ██╗╚██████╔╝███████╗   ██║      ██║   
 ╚════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝
EOF

echo ""
echo -e "${CYAN}1${RESET} ➤ Install Pterodactyl"
echo -e "${CYAN}2${RESET} ➤ Install Pterodactyl Wings"
echo -e "${CYAN}3${RESET} ➤ Install Tailscale+UP"
echo -e "${CYAN}4${RESET} ➤ Install HvmPamel"
echo -e "${CYAN}5${RESET} ➤ Exit"
echo ""
read -p "Select option [1-6]: " opt

case $opt in
  1) bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/script) ;;    
  2)
    clear
    cat << "EOF"
██╗██╗██╗  ██╗ ██████╗ ███████╗██╗   ██╗████████╗
     ██║██║██║ ██╔╝██╔═══██╗╚══███╔╝╚██╗ ██╔╝╚══██╔══╝
     ██║██║█████╔╝ ██║   ██║  ███╔╝  ╚████╔╝    ██║   
██   ██║██║██╔═██╗ ██║   ██║ ███╔╝    ╚██╔╝     ██║   
╚█████╔╝██║██║  ██╗╚██████╔╝███████╗   ██║      ██║   
 ╚════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝
EOF
  exit
    ;;
  3)
   clear
       cat << "EOF"
██╗██╗██╗  ██╗ ██████╗ ███████╗██╗   ██╗████████╗
     ██║██║██║ ██╔╝██╔═══██╗╚══███╔╝╚██╗ ██╔╝╚══██╔══╝
     ██║██║█████╔╝ ██║   ██║  ███╔╝  ╚████╔╝    ██║   
██   ██║██║██╔═██╗ ██║   ██║ ███╔╝    ╚██╔╝     ██║   
╚█████╔╝██║██║  ██╗╚██████╔╝███████╗   ██║      ██║   
 ╚════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝
EOF
    curl -fsSL https://tailscale.com/install.sh | sh
    echo "${GREEN}${BOLD} Tailscale Installed Successfully ${RESET}"
    sleep 2
    echo "${BLUE}${BOLD} Starting Tailscale ✨ ${RESET}"
    sudo tailscale up
    ;;
  4)
       clear
       cat << "EOF"
██╗██╗██╗  ██╗ ██████╗ ███████╗██╗   ██╗████████╗
     ██║██║██║ ██╔╝██╔═══██╗╚══███╔╝╚██╗ ██╔╝╚══██╔══╝
     ██║██║█████╔╝ ██║   ██║  ███╔╝  ╚████╔╝    ██║   
██   ██║██║██╔═██╗ ██║   ██║ ███╔╝    ╚██╔╝     ██║   
╚█████╔╝██║██║  ██╗╚██████╔╝███████╗   ██║      ██║   
 ╚════╝ ╚═╝╚═╝  ╚═╝ ╚═════╝ ╚══════╝   ╚═╝      ╚═╝
EOF
    sudo apt update
    sudo apt install git -y
    git clone https://github.com/DreamHost2ws/Vpanel3.1.git
    sudo apt install python3-pip -y
    cd Vpanel3.1
    pip3 install flask flask-socketio flask_login docker paramiko python-dotenv psutil flask-limiter ecdsa
    echo "${GREEN}${BOLD} Starting HvmPanel ${RESET}"
    python3 hvm.py
    ;;
  5)
    exit 0
    ;;
  *)
    echo "❌ Invalid Option"
    sleep 1
    ;;
esac
done
