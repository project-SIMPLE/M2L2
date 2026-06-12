# Configuring the Mac mini

This guide provisions the M2L2 Mac mini from a clean macOS install into a ready-to-run SIMPLE host: initial macOS setup, application install, browser and auto-start configuration, and the system settings required for unattended classroom operation. Complete the [hardware assembly](../../hardware/assembly/README.md) first.

---

## 1. Initial macOS setup

Run the standard macOS first-boot setup. When prompted, you can use the M2L2 reference account values for consistency across units:

| Field | Value |
|---|---|
| Display name | `Simple Project` |
| Account name | `Simple` |
| Password | `simple-project` |

> These are shared lab credentials for a kiosk-style device with no internet uplink behind it. Do not reuse them on internet-facing machines.

---

## 2. Install the applications

1. Install the WebPlatform and its dependencies by running the install script from the M2L2 repository — follow the [installation instructions](./installation_instructions.md).
2. Configure Safari to open the player screen on launch:
   - **Settings → General**
   - Set the homepage to `localhost:8000/streamPlayerScreen`
   - Set **New windows open with** → **Homepage**
3. *(Optional)* Install **GAMA** — only needed if you run GAMA-based virtual universes (not required for the ÉVEIL universe). The install script can do this for you, or install it manually from the [GAMA plugin repository](https://github.com/project-SIMPLE/simple.toolchain/tree/Unity-6/GAMA%20Plugin). Open GAMA once to initialize it and clear the macOS Gatekeeper prompt.

---

## 3. Automatic startup

Configure the WebPlatform to launch automatically on boot so the box is operational without a keyboard. Follow the [startup script instructions](./startup_script_instructions.md), which use the `startup_script.command` from the [`software/scripts`](../scripts/) folder.

Once configured, Safari opens the WebPlatform player screen automatically each time the Mac mini boots.

---

## 4. System settings

Set the following so the box recovers from power loss and never locks during a session:

1. **Settings → Energy** → enable **Start up automatically after a power failure**.
2. **Settings → Lock Screen** → set every timeout to **Never**.
3. Remove the login password (change user password, leave the new password field empty) so an unattended boot reaches the desktop.
4. Update macOS to the pinned version (**Sequoia 15.7.5**).

> The version is pinned because UPS monitoring is sensitive to the macOS release. Do not let the Mac mini auto-update past the pinned version.

---

## 5. Static IP address (GAMA only)

This step is **only required for games that use GAMA**. The ÉVEIL universe and other GAMA-less setups do not need it — skip this section.

GAMA connects to the WebPlatform at a known address, so the Mac mini must keep a fixed IP. Set it to `192.168.68.50`:

| Device | IP address |
|---|---|
| Mac mini | `192.168.68.50` |

`192.168.68.50` is the first address the TP-Link Deco's DHCP hands out, so if the Mac mini is the very first device to join `M2L2_WIFI` it will receive this address anyway. Setting it as a static IP is still recommended so it never changes regardless of connection order. Assign it on the Mac mini (**Settings → Network → Wi-Fi → Details → TCP/IP → Configure IPv4: Manually**) with gateway `192.168.68.1` and mask `255.255.255.0`, or as a DHCP reservation in the Deco app.

---

## Next steps

- [Configure the WiFi router](./wifi_router_configuration.md)
- [Configure the headsets](./headset_configuration.md)
