# Software — Mac Mini Setup Tools

This folder contains configuration and setup tools for the **Mac Mini** recommended to run the [SIMPLE project](https://github.com/project-simple) as part of the M2L2.

> **This is not the SIMPLE project's application source code.**
> These are environment setup tools (shell scripts, dotfiles, etc.) to provision a Mac Mini from a clean macOS install into a ready-to-run SIMPLE project host.

---

## Folder Structure

```
software/
├── scripts/ # setup and startup scripts (.command)
│ ├── Installation_script.command
│ └── startup_script.command
├── docs/ # setup guides and troubleshooting
│ ├── macmini_configuration.md
│ ├── wifi_router_configuration.md
│ ├── headset_configuration.md
│ ├── installation_instructions.md
│ ├── startup_script_instructions.md
│ └── BE25_firmware_update.md
└── BE25_firmware_v1.7.bin # bundled router firmware
```

---

## Prerequisites

Before running any scripts, make sure you have:

- A **Mac mini** running a supported version of macOS (pinned to **Sequoia 15.7.5**; see [Mac mini configuration](./docs/macmini_configuration.md))
- An **admin user account**
- An active internet connection (for the initial package installs only — the deployed box runs offline)

---

## Quick Start

Provision the box in this order. Each step links to its detailed guide:

1. **Configure the WiFi router** — SSID, password, and firmware:
   [WiFi router configuration](./docs/wifi_router_configuration.md).
2. **Configure the Mac mini** — initial setup, app install, auto-start, and system settings:
   [Mac mini configuration](./docs/macmini_configuration.md).
   - Installs Homebrew, Node.js, ADB, and the WebPlatform via the [installation script](./docs/installation_instructions.md).
   - Sets the WebPlatform to launch on boot via the [startup script](./docs/startup_script_instructions.md).
3. **Configure the headsets** — developer mode, USB debugging, and fixed IPs:
   [Headset configuration](./docs/headset_configuration.md).

Once all three are done, the box boots straight into the WebPlatform player screen with all six headsets reachable on `M2L2_WIFI`.

---

## Contributing

Improvements to setup scripts are welcome! Please test changes on a clean macOS install before submitting a pull request. See the root [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.