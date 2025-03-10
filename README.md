# Open in Warp - Nautilus Script

This repository provides a simple **Nautilus script** to add an **"Open in Warp"** option when right-clicking inside a folder in the Ubuntu file manager (Nautilus). This allows you to quickly open Warp Terminal in the current directory.

## 📌 Features
- Adds a right-click option under **Scripts > Open in Warp**.
- Opens Warp Terminal in the selected directory.
- Works on Ubuntu and other Linux distributions using Nautilus.

## 🚀 Installation

1. **Download and Place the Script**
   ```bash
   mkdir -p ~/.local/share/nautilus/scripts
   nano ~/.local/share/nautilus/scripts/open-in-warp
   ```
   Paste the following script:
   ```bash
   #!/bin/bash
   # Get the selected folder or use the current directory
   DIR="$(realpath "$1" 2>/dev/null || echo $PWD)"
   warp-terminal --directory "$DIR"
   ```
   Save the file (`Ctrl + X`, then `Y`, then `Enter`).

2. **Make the Script Executable**
   ```bash
   chmod +x ~/.local/share/nautilus/scripts/open-in-warp
   ```

3. **Restart Nautilus**
   ```bash
   nautilus -q
   ```

## 🛠 Usage
- **Right-click** inside a folder in Nautilus.
- Navigate to **Scripts** > **Open in Warp**.
- Warp Terminal should open in the selected folder.

## 🔍 Troubleshooting
1. If the script doesn’t appear:
   - Restart Nautilus: `nautilus -q`
   - Ensure the script is in `~/.local/share/nautilus/scripts/`
   - Make sure it’s executable: `chmod +x ~/.local/share/nautilus/scripts/open-in-warp`

2. If Warp Terminal doesn’t open:
   - Test the command manually: `warp-terminal --directory "$HOME"`
   - If the command fails, check if Warp Terminal is installed properly.

## 📜 License
This script is released under the **MIT License**. Feel free to modify and share!

## 🙌 Contributions
Pull requests are welcome! If you have improvements or find issues, feel free to contribute.

---
Enjoy seamless access to **Warp Terminal** in Nautilus! 🚀
