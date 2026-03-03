#!/usr/bin/env bash
set -e
# Next-Gen Neon Color Theme
RESET="\e[0m"
BOLD="\e[1m"
DIM="\e[2m"
UNDERLINE="\e[4m"
CYAN="\e[96m"
BLUE="\e[94m"
PURPLE="\e[95m"
GREEN="\e[92m"
YELLOW="\e[93m"
RED="\e[91m"
WHITE="\e[97m"
NEON_GREEN="\e[38;5;82m"
NEON_PURPLE="\e[38;5;165m"
DANGER="\e[38;5;75m"
GLOW="\e[38;5;51m"
DANGER="\e[38;5;196m"
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
echo "${BLUE}${BOLD} 1) Install Pterodactyl Panel ${RESET}"
echo "${BLUE}${BOLD} 2) Install Pterodactyl Wings ${RESET}"
echo "${BLUE}${BOLD} 3) Install Tailscale+UP ${RESET}"
echo "${BLUE}${BOLD} 4) Install HvmPamel ${RESET}"
echo "${BLUE}${BOLD} 5) EXIT ${RESET}"
echo ""
read -p "Select option [1-6]: " opt

case $opt in
  1)
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
