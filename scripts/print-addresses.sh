#!/usr/bin/env bash
set -e

echo "🔎 Smart Wallet deployed addresses"
echo "ENTRY_POINT: ${ENTRY_POINT:-not set}"
echo "WALLET_IMPL: ${WALLET_IMPL:-not set}"
echo "FACTORY: ${FACTORY:-not set}"

if [ -z "$ENTRY_POINT" ] || [ -z "$WALLET_IMPL" ] || [ -z "$FACTORY" ]; then
  echo "⚠️ One or more required environment variables are missing."
  exit 1
fi
