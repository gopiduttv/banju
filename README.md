# Banju CLI Tool

A versatile command-line tool built with BASH for project management and automation.

## Features

- 🚀 Initialize new projects with a standard structure
- 📊 Check system and project status
- ⚙️ Run common tasks (build, test, clean)
- 🔪 Kill processes running on specific ports
- 🔍 List all ports currently in use
- 📦 Install packages with auto-detection of format (.deb, .rpm, etc.)
- 🎨 Colorful and user-friendly output
- 📝 Easy to extend and customize

## Installation

### One-Command Install

```bash
curl -fsSL https://raw.githubusercontent.com/yourusername/banju/main/install.sh | bash
```

Or clone and install:

```bash
git clone https://github.com/yourusername/banju.git
cd banju
./install.sh
```

That's it! The installer will:
- ✅ Copy `banju` to `~/.local/bin/`
- ✅ Make it executable
- ✅ Add to your PATH automatically
- ✅ Detect your shell (bash/zsh/fish) and configure it

### Manual Installation (if preferred)

1. Make the script executable:
   ```bash
   chmod +x banju
   ```

2. Copy to your local bin:
   ```bash
   mkdir -p ~/.local/bin
   cp banju ~/.local/bin/
   ```

3. Add to PATH (if not already):
   ```bash
   echo 'export PATH="$HOME/.local/bin:$PATH"' >> ~/.bashrc
   source ~/.bashrc
   ```

## Usage

### Basic Commands

```bash
# Show help
banju help

# Show version
banju version

# Initialize a new project
banju init my-project

# Show current status
banju status

# Run a task
banju run build
banju run test
banju run clean

# Show configuration
banju config

# List available items
banju list

# Install a package file (auto-detects format)
banju apt install -f package.deb
```

### Examples

```bash
# Create a new project called "awesome-app"
banju init awesome-app

# Check the status of your environment
banju status

# Run the build task
banju run build

# List all ports in use
banju list-ports

# Kill all processes on port 3000
banju kill-port 3000

# Kill processes on port 8080
banju kill-port 8080

# Install a .deb package
banju apt install -f myapp.deb

# Install an .rpm package
banju apt install -f myapp.rpm
```

### Package Installation

The `apt install` command automatically detects package formats and uses the appropriate package manager:

```bash
# Install a .deb package (uses dpkg)
banju apt install -f package.deb

# Install without auto-fixing dependencies
banju apt install package.deb

# Install an .rpm package (uses dnf/yum/rpm)
banju apt install -f package.rpm

# Install an Arch Linux package (uses pacman)
banju apt install -f package.pkg.tar.zst

# Install an Alpine package (uses apk)
banju apt install -f package.apk
```

**Features:**
- Auto-detects package format from file extension
- Supports .deb, .rpm, .pkg.tar.zst, .pkg.tar.xz, and .apk formats
- Uses appropriate package manager for each format
- Optional `-f` flag to auto-fix dependencies after installation
- Provides clear error messages for unsupported formats
- Handles permissions automatically (uses sudo when needed)

### Port Management

The `kill-port` command is particularly useful for developers who need to free up ports:

```bash
# Check what's running on your ports
banju list-ports

# Kill a process stuck on port 3000 (common for React/Node.js)
banju kill-port 3000

# Kill a process on port 8080 (common for Java/Spring apps)
banju kill-port 8080

# Kill a process on port 5000 (common for Flask/Python apps)
banju kill-port 5000
```

**Features:**
- Validates port numbers (1-65535)
- Shows process details before killing
- Asks for confirmation before killing
- Attempts graceful kill first, then force kill if needed
- Works with multiple tools: `lsof`, `ss`, `netstat`, `fuser`
- Handles permission issues gracefully
```

## Customization

The `banju` script is designed to be easily customizable. You can:

1. **Add new commands**: Add new case statements in the `main()` function
2. **Add new tasks**: Extend the `run_task()` function with your own tasks
3. **Modify colors**: Change the color variables at the top of the script
4. **Add configuration**: Implement a config file reader (`.banjurc`)

### Example: Adding a Custom Command

Edit the `banju` script and add a new case in the `main()` function:

```bash
custom)
    echo "Running custom command!"
    # Your custom logic here
    ;;
```

## Development

### Project Structure

```
banju/
├── banju           # Main executable script
├── README.md       # This file
├── LICENSE         # License file
└── CHANGELOG.md    # Version history
```

### Contributing

1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

## Requirements

- Bash 4.0 or higher
- Linux, macOS, or WSL on Windows
- Standard Unix utilities (mkdir, touch, date, etc.)
- For port management: `lsof`, `ss`, `netstat`, or `fuser` (at least one)
- For package installation:
  - `dpkg` for .deb packages (Debian/Ubuntu)
  - `dnf`, `yum`, or `rpm` for .rpm packages (RedHat/Fedora/CentOS)
  - `pacman` for Arch Linux packages
  - `apk` for Alpine Linux packages

## License

MIT License - feel free to use and modify as needed.

## Troubleshooting

### Command not found

Make sure the script is executable and in your PATH:
```bash
chmod +x banju
which banju  # Should show the path to banju
```

### Permission denied

Make the script executable:
```bash
chmod +x banju
```

## Roadmap

- [ ] Add configuration file support (~/.banjurc)
- [ ] Add plugin system
- [ ] Add auto-completion for bash/zsh
- [ ] Add more built-in tasks
- [ ] Add logging functionality
- [ ] Add interactive mode

## Support

For issues, questions, or contributions, please visit:
- GitHub Issues: https://github.com/yourusername/banju/issues
- Documentation: https://github.com/yourusername/banju/wiki

---

Made with ❤️ using BASH
