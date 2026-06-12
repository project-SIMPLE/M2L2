# Assembly — M2L2 Box

This guide walks through assembling one **M2L2** unit end to end: preparing the six VR headsets, fitting out the wooden cabinet, and wiring the internal power, network, and display chain. Follow the sections in order — headset preparation and cabinet wiring are independent, but the electrical install assumes the cabinet has already been checked.

> This is the **physical** build. Once the box is wired, move on to the [software setup](../../software/README.md) to provision the Mac mini, router, and headsets.

Refer to the [Bill of Materials](../bom/README.md) for exact part references and quantities, and to [`blueprints/`](../blueprints/) for the cabinet dimensions and cutouts.

---

## Before you start

Lay out the full kit and confirm every item from the [BOM](../bom/README.md) is present. You should have, per unit:

- 6× Meta Quest 3 headsets (2 controllers each)
- 6× BOBOVR M3 Pro head straps (with B100 batteries)
- 6× PrismXR Carina D1 charging docks (adapters, cables, controller interfaces, special rechargeable batteries)
- 1× Mac mini + charge cable, 1× USB-C hub, 2× HDMI cables
- 1× APC Back-UPS BX2200MI + USB cable
- 1× 8-outlet power strip
- 1× TP-Link Deco BE25 router + power cable
- 1× wireless keyboard (dongle, batteries), 1× iPad (optional)
- 1 sheet of numbered stickers

> Power off and unplug everything before working inside the cabinet.

---

## 1. Headset preparation

Repeat every step in this section for all **6** headsets.

### 1.1 Install the BOBOVR M3 Pro head strap

Replace the stock Quest 3 strap with the BOBOVR M3 Pro halo strap and seat the B100 battery on the rear cradle. Follow the manufacturer's mounting guide:

- <https://www.bobovr.com/products/bobovr-m3-pro>

The M3 Pro improves comfort for back-to-back classroom sessions and adds runtime via the swappable rear battery.

### 1.2 Install the PrismXR Carina D1 charging interface

1. Install the **magnets** on the headset and controllers.
2. Prepare the **controllers**: the magnetic supports and the special rechargeable batteries are supplied in the PrismXR box. Fit them to each controller.
3. Mount the headset interface, using the PrismXR positioning guide to place the **magnetic hook** correctly so the headset docks cleanly.
4. Set the **facial interface** to its maximum (furthest) position so the headset can be worn over glasses.

### 1.3 Apply the stickers

Each headset is identified by a number (1–6) that must match across the headset, its controllers, and its dock. Apply the matching sticker set:

- **1** main sticker on the headset
- **1** secondary sticker per controller (2 total)
- **3** stickers on the sides of the BOBOVR strap

> The sticker number maps to the headset's identity in the WebPlatform and to its assigned IP address during [headset configuration](../../software/docs/headset_configuration.md). Keep numbering consistent.

---

## 2. Cabinet preparation

Before wiring anything, check the cabinet's pre-routed cables.

1. Verify that **each drawer holds two cables** of the correct length (one pair per drawer for the two PrismXR docks it will hold).

> **Top drawer cables:** if the cables in the top drawer do not reach the back when the drawer is fully open, gently pull them to feed more cable down from the electrical column until you have the required length.

---

## 3. Electrical and internal wiring

Work from the bottom of the cabinet upward.

1. **Arm the UPS** — set the APC Back-UPS battery contact (connect the internal battery terminal).
2. **Make room** — remove the bottom headset drawer to access the base of the cabinet.
3. **Install the UPS** in the base and route its power cable out through the dedicated hole.
4. **Connect the power strip** to the UPS battery-backed outlets.
5. **Wire the charging docks** — use the dock adapters to connect the **6 USB-C dock cables** to the power strip.
6. **Distribute the docks** — install **2 PrismXR Carina D1 stations per drawer**, connecting each to the USB cables pre-routed in that drawer.
7. **Install the Mac mini:**
   - Plug the Mac mini power adapter into the power strip.
   - Connect the **USB-C hub** to the Mac mini.
   - Plug the **two HDMI cables** from the cabinet's external panel into the hub's HDMI outputs.
   - Connect the **UPS USB cable** to a USB-A port on the hub (this is the monitoring link used for graceful shutdown).
   - Set the Mac mini in its dedicated spot.
8. **Install the WiFi router** — power the TP-Link Deco BE25 from the power strip and place it in its dedicated spot next to the Mac mini.
9. **Refit the bottom drawer** once routing is clear.

> Bundle slack cable with the velcro straps and adhesive mounts from the BOM so drawers slide freely and nothing is pinched.

---

## After assembly

The box is now physically complete. Continue with software provisioning:

1. [Configure the Mac mini](../../software/docs/macmini_configuration.md) — initial setup, WebPlatform install, auto-start, system settings.
2. [Configure the WiFi router](../../software/docs/wifi_router_configuration.md) — SSID, password, firmware.
3. [Configure the headsets](../../software/docs/headset_configuration.md) — developer mode, ADB authorization, IP assignment.

---

## Maintenance notes

- Always power off the unit before any hardware maintenance.
- Keep ventilation around the Mac mini clear to avoid thermal throttling.
- Store headsets in their designated drawer slots to avoid cable damage.
