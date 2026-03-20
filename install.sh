#!/usr/bin/env bash
# install.sh — streb Linux installer
#
# Usage:
#   curl -sL https://raw.githubusercontent.com/adesso-ai/homebrew-streb/main/install.sh | bash
#   INSTALL_DIR=~/.local/bin bash install.sh
#
# Auto-updated by GitHub Actions on each release.

set -euo pipefail

# --- Release metadata (auto-updated by CI) ---
VERSION="0.9.28"
SHA256_LINUX_AMD64="ebc9496766022ac574a533ad98992969f54852705622da530ed87087ea14af86"
# ---

REPO="adesso-ai/homebrew-streb"
BINARY="streb"

# Output helpers
_info()  { printf '\033[1;32m==>\033[0m %s\n' "$1"; }
_warn()  { printf '\033[1;33mWarning:\033[0m %s\n' "$1" >&2; }
_error() { printf '\033[1;31mError:\033[0m %s\n' "$1" >&2; exit 1; }

# --- OS / arch detection ---
OS="$(uname -s)"
ARCH="$(uname -m)"

case "$OS" in
  Linux) ;;
  Darwin)
    _error "macOS detected. Use Homebrew instead: brew install adesso-ai/streb/streb"
    ;;
  *)
    _error "Unsupported OS: $OS"
    ;;
esac

case "$ARCH" in
  x86_64|amd64)
    ARTIFACT="streb_linux_amd64.tar.gz"
    SHA256="$SHA256_LINUX_AMD64"
    ;;
  *)
    _error "Unsupported architecture: $ARCH. Only x86_64 is currently supported on Linux."
    ;;
esac

DOWNLOAD_URL="https://github.com/${REPO}/releases/download/v${VERSION}/${ARTIFACT}"

# --- Dependency check ---
for cmd in curl tar sha256sum; do
  command -v "$cmd" >/dev/null 2>&1 || _error "Required tool not found: $cmd"
done

# --- Install directory ---
if [ -n "${INSTALL_DIR:-}" ]; then
  mkdir -p "$INSTALL_DIR"
elif [ -w "/usr/local/bin" ]; then
  INSTALL_DIR="/usr/local/bin"
elif command -v sudo >/dev/null 2>&1; then
  INSTALL_DIR="/usr/local/bin"
else
  INSTALL_DIR="$HOME/.local/bin"
  mkdir -p "$INSTALL_DIR"
fi

_info "Installing streb v${VERSION} to ${INSTALL_DIR}..."

# --- Download and verify ---
TMP_DIR="$(mktemp -d)"
trap 'rm -rf "$TMP_DIR"' EXIT

_info "Downloading ${ARTIFACT}..."
curl -fsSL --progress-bar "$DOWNLOAD_URL" -o "${TMP_DIR}/${ARTIFACT}"

_info "Verifying checksum..."
echo "${SHA256}  ${TMP_DIR}/${ARTIFACT}" | sha256sum --check --quiet \
  || _error "Checksum mismatch. Download may be corrupted — aborting."

tar -xzf "${TMP_DIR}/${ARTIFACT}" -C "$TMP_DIR"

# --- Install ---
if [ -w "$INSTALL_DIR" ]; then
  install -m 755 "${TMP_DIR}/${BINARY}" "${INSTALL_DIR}/${BINARY}"
else
  _info "Writing to ${INSTALL_DIR} requires sudo..."
  sudo install -m 755 "${TMP_DIR}/${BINARY}" "${INSTALL_DIR}/${BINARY}"
fi

# --- Verify ---
if "${INSTALL_DIR}/${BINARY}" --version >/dev/null 2>&1; then
  _info "Done. streb v${VERSION} installed: ${INSTALL_DIR}/${BINARY}"
else
  _warn "Binary installed but failed to run. Check: ${INSTALL_DIR}/${BINARY} --version"
fi

# Remind user if install dir is not on PATH
case ":${PATH}:" in
  *":${INSTALL_DIR}:"*) ;;
  *)
    _warn "${INSTALL_DIR} is not in your PATH. Add it to your shell profile:"
    printf '  export PATH="%s:$PATH"\n' "$INSTALL_DIR"
    ;;
esac
