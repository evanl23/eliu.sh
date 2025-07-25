#!/usr/bin/env bash
set -e

oldPWD="$PWD"

echo "[*] Downloading terminal-dash..."
sleep 2
tmpdir=$(mktemp -d)
cd "$tmpdir"

curl -L https://github.com/evanl23/terminal-dash/archive/refs/tags/v1.0.4.tar.gz | tar xz

echo "[*] Building game..."
sleep 2
cd terminal-dash-1.0.4
make

echo "[*] Starting terminal-dash..."
sleep 2
./terminal-dash

cd "$oldPWD"
rm -rf "$tmpdir"
