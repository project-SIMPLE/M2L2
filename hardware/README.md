# 🔧 Hardware — M2L2 Box

This folder contains all the hardware documentation required to build, replicate, or maintain the **M2L2** box — a self-contained unit housing VR headsets and a server, designed for easy deployment of the [SIMPLE project](https://github.com/project-simple) in classroom environments.

---

## 📁 Folder Structure

```
hardware/
├── blueprints/        # CAD files, schematics, and mechanical drawings
├── bom/               # Bill of Materials (BOM)
├── assembly/          # Step-by-step assembly guides and photos
└── specs/             # Technical specifications for each component
```

---

## 📦 What's in the Box

The M2L2 box is designed to be a plug-and-play classroom kit. It typically includes:

- **VR Headsets** — Pre-configured for the SIMPLE project
- **Server (Mac Mini)** — Runs the SIMPLE project software
- **Networking equipment** — Local network switch/router for headset connectivity
- **Power distribution** — PDU or power strip for all devices
- **Enclosure** — The physical box housing all components

> Refer to the [BOM](./bom/) for exact part references, quantities, and sourcing.

---

## 📐 Blueprints

The [`blueprints/`](./blueprints/) directory contains:

- Enclosure mechanical drawings (dimensions, cutouts, ventilation)
- Internal layout diagrams (component placement)
- Cable routing schematics

Files are provided in open formats (`.svg`, `.dxf`, `.step`) where possible.

---

## 🛒 Bill of Materials (BOM)

See [`bom/`](./bom/) for the full parts list including:

- Part names and descriptions
- Recommended suppliers and part numbers
- Quantities per unit
- Estimated costs

---

## 🔩 Assembly

Step-by-step assembly instructions are available in [`assembly/`](./assembly/). Follow them in order to avoid rework. Photos and diagrams are included for each major step.

---

## ⚠️ Notes

- Always power off the unit before performing any hardware maintenance.
- Ensure adequate ventilation around the Mac Mini to prevent thermal throttling.
- VR headsets should be stored in their designated slots to avoid cable damage.

---

## 🤝 Contributing

If you improve the hardware design (better cable management, new enclosure version, etc.), please open a pull request with updated blueprints and a revised BOM. See the root [CONTRIBUTING.md](../CONTRIBUTING.md) for guidelines.