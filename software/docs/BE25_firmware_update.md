# Updating the TP-Link Deco BE25 firmware

This guide flashes the TP-Link Deco BE25 router with the firmware bundled in this repository (`software/BE25_firmware_v1.7.bin`), using the router's local web interface. It is part of the [WiFi router configuration](./wifi_router_configuration.md); run the router's initial setup in the Deco mobile app first.

---

## 1. Prerequisites

- Your computer is connected to the Deco's WiFi network.
- The firmware file `software/BE25_firmware_v1.7.bin` from this repository is downloaded locally.
- You know the **router admin password** — the one you set during initial setup in the Deco mobile app.

> The admin password is **not** the WiFi password. It is the credential the router's web page asks for.

---

## 2. Open the router web interface

In a browser, go to the router's admin page at `192.168.68.101` and sign in with the admin password.

> The admin address can vary by unit (the Deco default gateway is `192.168.68.1`). If `192.168.68.101` does not load, see [Network addressing](./wifi_router_configuration.md#4-network-addressing) to confirm the correct address for your router.

---

## 3. Update the firmware

1. Open the menu and go to **Advanced** → **System** → **Firmware Update**.
2. Set **Device Model** to **BE25**.
3. In **New Firmware File**, select `BE25_firmware_v1.7.bin`.
4. Start the update and wait for it to finish. The router reboots on its own.

> Do not power off the router or close the page while the update is in progress.

---

## 4. Verify

After the reboot, sign back in to the web interface and confirm the firmware version reads `1.7`. The Deco then keeps its configured SSID and password — continue with [WiFi router configuration](./wifi_router_configuration.md) if you have not set those yet.
