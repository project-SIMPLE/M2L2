# Configuring the WiFi router

This guide sets up the TP-Link Deco BE25 that provides the M2L2's dedicated, offline local network for the headsets and Mac mini. It covers initial setup, the firmware update, and the SSID/password the rest of the kit expects.

---

## 1. Initial setup

Run the Deco's initial setup through the **TP-Link Deco mobile app**. The router runs as a fully offline LAN — no internet uplink is required.

> The password you create in the mobile app is the **router admin password**. It is different from the WiFi password set below, and it is what the firmware-update web page asks for.

---

## 2. Update the firmware

Update the router to the firmware bundled with this repository (`software/BE25_firmware_v1.7.bin`). Follow the [BE25 firmware update guide](./BE25_firmware_update.md).

---

## 3. Set the network name and password

Set the WiFi credentials that the Mac mini and all six headsets connect to:

| Field | Value |
|---|---|
| Network name (SSID) | `M2L2_WIFI` |
| WiFi password | `simple-project` |

---

## 4. Network addressing

Keep the Deco's default subnet, `192.168.68.0/24`, and its default gateway `192.168.68.1` — the whole M2L2 is built around it. Every device lives on `192.168.68.x`:

| Device | IP address | Required for |
|---|---|---|
| Gateway (router) | `192.168.68.1` | always |
| Mac mini | `192.168.68.50` | GAMA-based games only |
| Headsets (by sticker color) | `192.168.68.101`–`192.168.68.106` | always |

The headsets get **static IPs** by sticker color — see the [color-to-IP mapping](./headset_configuration.md#4-connect-to-wifi-and-assign-ip-addresses). DHCP will not assign these automatically; set each one manually, either on the headset (recommended) or as a DHCP reservation in the Deco app. The Mac mini's `192.168.68.50` is only needed for GAMA games — see [Mac mini configuration](./macmini_configuration.md#5-static-ip-address-gama-only). If you change the subnet here, update every device address to match.

> The [firmware update guide](./BE25_firmware_update.md) reaches the router's admin page at `192.168.68.101`, which collides with the first (blue) headset's static IP. Two devices cannot share one address on the same subnet — confirm the router's actual management IP for your unit (the Deco default gateway is `192.168.68.1`) and reassign whichever device conflicts before going live. <!-- TODO: verify the router admin IP against the deployed unit -->.

---

## Next steps

- [Configure the headsets](./headset_configuration.md) — they connect to `M2L2_WIFI` and receive their static IPs.
