# bimbimbambam

A small desktop app for Messenger, with extra websites you can add and open in
separate windows on macOS, Windows, and Linux.

## Features

- Messenger in its own native window, with notifications, unread badge, and tray support.
- Add, open, and remove websites in **Settings → Websites**.
- Added websites open in isolated windows without Messenger page scripts or Tauri
  remote permissions. Only `http://` and `https://` URLs are accepted.
- Existing themes, keyboard shortcuts, and appearance settings from the upstream app.

## Build

Install Rust (stable), Node.js, and the
[Tauri prerequisites](https://v2.tauri.app/start/prerequisites/), then run:

```sh
npm install
npm run tauri dev
npm run tauri build
```

Run Rust tests with `cargo test` from `src-tauri/`. JavaScript tests in `tests/`
can be run with Node.js's test runner.

## Upstream and license

This project is derived from [fMess](https://github.com/toanbku/fmess), by
Toan Ho, and retains its MIT license and copyright notices in [LICENSE](LICENSE).
Changes in this fork include the bimbimbambam branding and support for user-added
website windows.

Messenger and Facebook are trademarks of Meta Platforms, Inc. This project is
independent and is not affiliated with or endorsed by Meta.

The updater points to this repository. Publishing signed updates requires
configuring a signing key that matches the public key in `src-tauri/tauri.conf.json`.
