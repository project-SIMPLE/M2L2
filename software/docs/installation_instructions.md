# Installing the WebPlatform with the install script

This guide runs `Installation_script.command` from [`software/scripts`](../scripts/), which provisions a clean Mac mini end to end: it installs the toolchain (Homebrew, Node.js, ADB), optionally installs GAMA, fetches the WebPlatform, installs its dependencies, and prepares its `.env`. It is the first software step in [Mac mini configuration](./macmini_configuration.md).

---

## 1. Prerequisites

- A Mac mini on the pinned macOS version (see [Mac mini configuration](./macmini_configuration.md)).
- An admin account and its password.
- An active internet connection (needed only for this install; the deployed box runs offline).

> **WebPlatform download:** you do not need to fetch it yourself. The script clones it from GitHub into `~/Documents/simple.webplatform` if it is not already there. If you prefer to provide it yourself, place it at that path beforehand and the script uses it as-is.

---

## 2. Run the script

1. Download the script and grant it execute permission:
   ```bash
   chmod +x /path/to/Installation_script.command
   ```
2. Open it. macOS blocks unidentified scripts on first run. To allow it once, go to **System Settings → Privacy & Security** and scroll to the bottom.
3. macOS shows that it blocked the script and offers an **Open Anyway** button. Click it.
4. Enter the Mac mini password when prompted. The script opens a terminal and runs the steps below.

---

## 3. What the script does

| Step | Action | Notes |
|---|---|---|
| 1 | Installs **Homebrew** | Skipped if already present. |
| 2 | Installs **Node.js** | Runs the WebPlatform. |
| 3 | Installs **ADB** (Android platform tools) | Used to manage and stream the headsets. |
| 4 | Optionally installs **GAMA** | It asks first. Skip it if you only run the ÉVEIL universe; skipping appends `ENV_GAMALESS=true` to the `.env`. |
| 5 | Clones the WebPlatform if missing and runs `npm install` | Into `~/Documents/simple.webplatform`. |
| 6 | Initializes `.env` from `.env.example` | Edit it afterward to configure the WebPlatform. |
| 7 | Offers to start the WebPlatform once | Opens `http://localhost:8000` in Safari if you accept. |

> If you skip GAMA, the script also installs no virtual universe. Follow the WebPlatform documentation to add one: <https://doc.project-simple.eu/webplatform/virtual-universes/install>.

---

## 4. Verify

When the script finishes it prints **All set!**. Accept the prompt to start the WebPlatform, or start it manually:

```bash
cd ~/Documents/simple.webplatform && npm start
```

Then open <http://localhost:8000> — the WebPlatform admin page should load.

---

## Next steps

- Configure Safari and system settings, then set the WebPlatform to launch on boot: [Mac mini configuration](./macmini_configuration.md).
- [Set the WebPlatform to start automatically](./startup_script_instructions.md).
