#!/usr/bin/env bash

# Banju CLI Tool - Simple Installer
# This script will install banju to your system

set -e

# Colors
GREEN='\033[0;32m'
BLUE='\033[0;34m'
YELLOW='\033[1;33m'
RED='\033[0;31m'
NC='\033[0m'

echo -e "${BLUE}"
cat << 'EOF'
╔══════════════════════════════════════════════════════════════════════╗
║                    BANJU INSTALLER                                   ║
╚══════════════════════════════════════════════════════════════════════╝
EOF
echo -e "${NC}"

# Determine installation directory
INSTALL_DIR="$HOME/.local/bin"

echo -e "${BLUE}Installing banju CLI tool...${NC}\n"

# Create installation directory if it doesn't exist
if [ ! -d "$INSTALL_DIR" ]; then
    echo -e "${YELLOW}Creating directory: $INSTALL_DIR${NC}"
    mkdir -p "$INSTALL_DIR"
fi

# Copy the banju script
echo -e "${GREEN}→ Copying banju to $INSTALL_DIR${NC}"
cp banju "$INSTALL_DIR/banju"
chmod +x "$INSTALL_DIR/banju"

# Check if ~/.local/bin is in PATH
if [[ ":$PATH:" != *":$HOME/.local/bin:"* ]]; then
    echo -e "\n${YELLOW}⚠ Warning: $INSTALL_DIR is not in your PATH${NC}"
    
    # Detect shell
    SHELL_NAME=$(basename "$SHELL")
    
    case "$SHELL_NAME" in
        bash)
            RC_FILE="$HOME/.bashrc"
            ;;
        zsh)
            RC_FILE="$HOME/.zshrc"
            ;;
        fish)
            RC_FILE="$HOME/.config/fish/config.fish"
            ;;
        *)
            RC_FILE="$HOME/.profile"
            ;;
    esac
    
    echo -e "${BLUE}Adding $INSTALL_DIR to PATH in $RC_FILE${NC}"
    echo '' >> "$RC_FILE"
    echo '# Added by banju installer' >> "$RC_FILE"
    echo 'export PATH="$HOME/.local/bin:$PATH"' >> "$RC_FILE"
    
    echo -e "${GREEN}✓ PATH updated in $RC_FILE${NC}"
    echo -e "${YELLOW}→ Please run: ${NC}source $RC_FILE${YELLOW} or restart your terminal${NC}"
else
    echo -e "${GREEN}✓ $INSTALL_DIR is already in your PATH${NC}"
fi

echo -e "\n${GREEN}╔══════════════════════════════════════════════════════════════════════╗${NC}"
echo -e "${GREEN}║                   ✓ INSTALLATION COMPLETE!                          ║${NC}"
echo -e "${GREEN}╚══════════════════════════════════════════════════════════════════════╝${NC}\n"

echo -e "${BLUE}Get started with:${NC}"
echo -e "  ${YELLOW}banju help${NC}        - Show all commands"
echo -e "  ${YELLOW}banju version${NC}     - Show version"
echo -e "  ${YELLOW}banju list-ports${NC}  - List all ports in use"
echo -e "  ${YELLOW}banju kill-port${NC}   - Kill process on a port\n"

# Test installation
if command -v banju &> /dev/null; then
    echo -e "${GREEN}✓ banju is ready to use!${NC}"
    echo -e "${BLUE}Run '${YELLOW}banju${BLUE}' to get started${NC}\n"
else
    echo -e "${YELLOW}⚠ Please restart your terminal or run:${NC}"
    echo -e "  ${GREEN}source $RC_FILE${NC}\n"
fi
