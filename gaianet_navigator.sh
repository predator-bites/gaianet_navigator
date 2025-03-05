#!/bin/bash

# Цветовые коды
NEON_RED='\033[38;5;196m'
NEON_BLUE='\033[38;5;45m'
RESET='\033[0m'

# Логотип
logo() {
    echo -e "
${RESET}  ____    ${NEON_BLUE}____
${RESET} |  _ \\  ${NEON_BLUE}|  _ \\
${RESET} | | | | ${NEON_BLUE}| |_) |
${RESET} | |_| | ${NEON_BLUE}|  __/
${RESET} |____/  ${NEON_BLUE}|_|
${RESET}
"
}


# Вызов логотипа
logo
echo -e "Welcome to DP Script!"

echo -e "${NEON_BLUE}----------------------------------${RESET}"
echo "           Gaianet Menu"
echo -e "${NEON_BLUE}----------------------------------${RESET}"
echo "1. Install"
echo "2. Update"
echo "3. To create autochat"
echo "4. To check script work"
echo -e "${NEON_BLUE}----------------------------------${RESET}"
read -p "Enter num of action: " CHOISE

# Обработка выбора пользователя
if [[ $CHOISE -eq 1 ]]; then
    echo -e "${NEON_BLUE}Installing...${RESET}"
    wget https://raw.githubusercontent.com/predator-bites/GaianetLFG_2/refs/heads/main/install_gaia_1.sh &&
    wget https://raw.githubusercontent.com/predator-bites/GaianetLFG_2/refs/heads/main/install_gaia_2.sh &&
    sudo chmod +x install_gaia_1.sh install_gaia_2.sh &&
    ./install_gaia_1.sh &&
    source ~/.bashrc &&
    ./install_gaia_2.sh

elif [[ $CHOISE -eq 2 ]]; then
    echo -e "${NEON_BLUE}Updating...${RESET}"
    # Здесь можно добавить команды обновления
    sudo wget https://raw.githubusercontent.com/predator-bites/gaianet_update/refs/heads/main/gaianet_update.sh &&
    chmod +x gaianet_update.sh &&
    ./gaianet_update.sh
    
elif [[ $CHOISE -eq 3 ]]; then
    echo -e "${NEON_BLUE}Creating autochat...${RESET}"
    # Здесь можно добавить команды создания авточата
    git clone https://github.com/predator-bites/gaianet_chat_by_dp.git && 
    cd gaianet_chat_by_dp && 
    chmod +x ./gaianet_script.sh && 
    ./gaianet_script.sh
else
    echo -e "${NEON_RED}Invalid choice. Please enter a valid number.${RESET}"
fi
echo " "
echo "Subscript on author of autoinstaller using next url:"
echo -e "${NEON_BLUE}https://t.me/DropPredator${RESET}"
echo " " 
echo " Autoinstaller is finished work "  
