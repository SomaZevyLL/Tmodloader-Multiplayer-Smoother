# 🚀 tModLoader Multiplayer Smoothness Patch

![Version](https://img.shields.io/badge/version-1.3-cyan)
![Platform](https://img.shields.io/badge/platform-Windows-blue)
![Game](https://img.shields.io/badge/game-tModLoader-green)
![License](https://img.shields.io/badge/license-MIT-lightgrey)

**Fix NPC jitter and rubber-banding in tModLoader multiplayer sessions.**[cite: 8]

---

## ⚠️ 🛑 CRITICAL NOTES (READ BEFORE LAUNCHING!)

> ### 1. First-Time Launch Freezing? (Windows Security Warning)
> When you launch the game for the first time after installing the patch, \*\*Steam might say "Running..." but nothing happens\*\*. 
> \* \*\*Why this happens:\*\* Windows opens an "Open File - Security Warning" dialog in the background (hidden behind Steam or other windows) asking for permission to run the new `.bat` file.
> \* \*\*How to fix:\*\* Minimize all windows or check your taskbar. Find that pop-up window, \*\*UNCHECK\*\* the box that says `\[ ] Always ask before opening this file`, and click \*\*Run / Launch\*\*. If you don't uncheck this, Steam will get stuck every single time you open the game!

> ### 2. Game Updated? Re-apply the Patch!
> Whenever tModLoader receives an update on Steam, \*\*Steam automatically overwrites and deletes the custom launchers\*\*, restoring default game files.\[cite: 8]
> \* \*\*How to fix:\*\* Keep the patch archive handy. Every time the game updates, simply \*\*re-extract / re-copy\*\* the patch files into your tModLoader directory again, otherwise the optimization script will stop executing.\[cite: 8]

---

## 📖 About

Playing tModLoader with friends is great, but the default network settings often cause enemies and NPCs to "teleport" or jitter, making combat difficult.[cite: 8]

This lightweight patch automatically configures your tModLoader settings to disable problematic NPC interpolation. It works by automating the `config.json` edits and locking the file so the game doesn't revert them.[cite: 8]

**Key Features (v1.3 Updates):**
* ✅ **Zero-Lag NPCs:** Sets `MultiplayerNPCSmoothness` and `MultiplayerNPCSmoothingRange` to `0`.[cite: 2, 8]
* ✅ **Auto-Lock:** Sets the config files to "Read-Only" to prevent tModLoader from resetting your optimization.[cite: 2, 8]
* ✅ **Smart Diagnostics:** The script validates all 4 core files and automatically keeps the window open if any file is missing or fails to patch.
* ✅ **Seamless Launch:** Includes a custom launcher that applies fixes every time you start the game.[cite: 2, 8]

## 🛠️ Installation

1. **Download** the repository archive (or the latest release).[cite: 8]
2. Navigate to your tModLoader installation folder.[cite: 8]
   * *Default Steam path:* `C:\\Program Files (x86)\\Steam\\steamapps\\common\\tModLoader`[cite: 8]
3. **Extract** the contents of the archive into this folder.[cite: 8]
4. **Confirm overwrite** when asked to replace the existing files (`start-tModLoader.bat`, etc.).[cite: 8]

## 🎮 How to Use

Simply launch tModLoader as you normally would (via Steam or by running `start-tModLoader.bat`). The included script (`update-config.bat`) will automatically:[cite: 2, 8]
1. Check all your config files.
2. Apply the smoothness and memory allocation fixes.
3. Verify the installation profile and launch the game.

---

## 🔍 Troubleshooting & Error Resolution

Starting with version 1.3, if the patch encounters an incomplete profile or a locked file, **the console window will stay open** and print red error statuses. Below are the solutions for specific errors:

### ❌ 1. `Terraria Base Config` or `tModLoader Config (config.json) -> FAILED OR MISSING`
* **Cause:** The script cannot locate your game settings file in the Windows `Documents` or `OneDrive` directories, or the file is corrupted.
* **Solution:**
  1. Launch standard Terraria and tModLoader at least once from Steam so the game can generate its first-time initialization folders.
  2. If you are using an aggressive Antivirus or Windows Controlled Folder Access, it might block the script. Temporarily disable it or add `update-config.bat` to the exclusions list.

### ❌ 2. `Server Config (serverconfig.txt)` or `Runtime Limits (tModLoader.runtimeconfig) -> FAILED OR MISSING`
* **Cause:** The initialization script was executed from the wrong folder (e.g., from your Desktop or Downloads folder).
* **Solution:**
  1. Move the `update-config.bat` file directly into the **root tModLoader installation directory** (where `tModLoader.dll` and `LaunchUtils` are located).[cite: 2, 8]
  2. Always launch the game via Steam or through the provided root launchers (`start-tModLoader.bat`).[cite: 2, 8]

### ❌ 3. `\[PATCH ERROR] System failed to modify file...`
* **Cause:** Another program is currently using the target file, or Windows permissions are severely broken.
* **Solution:**
  1. Make sure tModLoader, Terraria, and any dedicated command-line Terraria servers are completely closed before running the patch.
  2. If the file is permanently stuck, manually go to your `Documents\\My Games\\Terraria`, right-click `config.json`, open **Properties**, manually uncheck **Read-Only**, click Apply, and run the script again.

---

##  CREDITS

This project is based on the optimization method detailed in the Steam Community Guide:[cite: 8]
* [**Fix Lag / Stuttering in Multiplayer**](https://steamcommunity.com/sharedfiles/filedetails/?id=2923672646) by *Russ Guss Daps*.[cite: 8]

*Disclaimer: This script modifies game configuration files. Use at your own risk. Always backup your config files before applying patches.*[cite: 8]
