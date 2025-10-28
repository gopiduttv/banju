# Quick Start Guide - Banju CLI Tool

## Installation (Super Simple!)

### Step 1: Get Banju

```bash
git clone https://github.com/yourusername/banju.git
cd banju
```

### Step 2: Install

```bash
./install.sh
```

That's it! You're done! 🎉

---

## Your First Commands

### 1. See the awesome banner
```bash
banju
```

### 2. Get help
```bash
banju help
```

### 3. Check what's running on your ports
```bash
banju list-ports
```

### 4. Kill a process on port 3000
```bash
banju kill-port 3000
```

### 5. Initialize a new project
```bash
banju init my-awesome-project
```

### 6. Check system status
```bash
banju status
```

---

## Most Common Use Cases

### 🔥 Port Already in Use?
```bash
# Error: Port 3000 is already in use
banju list-ports          # See what's using it
banju kill-port 3000      # Kill it
# Now restart your app!
```

### 🚀 Start a New Project
```bash
banju init my-project
cd my-project
# Start coding!
```

### 🏗️ Run Build Tasks
```bash
banju run build
banju run test
banju run clean
```

---

## Uninstall (if needed)

```bash
cd banju
./uninstall.sh
```

---

## Need Help?

- Run `banju help` anytime
- Check the [README.md](README.md) for full documentation
- Report issues on GitHub

---

**Happy coding with Banju! 🚀**
