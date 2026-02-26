# Contributing to M2L2

Thank you for your interest in contributing to the SIMPLE project! Whether you're fixing a bug, improving documentation, or proposing a new hardware revision, all contributions are welcome.

---

## 📋 Table of Contents

- [Code of Conduct](#code-of-conduct)
- [How to Contribute](#how-to-contribute)
- [Reporting Issues](#reporting-issues)
- [Submitting a Pull Request](#submitting-a-pull-request)
- [Hardware Contributions](#hardware-contributions)
- [Software Contributions](#software-contributions)

---

## 🤝 Code of Conduct

Be respectful, inclusive, and constructive. We want this project to be a welcoming space for everyone.

---

## 🛠️ How to Contribute

1. **Fork** this repository
2. **Create a branch** from `main` with a descriptive name:
   ```zsh
   git checkout -b fix/bom-typo
   git checkout -b feat/add-network-script
   ```
3. **Make your changes**
4. **Commit** with a clear message (see below)
5. **Push** your branch and open a **Pull Request** against `main`

---

## 🐛 Reporting Issues

Open a [GitHub Issue](../../issues) and include:

- A clear description of the problem
- Steps to reproduce (for software issues)
- Photos or diagrams (for hardware issues)
- Your environment (macOS version, hardware revision, etc.)

---

## ✅ Submitting a Pull Request

- Keep PRs focused — one fix or feature per PR
- Link the related issue in your PR description (e.g. `Closes #42`)
- Make sure your changes are tested before submitting
- A maintainer will review your PR and may request changes before merging

### Commit Message Format

```
type: short description

Examples:
fix: correct power supply reference in BOM
feat: add network configuration script
docs: update assembly guide with photos
```

---

## 🔩 Hardware Contributions

When contributing hardware changes, please:

- Update the **BOM** if any parts are added, removed, or substituted
- Provide updated **blueprints** in an open format (`.svg`, `.dxf`, `.step`)
- Include photos if you've physically built or tested the revision
- Note any impact on the assembly process in the PR description

---

## 💻 Software Contributions

When contributing setup scripts or configuration changes, please:

- Test your changes on a **clean macOS install** before submitting
- Ensure scripts remain **idempotent** (safe to run multiple times)
- Keep scripts well-commented for clarity
- Update the [software README](./software/README.md) if you add or rename scripts

---

## 📄 License

By contributing, you agree that your contributions will be licensed under the same license as this project. See [LICENSE](./LICENSE) for details.