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
echo "╔══════════════════╗"
echo "║CODE MADE BY JIKOZYT ║"
echo "╚══════════════════╝"
sleep 2
# Options
echo ""
echo -e "${CYAN}1${RESET} ➤ Install Pterodactyl Panel"
echo -e "${CYAN}2${RESET} ➤ Install Pterodactyl Wings"
echo -e "${CYAN}3${RESET} ➤ Install Tailscale+UP"
echo -e "${CYAN}4${RESET} ➤ Install HvmPanel3.1"
echo -e "${CYAN}5${RESET} ➤ Install Cloudflare"
echo -e "${CYAN}6${RESET} ➤ Install Rdp"
echo -e "${CYAN}7${RESET} ➤ One Click Playit Installer"
echo -e "${CYAN}8${RESET} ➤ Install Localtonet"
echo -e "${CYAN}9${RESET} ➤ Install Proxmox Panel"
echo -e "${CYAN}10${RESET} ➤ Exit"
echo ""
read -p "Select option [1-9] ➜ " opt

case $opt in
  1) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/script) ;;    
  2) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/wings) ;;
  3) clear && curl -fsSL https://tailscale.com/install.sh | sh && sudo tailscale up ;;
  4) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/hvm.sh) ;;
  5) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/cloudflare.sh) ;;
  6) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/rdp.sh) ;;
  7) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/playit.sh) ;;
  8) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/localtonet.sh) ;;
  9) clear && bash <(curl -s https://raw.githubusercontent.com/jikoz/codes/refs/heads/main/proxmox.sh) ;;
  10) exit 0 ;;
  *) echo "❌ Invalid Option"
     sleep 1
    ;;
esac
