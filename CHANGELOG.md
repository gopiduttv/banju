# Changelog

All notable changes to the Banju CLI tool will be documented in this file.

The format is based on [Keep a Changelog](https://keepachangelog.com/en/1.0.0/),
and this project adheres to [Semantic Versioning](https://semver.org/spec/v2.0.0.html).

## [1.0.0] - 2025-10-28

### Added
- Initial release of Banju CLI tool
- `help` command to display usage information
- `version` command to show version information
- `init` command to initialize new projects
- `status` command to show current system status
- `run` command to execute tasks (build, test, clean)
- `config` command to display configuration
- `list` command to list available items
- Colorful terminal output with error highlighting
- Project structure generation (src/, tests/, docs/)
- Basic error handling and validation
- Comprehensive documentation

### Features
- User-friendly command-line interface
- Extensible architecture for custom commands
- Safe execution with error handling (set -euo pipefail)
- Cross-platform compatibility (Linux, macOS, WSL)

## [Unreleased]

### Planned
- Configuration file support (~/.banjurc)
- Plugin system for extensibility
- Bash/Zsh auto-completion
- Enhanced logging functionality
- Interactive mode
- More built-in task templates
- Project templates
- Git integration
- Package manager integration
