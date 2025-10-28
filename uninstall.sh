#!/usr/bin/env bash

# Banju CLI Tool - Uninstaller

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${RED}"
cat << 'EOF'
╔══════════════════════════════════════════════════════════════════════╗
║                    BANJU UNINSTALLER                                 ║
╚══════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

INSTALL_DIR="$HOME/.local/bin"
BANJU_PATH="$INSTALL_DIR/banju"

if [ -f "$BANJU_PATH" ]; then
    echo -e "${YELLOW}Removing banju from $INSTALL_DIR${NC}"
    rm -f "$BANJU_PATH"
    echo -e "${GREEN}✓ banju has been uninstalled${NC}\n"
else
    echo -e "${YELLOW}banju is not installed in $INSTALL_DIR${NC}\n"
fi

echo -e "${BLUE}Note: PATH modifications in your shell config were not removed.${NC}"
echo -e "${BLUE}You can manually remove the line from ~/.bashrc or ~/.zshrc if needed.${NC}\n"

echo -e "${GREEN}Thank you for using banju! 👋${NC}\n"
