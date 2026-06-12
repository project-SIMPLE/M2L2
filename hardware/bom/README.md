# Bill of Materials — M2L2 Box

Complete parts list to build one **M2L2 (Mobile Metaverse Learning Lab)** unit: a self-contained, classroom-deployable kit running the [SIMPLE project](https://github.com/project-SIMPLE) stack.

> **Pricing note:** Prices are indicative (mid-2026). Big-ticket items in USD (US retail), locally sourced items in VND. Verify with your suppliers before ordering. Meta raised Quest 3 prices in April 2026; the 128GB model is discontinued.

---

### 1. Compute & VR

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 1.1 | VR headset | Meta Quest 3 — 512GB | 6 | $600 | $3,600 | Includes 2× Touch Plus controllers each. 512GB is the only variant since April 2026. |
| 1.2 | Head strap (+ battery) | BOBOVR M3 Pro | 6 | $40 | $240 | Halo strap with swappable B100 battery — comfort + extended runtime for back-to-back classroom sessions. The Carina D1 still charges the headset with the strap mounted, but **not** the strap battery (charge B100 packs separately via USB-C). |
| 1.3 | Server | Apple Mac mini (Apple Silicon, 16GB RAM / 512GB SSD min.) | 1 | $799 | $799 | Runs WebPlatform + GAMA + headset management. Pin macOS version per software setup guide (UPS control is OS-version sensitive). |
| 1.4 | Teacher tablet | Apple iPad (current base model, WiFi) | 1 | $349 | $349 | Client for the teacher dashboard (WebPlatform UI) over the local network. Any recent iPad works. |

### 2. Power

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 2.1 | UPS | APC Back-UPS BX2200MI-MS (2200VA / 1200W) | 1 | $250 | $250 | USB-HID monitored by the M2L2 UPS library for graceful shutdown. `-MS` = universal sockets variant. |
| 2.2 | Charging dock | PrismXR Carina D1 (Quest 3) | 6 | $80 | $480 | One dock per headset, charging at 30W. Each ships with its own fast-charge adapter and cable. Also charges Touch Plus controllers via contact pads (rechargeable batteries + contact battery covers included). |
| 2.3 | Power strip | Điện Quang ECO ĐQ ESK 5BR 8ECO — 8 outlets, 5m, 2500W max, breaker | 1 | 192.000 ₫ (~$8) | ~$8 | Plugs into UPS battery outlets; 8 slots and 2500W rating cover all 6 dock adapters + Mac mini + router simultaneously. Do **not** chain a surge protector behind the UPS. |
| 2.4 | USB-C cables | UGREEN US535 (90440) — USB-C to USB-C, 240W, 2m | 6 | $13 | $78 | ADB/management link to the Mac mini and backup wired charging. Any replacement must support ≥45W (headset max draw). |

### 3. Networking

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 3.1 | WiFi router | TP-Link Deco BE25 (WiFi 7) | 1 | $95 | $95 | Dedicated SSID for headsets. No internet uplink required — fully offline LAN. Ethernet cable for the Mac mini link is included in the box. |

### 4. Peripherals & Display

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 4.1 | USB-C hub | HyperDrive Next Dual 4K HDMI 7-in-1 | 1 | $150 | $150 | Used for its dual HDMI outputs (4K60 + 4K30) and its USB-A port, which connects the UPS USB-HID monitoring link to the Mac mini. |
| 4.2 | HDMI cables | UGREEN 10107 — HDMI, 2m | 2 | $10 | $20 | Internal runs: hub HDMI outputs → enclosure panel couplers (4.3). |
| 4.3 | Keyboard + touchpad | Logitech K400 Plus Touch | 1 | $30 | $30 | Wireless all-in-one input for on-site Mac mini administration — no separate mouse or desk space needed. |

### 5. Enclosure & Mechanical

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 5.1 | Enclosure | **Custom build** — see [`blueprints/`](../blueprints/) | 1 | per blueprints | — | Materials, dimensions, and cutting plans are documented in the blueprints folder. Sized for the BX2200MI tower (~15kg) plus all components; total kit weight exceeds 25kg, plan for wheels/handles accordingly. |
| 5.2 | Cable management | Velcro straps, cable ties, adhesive mounts (assorted) | 1 | $15 | $15 | |
| 5.3 | Panel-mount plate | 3-slot wall-mount plate with 2× HDMI female (F/F) couplers | 1 | $12 | $12 | Mounted on the enclosure: exposes both HDMI outputs externally so the projector/screen plugs into the box without opening it. Third slot spare (blank or future port). |

## 6. Accessories & Consumables

| # | Item | Ref / Model | Qty | Est. unit price | Subtotal | Notes |
|---|------|------------|-----|----------------|----------|-------|
| 6.1 | Hygiene face covers | Silicone facial interface cover (Quest 3 compatible) | 6 | $15 | $90 | Wipeable — required for shared classroom use. |
| 6.2 | Cleaning kit | Microfiber cloths + lens-safe wipes | 1 | $15 | $15 | Never use alcohol wipes on lenses. |
| 6.3 | Stickers | Custom-printed SIMPLE project stickers, numbered 1–6 | 1 set | $15 | $15 | Printed per project artwork. Headset number ↔ WebPlatform device identity; label headsets, controllers, and docks consistently. |

---

## Total estimated cost

| Category | Subtotal |
|----------|----------|
| 1. Compute & VR | $4,988 |
| 2. Power | $816 |
| 3. Networking | $95 |
| 4. Peripherals & Display | $212 |
| 5. Enclosure & Mechanical | $15 + custom enclosure (see blueprints) |
| 6. Accessories & Consumables | $120 |
| **Total per M2L2 unit** | **≈ $6,246 + enclosure materials** |

---

## Substitution guidance

- **Headsets** — the SIMPLE Unity template targets Meta Horizon OS; Quest 3S (128GB, $350) is a functional drop-in that cuts ~$1,500 per box at the cost of lens/resolution quality. Pair with the Carina **D1S** dock variant and the BOBOVR **S3** strap line. Lower-cost non-Meta alternatives are under active investigation (see project roadmap).
- **Server** — any Apple Silicon Mac mini works; avoid Intel models (UPS control library uses IOKit HID paths validated on Apple Silicon).
- **Power strip** — any 8-outlet strip rated ≥2500W with a breaker is acceptable; the Điện Quang reference is a locally sourced (Vietnam) part.
- **USB-C cables** — any e-marked USB-C cable supporting ≥45W works; 240W-rated cables chosen for headroom and durability.
- **Teacher tablet** — any device with a modern browser can run the dashboard; the iPad is the validated reference client.