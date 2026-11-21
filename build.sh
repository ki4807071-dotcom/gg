#!/usr/bin/env bash
set -e
cd "$(dirname "$0")"

echo "Building bimbimbambam for $(uname -s)..."

for tool in node npm cargo; do
    if ! command -v "$tool" >/dev/null 2>&1; then
        echo "ERROR: $tool is not installed or not on PATH."
        if [ "$tool" = cargo ]; then
            echo "Install Rust from https://rustup.rs/ and restart your terminal."
        elif [ "$tool" = node ] || [ "$tool" = npm ]; then
            echo "Install the LTS version of Node.js from https://nodejs.org/"
        fi
        echo "See https://v2.tauri.app/start/prerequisites/ for Tauri system requirements."
        exit 1
    fi
done

if [ ! -f node_modules/@tauri-apps/cli/tauri.js ]; then
    echo "Installing project dependencies..."
    npm ci
fi

echo "Running Tauri production build..."
npm run tauri -- build

echo
echo "Build completed. Installers are under:"
echo "src-tauri/target/release/bundle"
