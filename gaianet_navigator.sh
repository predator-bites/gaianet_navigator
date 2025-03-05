#!/bin/bash

# Цветовые коды
NEON_RED='\033[38;5;196m'
NEON_BLUE='\033[38;5;45m'
RESET='\033[0m'

# Логотип
logo() {
    echo -e "
${NEON_RED}  ____   ${NEON_BLUE}____
${NEON_RED} |  _ \\  ${NEON_BLUE}|  _ \\
${NEON_RED} | | | | ${NEON_BLUE}| |_) |
${NEON_RED} | |_| | ${NEON_BLUE}|  __/
${NEON_RED} |____/  ${NEON_BLUE}|_|
${RESET}
"
}

# Вызов логотипа
logo

echo -e "${NEON_BLUE}----------------------------------${RESET}"
echo "              Gaianet Menu                         "
echo -e "${NEON_BLUE}----------------------------------${RESET}"
echo "1. Install"
echo "2. Update"
echo "3. To create autochat"
echo "4. To check script work"
echo -e "${NEON_BLUE}----------------------------------${RESET}"
read -p "Enter num of action: " CHOISE
echo -e "${NEON_BLUE}https://t.me/DropPredator${RESET}"


