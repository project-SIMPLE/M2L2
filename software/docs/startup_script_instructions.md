# Launching the WebPlatform automatically on boot

This guide makes the Mac mini start the WebPlatform and open its player screen automatically every time it powers on, so the box is usable without a keyboard or manual steps. It wraps the `startup_script.command` from [`software/scripts`](../scripts/) in an Automator application and registers it as a macOS login item. Run the [installation script](./installation_instructions.md) first so the WebPlatform and its dependencies are in place.

---

## 1. Prerequisites

- The WebPlatform is installed at `~/Documents/simple.webplatform` (the [installation script](./installation_instructions.md) puts it there).
- The `startup_script.command` from the [`software/scripts`](../scripts/) folder is available to copy from.

---

## 2. Create the launcher app

1. Open **Automator** and create a new **Application**.
2. In the action list, find **Run Shell Script** (use the search bar at the top right, left of *Variables*) and double-click it to add it.
3. Set **Shell** to `/bin/sh`.
4. Copy the contents of `startup_script.command` into the **Run Shell Script** field.
5. Save the application (for example, as `Start SIMPLE` in `Applications`).

> The script exports the Homebrew/Node paths, starts the WebPlatform with `npm start`, waits a few seconds, then opens `http://localhost:8000/streamPlayerScreen`.

---

## 3. Register it as a login item

1. Click the Apple menu → **System Settings** → **General** → **Login Items**.
2. Under *Open at Login*, click the **+** at the bottom left of the list.
3. Select the Automator app you just created.

On the next boot, macOS shows a notification confirming a login item was added.

---

## 4. Grant permissions

The first time it runs, the Automator app asks for permission to **access local files** and to **discover devices on the network**. Approve both — the WebPlatform needs them to serve files and reach the headsets.

---

## 5. Verify

Reboot the Mac mini. After login, the WebPlatform should start and Safari should open the player screen automatically. If Safari opens to a blank or error page, give the server a few more seconds and reload, or confirm the WebPlatform runs manually with `npm start` from `~/Documents/simple.webplatform`.

---

## Related

- [Mac mini configuration](./macmini_configuration.md) — the broader provisioning checklist this step belongs to.
- [Installation instructions](./installation_instructions.md) — installs the WebPlatform this script launches.
