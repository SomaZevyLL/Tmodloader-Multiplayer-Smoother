# 🚀 tModLoader Multiplayer Smoothness Patch

![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Game](https://img.shields.io/badge/game-tModLoader-green)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

**Fix NPC jitter and rubber-banding in tModLoader multiplayer sessions.**

## 📖 About

Playing tModLoader with friends is great, but the default network settings often cause enemies and NPCs to "teleport" or jitter, making combat difficult.

This lightweight patch automatically configures your tModLoader settings to disable problematic NPC interpolation. It works by automating the `config.json` edits and locking the file so the game doesn't revert them.

**Key Features:**
* ✅ **Zero-Lag NPCs:** Sets `MultiplayerNPCSmoothness` and `MultiplayerNPCSmoothingRange` to `0`.
* ✅ **Auto-Lock:** Sets the config file to "Read-Only" to prevent tModLoader from resetting your optimization.
* ✅ **Seamless Launch:** Includes a custom launcher that applies fixes every time you start the game.

## 🛠️ Installation

1.  **Download** the repository archive (or the latest release).
2.  Navigate to your tModLoader installation folder.
    * *Default Steam path:* `C:\Program Files (x86)\Steam\steamapps\common\tModLoader`
3.  **Extract** the contents of the archive into this folder.
4.  **Confirm overwrite** when asked to replace the existing files (`start-tModLoader.bat`, etc.).

## 🎮 How to Use

Simply launch tModLoader as you normally would (via Steam or by running `start-tModLoader.bat`). The included script (`update-config.bat`) will automatically:
1.  Check your config file.
2.  Apply the smoothness fix.
3.  Launch the game.

##  CREDITS

This project is based on the optimization method detailed in the Steam Community Guide:
* [**Fix Lag / Stuttering in Multiplayer**](https://steamcommunity.com/sharedfiles/filedetails/?id=2923672646) by *Russ Guss Daps*.

---
*Disclaimer: This script modifies game configuration files. Use at your own risk. Always backup your `config.json` before applying patches.*
